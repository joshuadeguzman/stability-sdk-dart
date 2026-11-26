// Internal, not exported.
// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

import 'models/exceptions.dart';
import 'models/results.dart';

/// Sends requests to the API and turns responses into models.
///
/// Internal. Not exported from the package.
/// True on the web. Browsers hide the `seed` and `finish-reason` headers,
/// because the API doesn't expose them to scripts, so web requests ask for
/// JSON instead, which carries both in the body.
const _isWeb = bool.fromEnvironment('dart.library.js_interop');

/// The API's async ids are long hex strings.
final _generationId = RegExp(r'^[A-Za-z0-9_-]+$');

class Transport {
  Transport({
    required String apiKey,
    required this.baseUrl,
    required this.httpClient,
    this.clientId,
    this.clientUserId,
    this.clientVersion,
  }) : _apiKey = apiKey;

  // Private so it never shows up in toString, logs or debuggers by accident.
  final String _apiKey;

  final Uri baseUrl;
  final http.Client httpClient;
  final String? clientId;
  final String? clientUserId;
  final String? clientVersion;

  Map<String, String> _headers(String accept) => {
        'authorization': 'Bearer $_apiKey',
        'accept': accept,
        if (clientId != null) 'stability-client-id': clientId!,
        if (clientUserId != null) 'stability-client-user-id': clientUserId!,
        if (clientVersion != null) 'stability-client-version': clientVersion!,
      };

  // Appends to the base path, so a proxy like https://example.com/stability
  // keeps its prefix.
  Uri _uri(String path) {
    final base = baseUrl.path.endsWith('/')
        ? baseUrl.path.substring(0, baseUrl.path.length - 1)
        : baseUrl.path;
    return baseUrl.replace(path: '$base$path');
  }

  /// Posts a form and returns the image in the response body.
  Future<GeneratedImage> postForImage(
    String path, {
    required Map<String, String> fields,
    required Map<String, Uint8List> files,
  }) async {
    final response = await _post(
      path,
      fields,
      files,
      accept: _isWeb ? 'application/json' : 'image/*',
    );
    if (response.statusCode != 200) throw _error(response);
    return _image(response);
  }

  /// Posts a form for an async service and returns the generation id.
  Future<AsyncGeneration> postForAsync(
    String path, {
    required Map<String, String> fields,
    required Map<String, Uint8List> files,
  }) async {
    final response =
        await _post(path, fields, files, accept: 'application/json');
    if (response.statusCode != 200) throw _error(response);
    final json = jsonDecode(_text(response)) as Map<String, dynamic>;
    return AsyncGeneration(json['id'] as String);
  }

  /// Fetches the result of an async generation.
  Future<GenerationResult> fetchResult(String id) async {
    if (!_generationId.hasMatch(id)) {
      throw ArgumentError.value(id, 'id', 'is not a generation id');
    }
    final response = await httpClient.get(
      _uri('/v2beta/results/$id'),
      headers: _headers(_isWeb ? 'application/json' : '*/*'),
    );
    if (response.statusCode == 202) return GenerationInProgress(id);
    if (response.statusCode != 200) throw _error(response);
    return GenerationComplete(_image(response));
  }

  Future<http.Response> _post(
    String path,
    Map<String, String> fields,
    Map<String, Uint8List> files, {
    required String accept,
  }) async {
    final request = http.MultipartRequest('POST', _uri(path))
      ..headers.addAll(_headers(accept))
      ..fields.addAll(fields);
    for (final MapEntry(key: name, value: bytes) in files.entries) {
      request.files.add(
        http.MultipartFile.fromBytes(
          name,
          bytes,
          filename: '$name.${_extension(bytes)}',
        ),
      );
    }
    return http.Response.fromStream(await httpClient.send(request));
  }

  GeneratedImage _image(http.Response response) {
    final contentType = response.headers['content-type'] ?? '';

    // With `accept: application/json` the API returns base64 instead.
    if (contentType.startsWith('application/json')) {
      final json = jsonDecode(_text(response)) as Map<String, dynamic>;
      final type = RegExp(r'type=([\w/+.-]+)').firstMatch(contentType);
      return GeneratedImage(
        bytes: base64Decode(json['image'] as String),
        mimeType: type?.group(1) ?? 'image/png',
        finishReason: FinishReason.parse(json['finish_reason'] as String?),
        seed: (json['seed'] as num?)?.toInt(),
      );
    }

    return GeneratedImage(
      bytes: response.bodyBytes,
      mimeType: contentType.split(';').first.trim(),
      finishReason: FinishReason.parse(response.headers['finish-reason']),
      seed: int.tryParse(response.headers['seed'] ?? ''),
    );
  }

  StabilityException _error(http.Response response) {
    String? id;
    String? name;
    var errors = <String>[];
    final text = _text(response);
    Object? json;
    try {
      json = jsonDecode(text);
    } on FormatException {
      json = null;
    }
    // Proxies and gateways can answer with any shape, so read only what
    // matches and fall back to the raw text.
    if (json case {'errors': final List<Object?> list}) {
      errors = [for (final e in list) '$e'];
    } else if (json case {'errors': final Object single}) {
      errors = ['$single'];
    } else if (text.isNotEmpty) {
      errors = [_truncate(text)];
    }
    if (json case {'id': final Object value}) id = '$value';
    if (json case {'name': final Object value}) name = '$value';
    return StabilityException.fromResponse(
      statusCode: response.statusCode,
      id: id,
      name: name,
      errors: errors,
    );
  }

  // Decodes the body as UTF-8 without reading the content-type. The API sends
  // types like `application/json; type=image/png`, which `Response.body`
  // can't parse.
  static String _text(http.Response response) =>
      utf8.decode(response.bodyBytes, allowMalformed: true);

  static String _truncate(String text) =>
      text.length <= 200 ? text : '${text.substring(0, 200)}...';

  /// Guesses a file extension from the first bytes of an image.
  static String _extension(Uint8List bytes) {
    bool startsWith(List<int> magic) =>
        bytes.length >= magic.length &&
        [for (var i = 0; i < magic.length; i++) bytes[i] == magic[i]]
            .every((match) => match);

    if (startsWith([0x89, 0x50, 0x4E, 0x47])) return 'png';
    if (startsWith([0xFF, 0xD8, 0xFF])) return 'jpg';
    if (bytes.length >= 12 &&
        startsWith([0x52, 0x49, 0x46, 0x46]) &&
        String.fromCharCodes(bytes.sublist(8, 12)) == 'WEBP') {
      return 'webp';
    }
    return 'bin';
  }
}

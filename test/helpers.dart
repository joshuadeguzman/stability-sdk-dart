import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:stability_sdk/stability_sdk.dart';

/// The first bytes of a PNG, a JPEG and a WebP file.
final png = Uint8List.fromList([0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 1, 2]);
final jpeg = Uint8List.fromList([0xFF, 0xD8, 0xFF, 0xE0, 3, 4]);
final webp = Uint8List.fromList([
  ...'RIFF'.codeUnits, 0, 0, 0, 0, ...'WEBP'.codeUnits, 5, 6, //
]);

/// A request the fake API received, with its multipart body decoded.
class SentRequest {
  SentRequest(this.request, this.fields, this.files, this.filenames);

  final http.Request request;
  final Map<String, String> fields;
  final Map<String, Uint8List> files;
  final Map<String, String> filenames;

  String get path => request.url.path;
  Map<String, String> get headers => request.headers;
}

/// A fake Stability API. Records every request and answers with [respond].
class FakeApi {
  FakeApi([http.Response Function(SentRequest request)? respond])
      : respond = respond ?? ((_) => imageResponse());

  http.Response Function(SentRequest request) respond;
  final requests = <SentRequest>[];

  SentRequest get last => requests.last;

  StabilityClient client({Uri? baseUrl}) => StabilityClient(
        apiKey: 'sk-test',
        baseUrl: baseUrl,
        clientId: 'tests',
        clientVersion: '1.0.0',
        httpClient: MockClient((request) async {
          final sent = _decode(request);
          requests.add(sent);
          return respond(sent);
        }),
      );
}

/// A successful image response, like the API sends for `accept: image/*`.
http.Response imageResponse({
  List<int>? bytes,
  String contentType = 'image/png',
  String finishReason = 'SUCCESS',
  String seed = '42',
}) {
  return http.Response.bytes(bytes ?? [1, 2, 3], 200, headers: {
    'content-type': contentType,
    'finish-reason': finishReason,
    'seed': seed,
  });
}

/// An error response in the API's format.
http.Response errorResponse(int status, {String name = 'bad_request'}) {
  return http.Response(
    jsonEncode({
      'id': 'err-123',
      'name': name,
      'errors': ['prompt: is required'],
    }),
    status,
    headers: {'content-type': 'application/json'},
  );
}

SentRequest _decode(http.Request request) {
  final fields = <String, String>{};
  final files = <String, Uint8List>{};
  final filenames = <String, String>{};
  final contentType = request.headers['content-type'] ?? '';
  final boundary = RegExp(r'boundary=(.+)$').firstMatch(contentType)?.group(1);
  if (boundary != null) {
    // latin1 keeps every byte as one character, so binary parts survive.
    final body = latin1.decode(request.bodyBytes);
    for (final part in body.split('--$boundary')) {
      final split = part.indexOf('\r\n\r\n');
      if (split < 0) continue;
      final head = part.substring(0, split);
      var content = part.substring(split + 4);
      if (content.endsWith('\r\n')) {
        content = content.substring(0, content.length - 2);
      }
      final name = RegExp(r'name="([^"]+)"').firstMatch(head)!.group(1)!;
      final filename = RegExp(r'filename="([^"]+)"').firstMatch(head)?.group(1);
      if (filename == null) {
        fields[name] = utf8.decode(latin1.encode(content));
      } else {
        files[name] = Uint8List.fromList(latin1.encode(content));
        filenames[name] = filename;
      }
    }
  }
  return SentRequest(request, fields, files, filenames);
}

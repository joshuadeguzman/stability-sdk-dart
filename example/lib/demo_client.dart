import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

/// A fake HTTP client for demo mode, used when no API key is set.
///
/// It never touches the network. Generate requests get one of three saved
/// images that Stability AI generated earlier with similar prompts. Every
/// other request gets a 401, the same as a missing key would.
class DemoClient extends http.BaseClient {
  static const samples = {
    'dog': 'assets/samples/dog.png',
    'cat': 'assets/samples/cat.png',
    'cyberpunk': 'assets/samples/cyberpunk.png',
  };

  var _next = 0;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    await Future<void>.delayed(const Duration(milliseconds: 800));

    if (!request.url.path.contains('/generate/')) {
      return http.StreamedResponse(
        Stream.value(
          Uint8List.fromList(
            '{"name":"unauthorized","errors":["Demo mode has no API key."]}'
                .codeUnits,
          ),
        ),
        401,
        headers: {'content-type': 'application/json'},
      );
    }

    final prompt = request is http.MultipartRequest
        ? (request.fields['prompt'] ?? '').toLowerCase()
        : '';
    final asset =
        samples.entries
            .where((s) => prompt.contains(s.key))
            .map((s) => s.value)
            .firstOrNull ??
        samples.values.elementAt(_next++ % samples.length);
    final bytes = await rootBundle.load(asset);

    return http.StreamedResponse(
      Stream.value(bytes.buffer.asUint8List()),
      200,
      headers: {
        'content-type': 'image/png',
        'finish-reason': 'SUCCESS',
        'seed': '0',
      },
    );
  }
}

import 'package:http/http.dart' as http;

import 'services/control.dart';
import 'services/edit.dart';
import 'services/generate.dart';
import 'services/results.dart';
import 'services/upscale.dart';
import 'transport.dart';

/// A client for the Stability AI REST API.
///
/// ```dart
/// final stability = StabilityClient(apiKey: Platform.environment['STABILITY_API_KEY']!);
/// final image = await stability.generate.core(prompt: 'A lighthouse at sunrise');
/// File('lighthouse.png').writeAsBytesSync(image.bytes);
/// ```
///
/// Keep your API key on a server you control. Anyone who has your app can
/// read a key that ships inside it. To call the API from an app, send
/// requests through your own backend, and point [baseUrl] at it.
class StabilityClient {
  /// Creates a client.
  ///
  /// - [apiKey]: your key from https://platform.stability.ai/dashboard/api-keys.
  /// - [baseUrl]: defaults to `https://api.stability.ai`. Set it to route
  ///   requests through your own proxy.
  /// - [httpClient]: pass one to control networking, for example in tests.
  ///   If you pass one, you're responsible for closing it.
  /// - [clientId], [clientUserId], [clientVersion]: optional values sent as
  ///   `stability-client-*` headers, to help Stability AI support trace your
  ///   requests.
  factory StabilityClient({
    required String apiKey,
    Uri? baseUrl,
    http.Client? httpClient,
    String? clientId,
    String? clientUserId,
    String? clientVersion,
  }) {
    if (apiKey.trim().isEmpty) {
      throw ArgumentError.value('', 'apiKey', 'must not be empty');
    }
    final ownsClient = httpClient == null;
    final transport = Transport(
      apiKey: apiKey,
      baseUrl: baseUrl ?? Uri.parse('https://api.stability.ai'),
      httpClient: httpClient ?? http.Client(),
      clientId: clientId,
      clientUserId: clientUserId,
      clientVersion: clientVersion,
    );
    return StabilityClient._(transport, ownsClient);
  }

  StabilityClient._(this._transport, this._ownsClient)
      : generate = GenerateService(_transport),
        upscale = UpscaleService(_transport),
        edit = EditService(_transport),
        control = ControlService(_transport),
        results = ResultsService(_transport);

  final Transport _transport;
  final bool _ownsClient;

  /// Text to image and image to image: Ultra, Core and SD 3.5.
  final GenerateService generate;

  /// Fast, Conservative and Creative upscaling.
  final UpscaleService upscale;

  /// Erase, Inpaint, Outpaint, Search and Replace, Search and Recolor,
  /// Remove Background, and Replace Background and Relight.
  final EditService edit;

  /// Sketch, Structure, Style Guide and Style Transfer.
  final ControlService control;

  /// Results of async generations.
  final ResultsService results;

  /// Closes the HTTP client, if this client created it.
  void close() {
    if (_ownsClient) _transport.httpClient.close();
  }

  @override
  String toString() => 'StabilityClient(${_transport.baseUrl})';
}

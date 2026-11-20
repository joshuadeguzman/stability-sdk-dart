import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:stability_sdk/stability_sdk.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  late FakeApi api;
  late StabilityClient client;

  setUp(() {
    api = FakeApi();
    client = api.client();
  });

  group('StabilityClient', () {
    test('rejects an empty API key', () {
      expect(() => StabilityClient(apiKey: ' '), throwsArgumentError);
    });

    test('sends the key, accept and client headers', () async {
      await client.generate.core(prompt: 'a cat');

      expect(api.last.request.method, 'POST');
      expect(api.last.request.url.host, 'api.stability.ai');
      expect(api.last.headers['authorization'], 'Bearer sk-test');
      expect(api.last.headers['accept'], 'image/*');
      expect(api.last.headers['stability-client-id'], 'tests');
      expect(api.last.headers['stability-client-version'], '1.0.0');
      expect(api.last.headers.containsKey('stability-client-user-id'), isFalse);
    });

    test('never shows the API key in toString', () {
      expect(client.toString(), isNot(contains('sk-test')));
    });

    test('keeps the path of a custom base URL, for proxies', () async {
      final proxied = api.client(
        baseUrl: Uri.parse('https://example.com/stability/'),
      );

      await proxied.generate.core(prompt: 'a cat');

      expect(
        api.last.request.url.toString(),
        'https://example.com/stability/v2beta/stable-image/generate/core',
      );
    });
  });

  group('responses', () {
    test('reads the image bytes, type, seed and finish reason', () async {
      api.respond = (_) => imageResponse(
            bytes: [9, 8, 7],
            contentType: 'image/webp',
            seed: '343940597',
          );

      final image = await client.generate.core(prompt: 'a cat');

      expect(image.bytes, [9, 8, 7]);
      expect(image.mimeType, 'image/webp');
      expect(image.seed, 343940597);
      expect(image.finishReason, FinishReason.success);
      expect(image.isFiltered, isFalse);
    });

    test('flags images blurred by the content filter', () async {
      api.respond = (_) => imageResponse(finishReason: 'CONTENT_FILTERED');

      final image = await client.generate.core(prompt: 'a cat');

      expect(image.isFiltered, isTrue);
    });

    test('also reads the JSON format', () async {
      // The API's real content type for JSON images. `http` can't parse it,
      // so this also checks the SDK doesn't rely on it.
      api.respond = (_) => http.Response.bytes(
            utf8.encode(jsonEncode({
              'image': base64Encode([1, 2]),
              'seed': 7,
              'finish_reason': 'SUCCESS',
            })),
            200,
            headers: {'content-type': 'application/json; type=image/jpeg'},
          );

      final image = await client.generate.core(prompt: 'a cat');

      expect(image.bytes, [1, 2]);
      expect(image.mimeType, 'image/jpeg');
      expect(image.seed, 7);
    });
  });

  group('errors', () {
    final cases = {
      400: isA<BadRequestException>(),
      401: isA<UnauthorizedException>(),
      402: isA<InsufficientCreditsException>(),
      403: isA<ContentModerationException>(),
      404: isA<NotFoundException>(),
      413: isA<PayloadTooLargeException>(),
      422: isA<UnprocessableException>(),
      429: isA<RateLimitException>(),
      500: isA<ServerException>(),
      503: isA<ServerException>(),
    };

    for (final MapEntry(key: status, value: matcher) in cases.entries) {
      test('$status throws ${matcher.runtimeType}', () async {
        api.respond = (_) => errorResponse(status);

        await expectLater(
          client.generate.core(prompt: 'a cat'),
          throwsA(allOf(matcher, isA<StabilityException>())),
        );
      });
    }

    test('keeps the error id, name and messages', () async {
      api.respond = (_) => errorResponse(400);

      final error = await client.generate
          .core(prompt: 'a cat')
          .then<StabilityException?>((_) => null)
          .catchError((Object e) => e as StabilityException);

      expect(error?.statusCode, 400);
      expect(error?.id, 'err-123');
      expect(error?.name, 'bad_request');
      expect(error?.errors, ['prompt: is required']);
      expect(error.toString(), contains('prompt: is required'));
    });

    test('handles an error body that is not JSON', () async {
      api.respond = (_) => http.Response('Bad gateway', 502);

      await expectLater(
        client.generate.core(prompt: 'a cat'),
        throwsA(
          isA<ServerException>()
              .having((e) => e.statusCode, 'statusCode', 502)
              .having((e) => e.errors, 'errors', ['Bad gateway']),
        ),
      );
    });
  });

  group('validation', () {
    final invalid = <String, Future<Object?> Function(StabilityClient c)>{
      'an empty prompt': (c) => c.generate.core(prompt: '  '),
      'a prompt over 10,000 characters': (c) =>
          c.generate.core(prompt: 'a' * 10001),
      'a negative seed': (c) => c.generate.core(prompt: 'a', seed: -1),
      'a seed over the maximum': (c) =>
          c.generate.core(prompt: 'a', seed: 4294967295),
      'Ultra with an image but no strength': (c) =>
          c.generate.ultra(prompt: 'a', image: png),
      'Ultra with a strength but no image': (c) =>
          c.generate.ultra(prompt: 'a', strength: 0.5),
      'SD 3.5 image to image without strength': (c) =>
          c.generate.sd35(prompt: 'a', image: png),
      'SD 3.5 image to image with an aspect ratio': (c) => c.generate.sd35(
            prompt: 'a',
            image: png,
            strength: 0.5,
            aspectRatio: ImageAspectRatio.square,
          ),
      'a cfg scale over 10': (c) => c.generate.sd35(prompt: 'a', cfgScale: 11),
      'conservative creativity under 0.2': (c) =>
          c.upscale.conservative(image: png, prompt: 'a', creativity: 0.1),
      'outpaint with no direction': (c) => c.edit.outpaint(image: png),
      'outpaint over 2,000 pixels': (c) =>
          c.edit.outpaint(image: png, left: 2001),
      'erase grow mask over 20': (c) => c.edit.erase(image: png, growMask: 21),
      'remove background as JPEG': (c) =>
          c.edit.removeBackground(image: png, outputFormat: OutputFormat.jpeg),
      'relight without a background': (c) =>
          c.edit.replaceBackgroundAndRelight(subjectImage: png),
      'relight light strength without a light': (c) =>
          c.edit.replaceBackgroundAndRelight(
            subjectImage: png,
            backgroundPrompt: 'a beach',
            lightSourceStrength: 0.5,
          ),
      'style transfer change strength under 0.1': (c) => c.control
          .styleTransfer(initImage: png, styleImage: png, changeStrength: 0),
    };

    for (final MapEntry(key: name, value: call) in invalid.entries) {
      test('rejects $name without calling the API', () async {
        // Errors come back through the Future, so .catchError and
        // FutureBuilder see them too.
        await expectLater(call(client), throwsA(isA<ArgumentError>()));
        expect(api.requests, isEmpty);
      });
    }
  });

  group('more', () {
    test('sends the client user id header when set', () async {
      final withUser = StabilityClient(
        apiKey: 'sk-test',
        clientUserId: 'user-1',
        httpClient: MockClient((request) async {
          expect(request.headers['stability-client-user-id'], 'user-1');
          return imageResponse();
        }),
      );

      await withUser.generate.core(prompt: 'a cat');
    });

    test('reads JSON without a type and defaults to PNG', () async {
      api.respond = (_) => http.Response.bytes(
            utf8.encode(jsonEncode({
              'image': base64Encode([1]),
              'finish_reason': 'CONTENT_FILTERED',
            })),
            200,
            headers: {'content-type': 'application/json'},
          );

      final image = await client.generate.core(prompt: 'a cat');

      expect(image.mimeType, 'image/png');
      expect(image.seed, isNull);
      expect(image.isFiltered, isTrue);
    });

    final oddBodies = {
      'a bare string': '"Bad gateway"',
      'errors as a string': '{"errors": "nope", "id": 42}',
      'a list': '[1, 2]',
    };
    for (final MapEntry(key: name, value: body) in oddBodies.entries) {
      test('turns an error body that is $name into a StabilityException',
          () async {
        api.respond = (_) => http.Response(body, 502);

        await expectLater(
          client.generate.core(prompt: 'a cat'),
          throwsA(isA<ServerException>()
              .having((e) => e.errors, 'errors', isNotEmpty)),
        );
      });
    }

    test('close does not close a client it did not create', () async {
      final inner = _TrackingClient();
      StabilityClient(apiKey: 'k', httpClient: inner).close();
      expect(inner.closed, isFalse);
    });
  });
}

class _TrackingClient extends http.BaseClient {
  var closed = false;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) =>
      throw UnimplementedError();

  @override
  void close() => closed = true;
}

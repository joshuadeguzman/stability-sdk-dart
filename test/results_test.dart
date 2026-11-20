import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stability_sdk/stability_sdk.dart';
import 'package:test/test.dart';

import 'helpers.dart';

http.Response inProgress() => http.Response(
      jsonEncode({'id': 'gen-1', 'status': 'in-progress'}),
      202,
      headers: {'content-type': 'application/json'},
    );

void main() {
  const generation = AsyncGeneration('gen-1');

  test('fetch returns in progress for a 202', () async {
    final api = FakeApi((_) => inProgress());

    final result = await api.client().results.fetch(generation);

    expect(result, isA<GenerationInProgress>());
    expect(api.last.request.method, 'GET');
    expect(api.last.path, '/v2beta/results/gen-1');
    expect(api.last.headers['accept'], '*/*');
  });

  test('fetch returns the image for a 200', () async {
    final api = FakeApi((_) => imageResponse(bytes: [4, 2], seed: '9'));

    final result = await api.client().results.fetch(generation);

    expect(
      result,
      isA<GenerationComplete>()
          .having((r) => r.image.bytes, 'bytes', [4, 2]).having(
              (r) => r.image.seed, 'seed', 9),
    );
  });

  test('fetch throws NotFoundException for an unknown id', () async {
    final api = FakeApi((_) => errorResponse(404, name: 'not_found'));

    await expectLater(
      api.client().results.fetch(generation),
      throwsA(isA<NotFoundException>()),
    );
  });

  test('wait polls until the image is ready', () async {
    var calls = 0;
    final api = FakeApi((_) => ++calls < 3 ? inProgress() : imageResponse());

    final image = await api.client().results.wait(
          generation,
          pollInterval: const Duration(milliseconds: 1),
        );

    expect(image.bytes, [1, 2, 3]);
    expect(api.requests, hasLength(3));
  });

  test('wait throws a TimeoutException when it takes too long', () async {
    final api = FakeApi((_) => inProgress());

    await expectLater(
      api.client().results.wait(
            generation,
            pollInterval: const Duration(milliseconds: 5),
            timeout: const Duration(milliseconds: 20),
          ),
      throwsA(isA<TimeoutException>()),
    );
  });

  test('wait stops on an error', () async {
    final api = FakeApi((_) => errorResponse(500, name: 'server_error'));

    await expectLater(
      api.client().results.wait(
            generation,
            pollInterval: const Duration(milliseconds: 1),
          ),
      throwsA(isA<ServerException>()),
    );
    expect(api.requests, hasLength(1));
  });

  test('rejects an id that is not a generation id', () async {
    final api = FakeApi();

    await expectLater(
      api.client().results.fetch(const AsyncGeneration('../user')),
      throwsArgumentError,
    );
    expect(api.requests, isEmpty);
  });
}

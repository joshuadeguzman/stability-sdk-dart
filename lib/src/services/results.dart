import 'dart:async';

import '../models/results.dart';
import '../transport.dart';

/// Gets the results of async generations, such as Creative Upscale.
///
/// See https://docs.stability.ai/api-reference/results/fetch-async-generation-result.
class ResultsService {
  /// Creates a [ResultsService]. Use `StabilityClient.results` instead.
  ResultsService(this._transport);

  final Transport _transport;

  /// Checks an async generation once.
  ///
  /// Returns [GenerationInProgress] while it runs, then
  /// [GenerationComplete] with the image. Results are kept for 24 hours.
  Future<GenerationResult> fetch(AsyncGeneration generation) async {
    return _transport.fetchResult(generation.id);
  }

  /// Polls until the generation finishes, and returns the image.
  ///
  /// Checks every [pollInterval]. Throws a [TimeoutException] if it isn't
  /// done after [timeout]. Stability AI suggests polling no more than once
  /// every 10 seconds.
  Future<GeneratedImage> wait(
    AsyncGeneration generation, {
    Duration pollInterval = const Duration(seconds: 10),
    Duration timeout = const Duration(minutes: 5),
  }) async {
    final deadline = DateTime.now().add(timeout);
    while (true) {
      final result = await fetch(generation);
      switch (result) {
        case GenerationComplete(:final image):
          return image;
        case GenerationInProgress():
          if (DateTime.now().add(pollInterval).isAfter(deadline)) {
            throw TimeoutException(
              'Generation ${generation.id} is still running.',
              timeout,
            );
          }
          await Future<void>.delayed(pollInterval);
      }
    }
  }
}

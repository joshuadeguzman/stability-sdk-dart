import 'dart:typed_data';

/// Why a generation finished.
enum FinishReason {
  /// The image was generated normally.
  success,

  /// The image was generated, but it broke the content policy and was
  /// blurred.
  contentFiltered,

  /// The API sent a reason this version of the SDK doesn't know.
  unknown;

  /// Reads the value of the `finish-reason` header or JSON field.
  static FinishReason parse(String? value) => switch (value) {
        'SUCCESS' => FinishReason.success,
        'CONTENT_FILTERED' => FinishReason.contentFiltered,
        _ => FinishReason.unknown,
      };
}

/// An image returned by the API.
class GeneratedImage {
  /// Creates a [GeneratedImage].
  const GeneratedImage({
    required this.bytes,
    required this.mimeType,
    required this.finishReason,
    this.seed,
  });

  /// The encoded image, in the requested output format.
  final Uint8List bytes;

  /// The MIME type of [bytes], for example `image/png`.
  final String mimeType;

  /// Why the generation finished.
  final FinishReason finishReason;

  /// The seed used for the generation. Pass it back as `seed` to get a
  /// similar image again. Null if the API didn't return one.
  final int? seed;

  /// Whether the image was blurred by the content filter.
  bool get isFiltered => finishReason == FinishReason.contentFiltered;

  @override
  String toString() => 'GeneratedImage($mimeType, ${bytes.length} bytes, '
      'seed: $seed, finishReason: ${finishReason.name})';
}

/// A generation that runs in the background, such as Creative Upscale.
///
/// Pass it to `client.results.wait` to get the image, or poll with
/// `client.results.fetch`. Results are kept for 24 hours.
class AsyncGeneration {
  /// Creates an [AsyncGeneration].
  const AsyncGeneration(this.id);

  /// The generation id.
  final String id;

  @override
  String toString() => 'AsyncGeneration($id)';
}

/// The state of an async generation.
sealed class GenerationResult {
  const GenerationResult();
}

/// The generation is still running.
final class GenerationInProgress extends GenerationResult {
  /// Creates a [GenerationInProgress].
  const GenerationInProgress(this.id);

  /// The generation id.
  final String id;
}

/// The generation finished.
final class GenerationComplete extends GenerationResult {
  /// Creates a [GenerationComplete].
  const GenerationComplete(this.image);

  /// The finished image.
  final GeneratedImage image;
}

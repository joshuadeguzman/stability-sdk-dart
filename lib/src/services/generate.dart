import 'dart:typed_data';

import '../models/options.dart';
import '../models/results.dart';
import '../transport.dart';
import '../validation.dart';

/// Text to image, and image to image.
///
/// See https://docs.stability.ai/api-reference/generate/stable-image-core.
class GenerateService {
  /// Creates a [GenerateService]. Use `StabilityClient.generate` instead.
  GenerateService(this._transport);

  final Transport _transport;

  /// Stable Image Ultra. The highest quality, around 1 megapixel.
  ///
  /// Pass an [image] and a [strength] between 0 and 1 to start from an
  /// existing image. A [strength] of 0 keeps the image as it is, and 1
  /// ignores it.
  Future<GeneratedImage> ultra({
    required String prompt,
    String? negativePrompt,
    ImageAspectRatio? aspectRatio,
    StylePreset? stylePreset,
    Uint8List? image,
    double? strength,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkSeed(seed);
    checkRange(strength, 'strength', 0, 1);
    if (image != null && strength == null) {
      throw ArgumentError.notNull('strength');
    }
    if (image == null && strength != null) {
      throw ArgumentError('strength needs an image.');
    }
    return _transport.postForImage(
      '/v2beta/stable-image/generate/ultra',
      fields: form({
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'aspect_ratio': aspectRatio,
        'style_preset': stylePreset,
        'strength': strength,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {if (image != null) 'image': image},
    );
  }

  /// Stable Image Core. Fast, good quality, 1.5 megapixels. The best place
  /// to start.
  Future<GeneratedImage> core({
    required String prompt,
    String? negativePrompt,
    ImageAspectRatio? aspectRatio,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/generate/core',
      fields: form({
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'aspect_ratio': aspectRatio,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: const {},
    );
  }

  /// Stable Diffusion 3.5.
  ///
  /// Without an [image], this is text to image and [aspectRatio] applies.
  /// With an [image], this is image to image: [strength] is required and
  /// [aspectRatio] is not allowed. [cfgScale], between 1 and 10, controls how
  /// strictly the image follows the prompt.
  Future<GeneratedImage> sd35({
    required String prompt,
    Sd35Model? model,
    String? negativePrompt,
    ImageAspectRatio? aspectRatio,
    StylePreset? stylePreset,
    Uint8List? image,
    double? strength,
    double? cfgScale,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkSeed(seed);
    checkRange(strength, 'strength', 0, 1);
    checkRange(cfgScale, 'cfgScale', 1, 10);
    final imageToImage = image != null;
    if (imageToImage && strength == null) {
      throw ArgumentError.notNull('strength');
    }
    if (imageToImage && aspectRatio != null) {
      throw ArgumentError('aspectRatio only applies to text to image.');
    }
    if (!imageToImage && strength != null) {
      throw ArgumentError('strength needs an image.');
    }
    return _transport.postForImage(
      '/v2beta/stable-image/generate/sd3',
      fields: form({
        'prompt': prompt,
        'mode': imageToImage ? 'image-to-image' : 'text-to-image',
        'model': model?.value,
        'negative_prompt': negativePrompt,
        'aspect_ratio': aspectRatio,
        'style_preset': stylePreset,
        'strength': strength,
        'cfg_scale': cfgScale,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {if (image != null) 'image': image},
    );
  }
}

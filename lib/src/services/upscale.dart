import 'dart:typed_data';

import '../models/options.dart';
import '../models/results.dart';
import '../transport.dart';
import '../validation.dart';

/// Makes images larger and sharper.
///
/// See https://docs.stability.ai/api-reference/upscale/fast.
class UpscaleService {
  /// Creates an [UpscaleService]. Use `StabilityClient.upscale` instead.
  UpscaleService(this._transport);

  final Transport _transport;

  /// Fast upscale. 4 times larger in about a second. The input must be
  /// between 32 and 1,536 pixels on each side, and at most 1,048,576 pixels
  /// in total.
  Future<GeneratedImage> fast({
    required Uint8List image,
    OutputFormat? outputFormat,
  }) async {
    return _transport.postForImage(
      '/v2beta/stable-image/upscale/fast',
      fields: form({'output_format': outputFormat}),
      files: {'image': image},
    );
  }

  /// Conservative upscale. Up to 4 megapixels with as few changes as
  /// possible. [creativity] is between 0.2 and 0.5.
  Future<GeneratedImage> conservative({
    required Uint8List image,
    required String prompt,
    String? negativePrompt,
    double? creativity,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(creativity, 'creativity', 0.2, 0.5);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/upscale/conservative',
      fields: form({
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'creativity': creativity,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image},
    );
  }

  /// Creative upscale. Up to 4K, and best for heavily degraded images under
  /// 1 megapixel. [creativity] is between 0.1 and 0.5.
  ///
  /// This runs in the background. Pass the result to
  /// `client.results.wait` to get the image.
  Future<AsyncGeneration> creative({
    required Uint8List image,
    required String prompt,
    String? negativePrompt,
    double? creativity,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(creativity, 'creativity', 0.1, 0.5);
    checkSeed(seed);
    return _transport.postForAsync(
      '/v2beta/stable-image/upscale/creative',
      fields: form({
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'creativity': creativity,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image},
    );
  }
}

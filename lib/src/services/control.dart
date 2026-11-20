import 'dart:typed_data';

import '../models/options.dart';
import '../models/results.dart';
import '../transport.dart';
import '../validation.dart';

/// Generates images guided by another image.
///
/// See https://docs.stability.ai/api-reference/control/sketch.
class ControlService {
  /// Creates a [ControlService]. Use `StabilityClient.control` instead.
  ControlService(this._transport);

  final Transport _transport;

  /// Turns a rough sketch into a finished image. [controlStrength], between
  /// 0 and 1, sets how closely the output follows the sketch.
  Future<GeneratedImage> sketch({
    required Uint8List image,
    required String prompt,
    double? controlStrength,
    String? negativePrompt,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    return _guided(
      '/v2beta/stable-image/control/sketch',
      image: image,
      prompt: prompt,
      controlStrength: controlStrength,
      negativePrompt: negativePrompt,
      stylePreset: stylePreset,
      seed: seed,
      outputFormat: outputFormat,
    );
  }

  /// Keeps the structure of [image] and changes everything else as the
  /// [prompt] describes. [controlStrength] is between 0 and 1.
  Future<GeneratedImage> structure({
    required Uint8List image,
    required String prompt,
    double? controlStrength,
    String? negativePrompt,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    return _guided(
      '/v2beta/stable-image/control/structure',
      image: image,
      prompt: prompt,
      controlStrength: controlStrength,
      negativePrompt: negativePrompt,
      stylePreset: stylePreset,
      seed: seed,
      outputFormat: outputFormat,
    );
  }

  /// Style Guide. Generates a new image from [prompt] in the style of
  /// [image]. [fidelity], between 0 and 1, sets how closely it follows the
  /// style.
  Future<GeneratedImage> style({
    required Uint8List image,
    required String prompt,
    double? fidelity,
    String? negativePrompt,
    ImageAspectRatio? aspectRatio,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(fidelity, 'fidelity', 0, 1);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/control/style',
      fields: form({
        'prompt': prompt,
        'fidelity': fidelity,
        'negative_prompt': negativePrompt,
        'aspect_ratio': aspectRatio,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image},
    );
  }

  /// Style Transfer. Redraws [initImage] in the style of [styleImage].
  ///
  /// [styleStrength] and [compositionFidelity] are between 0 and 1.
  /// [changeStrength] is between 0.1 and 1.
  Future<GeneratedImage> styleTransfer({
    required Uint8List initImage,
    required Uint8List styleImage,
    String? prompt,
    String? negativePrompt,
    double? styleStrength,
    double? compositionFidelity,
    double? changeStrength,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkLength(prompt, 'prompt');
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(styleStrength, 'styleStrength', 0, 1);
    checkRange(compositionFidelity, 'compositionFidelity', 0, 1);
    checkRange(changeStrength, 'changeStrength', 0.1, 1);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/control/style-transfer',
      fields: form({
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'style_strength': styleStrength,
        'composition_fidelity': compositionFidelity,
        'change_strength': changeStrength,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'init_image': initImage, 'style_image': styleImage},
    );
  }

  Future<GeneratedImage> _guided(
    String path, {
    required Uint8List image,
    required String prompt,
    required double? controlStrength,
    required String? negativePrompt,
    required StylePreset? stylePreset,
    required int? seed,
    required OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(controlStrength, 'controlStrength', 0, 1);
    checkSeed(seed);
    return _transport.postForImage(
      path,
      fields: form({
        'prompt': prompt,
        'control_strength': controlStrength,
        'negative_prompt': negativePrompt,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image},
    );
  }
}

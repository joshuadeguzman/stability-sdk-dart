import 'dart:typed_data';

import '../models/options.dart';
import '../models/results.dart';
import '../transport.dart';
import '../validation.dart';

/// Changes parts of an existing image.
///
/// Masks are black and white images. White areas are changed, black areas
/// are kept, and grey sets partial strength. The API resizes a mask to match
/// the input.
///
/// See https://docs.stability.ai/api-reference/edit/erase.
class EditService {
  /// Creates an [EditService]. Use `StabilityClient.edit` instead.
  EditService(this._transport);

  final Transport _transport;

  /// Removes objects. Pass a [mask] of what to remove, or an image whose
  /// alpha channel marks it. [growMask] is between 0 and 20.
  Future<GeneratedImage> erase({
    required Uint8List image,
    Uint8List? mask,
    int? growMask,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkRange(growMask, 'growMask', 0, 20);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/edit/erase',
      fields: form({
        'grow_mask': growMask,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image, if (mask != null) 'mask': mask},
    );
  }

  /// Fills the masked area with what the [prompt] describes. [growMask] is
  /// between 0 and 100.
  Future<GeneratedImage> inpaint({
    required Uint8List image,
    required String prompt,
    Uint8List? mask,
    String? negativePrompt,
    int? growMask,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(growMask, 'growMask', 0, 100);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/edit/inpaint',
      fields: form({
        'prompt': prompt,
        'negative_prompt': negativePrompt,
        'grow_mask': growMask,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image, if (mask != null) 'mask': mask},
    );
  }

  /// Extends the image. Give at least one of [left], [right], [up] or
  /// [down], each between 0 and 2,000 pixels. [creativity] is between 0
  /// and 1.
  Future<GeneratedImage> outpaint({
    required Uint8List image,
    int left = 0,
    int right = 0,
    int up = 0,
    int down = 0,
    String? prompt,
    double? creativity,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    for (final (name, value) in [
      ('left', left),
      ('right', right),
      ('up', up),
      ('down', down),
    ]) {
      checkRange(value, name, 0, 2000);
    }
    if (left + right + up + down == 0) {
      throw ArgumentError('Give at least one of left, right, up or down.');
    }
    checkLength(prompt, 'prompt');
    checkRange(creativity, 'creativity', 0, 1);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/edit/outpaint',
      fields: form({
        if (left > 0) 'left': left,
        if (right > 0) 'right': right,
        if (up > 0) 'up': up,
        if (down > 0) 'down': down,
        'prompt': prompt,
        'creativity': creativity,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image},
    );
  }

  /// Finds what [searchPrompt] describes and replaces it with [prompt]. No
  /// mask needed. [growMask] is between 0 and 20.
  Future<GeneratedImage> searchAndReplace({
    required Uint8List image,
    required String prompt,
    required String searchPrompt,
    String? negativePrompt,
    int? growMask,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkPrompt(searchPrompt, name: 'searchPrompt');
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(growMask, 'growMask', 0, 20);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/edit/search-and-replace',
      fields: form({
        'prompt': prompt,
        'search_prompt': searchPrompt,
        'negative_prompt': negativePrompt,
        'grow_mask': growMask,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image},
    );
  }

  /// Finds what [selectPrompt] describes and recolors it as [prompt]
  /// describes. No mask needed. [growMask] is between 0 and 20.
  Future<GeneratedImage> searchAndRecolor({
    required Uint8List image,
    required String prompt,
    required String selectPrompt,
    String? negativePrompt,
    int? growMask,
    StylePreset? stylePreset,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    checkPrompt(prompt);
    checkPrompt(selectPrompt, name: 'selectPrompt');
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(growMask, 'growMask', 0, 20);
    checkSeed(seed);
    return _transport.postForImage(
      '/v2beta/stable-image/edit/search-and-recolor',
      fields: form({
        'prompt': prompt,
        'select_prompt': selectPrompt,
        'negative_prompt': negativePrompt,
        'grow_mask': growMask,
        'style_preset': stylePreset,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {'image': image},
    );
  }

  /// Removes the background and keeps the subject. Only PNG and WebP keep
  /// transparency, so JPEG is not allowed.
  Future<GeneratedImage> removeBackground({
    required Uint8List image,
    OutputFormat? outputFormat,
  }) async {
    if (outputFormat == OutputFormat.jpeg) {
      throw ArgumentError.value(
        outputFormat,
        'outputFormat',
        'must be png or webp',
      );
    }
    return _transport.postForImage(
      '/v2beta/stable-image/edit/remove-background',
      fields: form({'output_format': outputFormat}),
      files: {'image': image},
    );
  }

  /// Replaces the background behind [subjectImage] and relights the subject
  /// to match.
  ///
  /// Give a [backgroundPrompt], a [backgroundReference] image, or both.
  /// [lightSourceStrength] needs a [lightReference] or a
  /// [lightSourceDirection].
  ///
  /// This runs in the background. Pass the result to `client.results.wait`
  /// to get the image.
  Future<AsyncGeneration> replaceBackgroundAndRelight({
    required Uint8List subjectImage,
    String? backgroundPrompt,
    Uint8List? backgroundReference,
    String? foregroundPrompt,
    String? negativePrompt,
    double? preserveOriginalSubject,
    double? originalBackgroundDepth,
    bool? keepOriginalBackground,
    LightSourceDirection? lightSourceDirection,
    Uint8List? lightReference,
    double? lightSourceStrength,
    int? seed,
    OutputFormat? outputFormat,
  }) async {
    if ((backgroundPrompt == null || backgroundPrompt.trim().isEmpty) &&
        backgroundReference == null) {
      throw ArgumentError('Give a backgroundPrompt or a backgroundReference.');
    }
    if (lightSourceStrength != null &&
        lightReference == null &&
        lightSourceDirection == null) {
      throw ArgumentError(
        'lightSourceStrength needs a lightReference or a lightSourceDirection.',
      );
    }
    checkLength(backgroundPrompt, 'backgroundPrompt');
    checkLength(foregroundPrompt, 'foregroundPrompt');
    checkLength(negativePrompt, 'negativePrompt');
    checkRange(preserveOriginalSubject, 'preserveOriginalSubject', 0, 1);
    checkRange(originalBackgroundDepth, 'originalBackgroundDepth', 0, 1);
    checkRange(lightSourceStrength, 'lightSourceStrength', 0, 1);
    checkSeed(seed);
    return _transport.postForAsync(
      '/v2beta/stable-image/edit/replace-background-and-relight',
      fields: form({
        'background_prompt': backgroundPrompt,
        'foreground_prompt': foregroundPrompt,
        'negative_prompt': negativePrompt,
        'preserve_original_subject': preserveOriginalSubject,
        'original_background_depth': originalBackgroundDepth,
        'keep_original_background': keepOriginalBackground,
        'light_source_direction': lightSourceDirection,
        'light_source_strength': lightSourceStrength,
        'seed': seed,
        'output_format': outputFormat,
      }),
      files: {
        'subject_image': subjectImage,
        if (backgroundReference != null)
          'background_reference': backgroundReference,
        if (lightReference != null) 'light_reference': lightReference,
      },
    );
  }
}

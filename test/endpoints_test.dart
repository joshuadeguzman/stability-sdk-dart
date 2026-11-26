import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stability_sdk/stability_sdk.dart';
import 'package:test/test.dart';

import 'helpers.dart';

/// One call to the SDK and what the API should receive.
class Case {
  Case(this.name, this.call, this.path, this.fields, this.files);

  final String name;
  final Future<Object> Function(StabilityClient c) call;
  final String path;
  final Map<String, String> fields;
  final Map<String, String> files;
}

final imageCases = [
  Case(
    'generate.core',
    (c) => c.generate.core(
      prompt: 'a lighthouse',
      negativePrompt: 'fog',
      aspectRatio: ImageAspectRatio.ratio16x9,
      stylePreset: StylePreset.photographic,
      seed: 5,
      outputFormat: OutputFormat.webp,
    ),
    '/v2beta/stable-image/generate/core',
    {
      'prompt': 'a lighthouse',
      'negative_prompt': 'fog',
      'aspect_ratio': '16:9',
      'style_preset': 'photographic',
      'seed': '5',
      'output_format': 'webp',
    },
    {},
  ),
  Case(
    'generate.ultra with an image',
    (c) => c.generate.ultra(prompt: 'a cat', image: jpeg, strength: 0.4),
    '/v2beta/stable-image/generate/ultra',
    {'prompt': 'a cat', 'strength': '0.4'},
    {'image': 'image.jpg'},
  ),
  Case(
    'generate.sd35 text to image',
    (c) => c.generate.sd35(
      prompt: 'a cat',
      model: Sd35Model.flash,
      aspectRatio: ImageAspectRatio.ratio9x16,
      cfgScale: 4,
    ),
    '/v2beta/stable-image/generate/sd3',
    {
      'prompt': 'a cat',
      'mode': 'text-to-image',
      'model': 'sd3.5-flash',
      'aspect_ratio': '9:16',
      'cfg_scale': '4.0',
    },
    {},
  ),
  Case(
    'generate.sd35 image to image',
    (c) => c.generate.sd35(
      prompt: 'a cat',
      model: const Sd35Model('sd3.5-future'),
      image: png,
      strength: 0.95,
    ),
    '/v2beta/stable-image/generate/sd3',
    {
      'prompt': 'a cat',
      'mode': 'image-to-image',
      'model': 'sd3.5-future',
      'strength': '0.95',
    },
    {'image': 'image.png'},
  ),
  Case(
    'upscale.fast',
    (c) => c.upscale.fast(image: webp),
    '/v2beta/stable-image/upscale/fast',
    {},
    {'image': 'image.webp'},
  ),
  Case(
    'upscale.conservative',
    (c) => c.upscale.conservative(image: png, prompt: 'sharp', creativity: 0.3),
    '/v2beta/stable-image/upscale/conservative',
    {'prompt': 'sharp', 'creativity': '0.3'},
    {'image': 'image.png'},
  ),
  Case(
    'edit.erase',
    (c) => c.edit.erase(image: png, mask: png, growMask: 10),
    '/v2beta/stable-image/edit/erase',
    {'grow_mask': '10'},
    {'image': 'image.png', 'mask': 'mask.png'},
  ),
  Case(
    'edit.inpaint',
    (c) => c.edit.inpaint(image: png, prompt: 'a hat', mask: png),
    '/v2beta/stable-image/edit/inpaint',
    {'prompt': 'a hat'},
    {'image': 'image.png', 'mask': 'mask.png'},
  ),
  Case(
    'edit.outpaint only sends directions that are set',
    (c) => c.edit.outpaint(image: png, left: 200, down: 100, creativity: 0.6),
    '/v2beta/stable-image/edit/outpaint',
    {'left': '200', 'down': '100', 'creativity': '0.6'},
    {'image': 'image.png'},
  ),
  Case(
    'edit.searchAndReplace',
    (c) => c.edit.searchAndReplace(
      image: png,
      prompt: 'a golden retriever',
      searchPrompt: 'cat',
    ),
    '/v2beta/stable-image/edit/search-and-replace',
    {'prompt': 'a golden retriever', 'search_prompt': 'cat'},
    {'image': 'image.png'},
  ),
  Case(
    'edit.searchAndRecolor',
    (c) => c.edit.searchAndRecolor(
      image: png,
      prompt: 'a red jacket',
      selectPrompt: 'jacket',
    ),
    '/v2beta/stable-image/edit/search-and-recolor',
    {'prompt': 'a red jacket', 'select_prompt': 'jacket'},
    {'image': 'image.png'},
  ),
  Case(
    'edit.removeBackground',
    (c) => c.edit.removeBackground(image: png, outputFormat: OutputFormat.webp),
    '/v2beta/stable-image/edit/remove-background',
    {'output_format': 'webp'},
    {'image': 'image.png'},
  ),
  Case(
    'control.sketch',
    (c) => c.control.sketch(image: png, prompt: 'a castle', controlStrength: 1),
    '/v2beta/stable-image/control/sketch',
    {'prompt': 'a castle', 'control_strength': '1.0'},
    {'image': 'image.png'},
  ),
  Case(
    'control.structure',
    (c) => c.control.structure(image: png, prompt: 'a castle'),
    '/v2beta/stable-image/control/structure',
    {'prompt': 'a castle'},
    {'image': 'image.png'},
  ),
  Case(
    'control.style',
    (c) => c.control.style(
      image: png,
      prompt: 'a castle',
      fidelity: 0.8,
      aspectRatio: ImageAspectRatio.ratio21x9,
    ),
    '/v2beta/stable-image/control/style',
    {'prompt': 'a castle', 'fidelity': '0.8', 'aspect_ratio': '21:9'},
    {'image': 'image.png'},
  ),
  Case(
    'control.styleTransfer',
    (c) => c.control.styleTransfer(
      initImage: png,
      styleImage: jpeg,
      styleStrength: 0.7,
    ),
    '/v2beta/stable-image/control/style-transfer',
    {'style_strength': '0.7'},
    {'init_image': 'init_image.png', 'style_image': 'style_image.jpg'},
  ),
];

final asyncCases = [
  Case(
    'upscale.creative',
    (c) => c.upscale.creative(image: png, prompt: 'sharp', creativity: 0.2),
    '/v2beta/stable-image/upscale/creative',
    {'prompt': 'sharp', 'creativity': '0.2'},
    {'image': 'image.png'},
  ),
  Case(
    'edit.replaceBackgroundAndRelight',
    (c) => c.edit.replaceBackgroundAndRelight(
      subjectImage: png,
      backgroundPrompt: 'a sunny beach',
      keepOriginalBackground: false,
      lightSourceDirection: LightSourceDirection.above,
      lightSourceStrength: 0.5,
      backgroundReference: jpeg,
      lightReference: png,
    ),
    '/v2beta/stable-image/edit/replace-background-and-relight',
    {
      'background_prompt': 'a sunny beach',
      'keep_original_background': 'false',
      'light_source_direction': 'above',
      'light_source_strength': '0.5',
    },
    {
      'subject_image': 'subject_image.png',
      'background_reference': 'background_reference.jpg',
      'light_reference': 'light_reference.png',
    },
  ),
];

void main() {
  for (final c in imageCases) {
    test('${c.name} posts the right form and returns the image', () async {
      final api = FakeApi();

      final result = await c.call(api.client());

      expect(result, isA<GeneratedImage>());
      expect(api.last.path, c.path);
      expect(api.last.headers['accept'], 'image/*');
      expect(api.last.fields, c.fields);
      expect(api.last.filenames, c.files);
    });
  }

  for (final c in asyncCases) {
    test('${c.name} posts the right form and returns the id', () async {
      final api = FakeApi(
        (_) => http.Response(
          jsonEncode({'id': 'gen-1'}),
          200,
          headers: {'content-type': 'application/json'},
        ),
      );

      final result = await c.call(api.client());

      expect(result, isA<AsyncGeneration>());
      expect((result as AsyncGeneration).id, 'gen-1');
      expect(api.last.path, c.path);
      expect(api.last.headers['accept'], 'application/json');
      expect(api.last.fields, c.fields);
      expect(api.last.filenames, c.files);
    });
  }

  test('uploads the exact image bytes', () async {
    final api = FakeApi();

    await api.client().upscale.fast(image: png);

    expect(api.last.files['image'], png);
  });
}

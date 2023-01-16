import 'package:stability_sdk/src/data/config.dart';
import 'package:stability_sdk/src/data/engine.dart';

import '../protos/generation.pbgrpc.dart';

import 'package:fixnum/fixnum.dart' as $fixnum;

class StabilityRequest {
  final String prompt;
  int height = Config.height;
  int width = Config.width;
  int samples = Config.samples;
  StabilityEngineType engineType = StabilityEngineType.inpainting_v2_0;

  StabilityRequest(this.prompt);

  StabilityRequest setHeight(int height) {
    this.height = height;
    return this;
  }

  StabilityRequest setWidth(int width) {
    this.width = width;
    return this;
  }

  StabilityRequest setSampleCount(int samples) {
    this.samples = samples;
    return this;
  }

  StabilityRequest setEngineType(StabilityEngineType engineType) {
    this.engineType = engineType;
    return this;
  }

  Request toRequest() {
    final image = ImageParameters(
      height: $fixnum.Int64(height),
      width: $fixnum.Int64(width),
      samples: $fixnum.Int64(samples),
    );
    final request = Request(
      image: image,
      prompt: [
        Prompt(
          text: prompt,
        ),
      ],
      engineId: engineType.id,
    );
    return request;
  }
}

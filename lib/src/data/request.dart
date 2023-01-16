import 'package:stability_sdk/src/data/config.dart';
import 'package:stability_sdk/src/data/engine.dart';

import '../protos/generation.pb.dart' as pb;

import 'package:fixnum/fixnum.dart' as $fixnum;

class RequestBuilder {
  final String prompt;
  int height = Config.height;
  int width = Config.width;
  int samples = Config.samples;
  EngineType engineType = EngineType.inpainting_v2_0;

  RequestBuilder(this.prompt);

  RequestBuilder setHeight(int height) {
    this.height = height;
    return this;
  }

  RequestBuilder setWidth(int width) {
    this.width = width;
    return this;
  }

  RequestBuilder setSampleCount(int samples) {
    this.samples = samples;
    return this;
  }

  RequestBuilder setEngineType(EngineType engineType) {
    this.engineType = engineType;
    return this;
  }

  pb.Request build() {
    final image = pb.ImageParameters(
      height: $fixnum.Int64(height),
      width: $fixnum.Int64(width),
      samples: $fixnum.Int64(samples),
    );
    final request = pb.Request(
      image: image,
      prompt: [
        pb.Prompt(
          text: prompt,
        ),
      ],
      engineId: engineType.id,
    );
    return request;
  }
}

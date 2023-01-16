import 'package:stability_sdk/src/data/artifact.dart';
import 'package:stability_sdk/src/protos/generation.pbgrpc.dart';

class StabilityAnswer {
  final List<StabilityArtifact> artifacts;

  StabilityAnswer({
    required this.artifacts,
  });

  factory StabilityAnswer.fromAnswer(Answer answer) {
    return StabilityAnswer(
      artifacts: answer.artifacts
          .map(
            (e) => StabilityArtifact.fromAnswer(e),
          )
          .toList(),
    );
  }
}

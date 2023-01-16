import 'dart:convert';

import '../protos/generation.pbgrpc.dart';

class StabilityArtifact {
  final List<int>? binary;

  StabilityArtifact({
    this.binary,
  });

  factory StabilityArtifact.fromAnswer(Artifact artifact) {
    bool isImage = artifact.type == ArtifactType.ARTIFACT_IMAGE;

    return StabilityArtifact(
      binary: isImage ? artifact.binary : null,
    );
  }

  String? getImage() {
    if (binary != null) return base64Encode(binary!);
    return null;
  }
}

import 'dart:convert';

import '../protos/generation.pb.dart' as pb;

class Artifact {
  final int? id;
  final String? mime;
  final String? magic;
  final List<int>? binary;
  final String? text;
  final int? seed;
  final String? uuid;
  final int? size;

  Artifact({
    this.id,
    this.mime,
    this.magic,
    this.binary,
    this.text,
    this.seed,
    this.uuid,
    this.size,
  });

  factory Artifact.toDomain(pb.Artifact artifact) {
    bool isImage = artifact.type == pb.ArtifactType.ARTIFACT_IMAGE;

    return Artifact(
      id: artifact.id.toInt(),
      mime: artifact.mime,
      magic: artifact.magic,
      binary: isImage ? artifact.binary : null,
      text: isImage ? null : artifact.text,
      seed: artifact.seed.toInt(),
      uuid: artifact.uuid,
      size: artifact.size.toInt(),
    );
  }

  String? getImage() {
    if (binary != null) return base64Encode(binary!);
    return null;
  }
}

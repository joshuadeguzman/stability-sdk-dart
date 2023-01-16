import 'package:stability_sdk/src/data/artifact.dart';
import 'package:stability_sdk/src/protos/generation.pb.dart' as pb;

class Answer {
  final String? answerId;
  final String? requestId;
  final int? received;
  final int? created;
  final List<Artifact>? artifacts;
  final AnswerMeta? answerMeta;

  Answer({
    this.answerId,
    this.requestId,
    this.received,
    this.created,
    this.artifacts,
    this.answerMeta,
  });

  factory Answer.toDomain(pb.Answer answer) {
    return Answer(
      answerId: answer.answerId,
      requestId: answer.requestId,
      received: answer.received.toInt(),
      created: answer.created.toInt(),
      artifacts: answer.artifacts
          .map(
            (e) => Artifact.toDomain(e),
          )
          .toList(),
      answerMeta: AnswerMeta.toDomain(answer.meta),
    );
  }
}

class AnswerMeta {
  final String? gpuId;
  final String? cpuId;
  final String? nodeId;
  final String? engineId;

  AnswerMeta({
    this.gpuId,
    this.cpuId,
    this.nodeId,
    this.engineId,
  });

  factory AnswerMeta.toDomain(pb.AnswerMeta meta) {
    return AnswerMeta(
      gpuId: meta.gpuId,
      cpuId: meta.cpuId,
      nodeId: meta.nodeId,
      engineId: meta.engineId,
    );
  }
}

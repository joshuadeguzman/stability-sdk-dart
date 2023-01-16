import 'dart:async';
import 'package:grpc/grpc.dart';
import '../data/answer.dart';
import '../data/config.dart';
import '../protos/generation.pbgrpc.dart' as pb hide Answer;

class StabilityApiClient {
  late final String _apiKey;
  late final ClientChannel _channel;

  StabilityApiClient._();

  factory StabilityApiClient.init(String apiKey) {
    final client = StabilityApiClient._();
    client._apiKey = apiKey;
    client._channel = ClientChannel(
      Config.host,
    );

    return client;
  }

  late pb.GenerationServiceClient generation = pb.GenerationServiceClient(
    _channel,
    options: CallOptions(
      metadata: {'Authorization': "Bearer $_apiKey"},
    ),
  );

  Stream<Answer> generate(pb.Request request) {
    final response = generation.generate(request);
    return response.map((event) => Answer.toDomain(event)).asBroadcastStream();
  }
}

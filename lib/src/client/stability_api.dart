import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:stability_sdk/src/data/answer.dart';
import 'package:stability_sdk/src/data/request.dart';
import '../data/config.dart';
import '../protos/generation.pbgrpc.dart';

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

  late GenerationServiceClient generation = GenerationServiceClient(
    _channel,
    options: CallOptions(
      metadata: {'Authorization': "Bearer $_apiKey"},
    ),
  );

  Stream<StabilityAnswer?> generateAsync(StabilityRequest request) {
    final response = generation.generate(request.toRequest());

    return response
        .map((a) => StabilityAnswer.fromAnswer(a))
        .asBroadcastStream();
  }
}

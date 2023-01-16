///
//  Generated code. Do not modify.
//  source: generation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'generation.pb.dart' as $2;
export 'generation.pb.dart';

class GenerationServiceClient extends $grpc.Client {
  static final _$generate = $grpc.ClientMethod<$2.Request, $2.Answer>(
      '/gooseai.GenerationService/Generate',
      ($2.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Answer.fromBuffer(value));
  static final _$chainGenerate = $grpc.ClientMethod<$2.ChainRequest, $2.Answer>(
      '/gooseai.GenerationService/ChainGenerate',
      ($2.ChainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Answer.fromBuffer(value));

  GenerationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$2.Answer> generate($2.Request request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$generate, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.Answer> chainGenerate($2.ChainRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$chainGenerate, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class GenerationServiceBase extends $grpc.Service {
  $core.String get $name => 'gooseai.GenerationService';

  GenerationServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Request, $2.Answer>(
        'Generate',
        generate_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.Request.fromBuffer(value),
        ($2.Answer value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ChainRequest, $2.Answer>(
        'ChainGenerate',
        chainGenerate_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ChainRequest.fromBuffer(value),
        ($2.Answer value) => value.writeToBuffer()));
  }

  $async.Stream<$2.Answer> generate_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Request> request) async* {
    yield* generate(call, await request);
  }

  $async.Stream<$2.Answer> chainGenerate_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ChainRequest> request) async* {
    yield* chainGenerate(call, await request);
  }

  $async.Stream<$2.Answer> generate($grpc.ServiceCall call, $2.Request request);
  $async.Stream<$2.Answer> chainGenerate(
      $grpc.ServiceCall call, $2.ChainRequest request);
}

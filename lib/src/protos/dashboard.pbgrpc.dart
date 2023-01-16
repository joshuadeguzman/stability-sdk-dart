///
//  Generated code. Do not modify.
//  source: dashboard.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'dashboard.pb.dart' as $0;
export 'dashboard.pb.dart';

class DashboardServiceClient extends $grpc.Client {
  static final _$getMe = $grpc.ClientMethod<$0.EmptyRequest, $0.User>(
      '/gooseai.DashboardService/GetMe',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getOrganization =
      $grpc.ClientMethod<$0.GetOrganizationRequest, $0.Organization>(
          '/gooseai.DashboardService/GetOrganization',
          ($0.GetOrganizationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Organization.fromBuffer(value));
  static final _$getMetrics =
      $grpc.ClientMethod<$0.GetMetricsRequest, $0.Metrics>(
          '/gooseai.DashboardService/GetMetrics',
          ($0.GetMetricsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Metrics.fromBuffer(value));
  static final _$createAPIKey = $grpc.ClientMethod<$0.APIKeyRequest, $0.APIKey>(
      '/gooseai.DashboardService/CreateAPIKey',
      ($0.APIKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.APIKey.fromBuffer(value));
  static final _$deleteAPIKey =
      $grpc.ClientMethod<$0.APIKeyFindRequest, $0.APIKey>(
          '/gooseai.DashboardService/DeleteAPIKey',
          ($0.APIKeyFindRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.APIKey.fromBuffer(value));
  static final _$updateDefaultOrganization =
      $grpc.ClientMethod<$0.UpdateDefaultOrganizationRequest, $0.User>(
          '/gooseai.DashboardService/UpdateDefaultOrganization',
          ($0.UpdateDefaultOrganizationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getClientSettings =
      $grpc.ClientMethod<$0.EmptyRequest, $0.ClientSettings>(
          '/gooseai.DashboardService/GetClientSettings',
          ($0.EmptyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ClientSettings.fromBuffer(value));
  static final _$setClientSettings =
      $grpc.ClientMethod<$0.ClientSettings, $0.ClientSettings>(
          '/gooseai.DashboardService/SetClientSettings',
          ($0.ClientSettings value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ClientSettings.fromBuffer(value));
  static final _$updateUserInfo =
      $grpc.ClientMethod<$0.UpdateUserInfoRequest, $0.User>(
          '/gooseai.DashboardService/UpdateUserInfo',
          ($0.UpdateUserInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$createPasswordChangeTicket =
      $grpc.ClientMethod<$0.EmptyRequest, $0.UserPasswordChangeTicket>(
          '/gooseai.DashboardService/CreatePasswordChangeTicket',
          ($0.EmptyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserPasswordChangeTicket.fromBuffer(value));
  static final _$deleteAccount = $grpc.ClientMethod<$0.EmptyRequest, $0.User>(
      '/gooseai.DashboardService/DeleteAccount',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$createCharge =
      $grpc.ClientMethod<$0.CreateChargeRequest, $0.Charge>(
          '/gooseai.DashboardService/CreateCharge',
          ($0.CreateChargeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Charge.fromBuffer(value));
  static final _$getCharges =
      $grpc.ClientMethod<$0.GetChargesRequest, $0.Charges>(
          '/gooseai.DashboardService/GetCharges',
          ($0.GetChargesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Charges.fromBuffer(value));
  static final _$createAutoChargeIntent =
      $grpc.ClientMethod<$0.CreateAutoChargeIntentRequest, $0.AutoChargeIntent>(
          '/gooseai.DashboardService/CreateAutoChargeIntent',
          ($0.CreateAutoChargeIntentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AutoChargeIntent.fromBuffer(value));
  static final _$updateAutoChargeIntent =
      $grpc.ClientMethod<$0.CreateAutoChargeIntentRequest, $0.AutoChargeIntent>(
          '/gooseai.DashboardService/UpdateAutoChargeIntent',
          ($0.CreateAutoChargeIntentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AutoChargeIntent.fromBuffer(value));
  static final _$getAutoChargeIntent =
      $grpc.ClientMethod<$0.GetAutoChargeRequest, $0.AutoChargeIntent>(
          '/gooseai.DashboardService/GetAutoChargeIntent',
          ($0.GetAutoChargeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AutoChargeIntent.fromBuffer(value));

  DashboardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> getMe($0.EmptyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMe, request, options: options);
  }

  $grpc.ResponseFuture<$0.Organization> getOrganization(
      $0.GetOrganizationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$0.Metrics> getMetrics($0.GetMetricsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMetrics, request, options: options);
  }

  $grpc.ResponseFuture<$0.APIKey> createAPIKey($0.APIKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAPIKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.APIKey> deleteAPIKey($0.APIKeyFindRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAPIKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> updateDefaultOrganization(
      $0.UpdateDefaultOrganizationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDefaultOrganization, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ClientSettings> getClientSettings(
      $0.EmptyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getClientSettings, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClientSettings> setClientSettings(
      $0.ClientSettings request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setClientSettings, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> updateUserInfo($0.UpdateUserInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserPasswordChangeTicket> createPasswordChangeTicket(
      $0.EmptyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPasswordChangeTicket, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.User> deleteAccount($0.EmptyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.Charge> createCharge($0.CreateChargeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCharge, request, options: options);
  }

  $grpc.ResponseFuture<$0.Charges> getCharges($0.GetChargesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCharges, request, options: options);
  }

  $grpc.ResponseFuture<$0.AutoChargeIntent> createAutoChargeIntent(
      $0.CreateAutoChargeIntentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAutoChargeIntent, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AutoChargeIntent> updateAutoChargeIntent(
      $0.CreateAutoChargeIntentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAutoChargeIntent, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AutoChargeIntent> getAutoChargeIntent(
      $0.GetAutoChargeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAutoChargeIntent, request, options: options);
  }
}

abstract class DashboardServiceBase extends $grpc.Service {
  $core.String get $name => 'gooseai.DashboardService';

  DashboardServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.User>(
        'GetMe',
        getMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOrganizationRequest, $0.Organization>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetOrganizationRequest.fromBuffer(value),
        ($0.Organization value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMetricsRequest, $0.Metrics>(
        'GetMetrics',
        getMetrics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMetricsRequest.fromBuffer(value),
        ($0.Metrics value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.APIKeyRequest, $0.APIKey>(
        'CreateAPIKey',
        createAPIKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.APIKeyRequest.fromBuffer(value),
        ($0.APIKey value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.APIKeyFindRequest, $0.APIKey>(
        'DeleteAPIKey',
        deleteAPIKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.APIKeyFindRequest.fromBuffer(value),
        ($0.APIKey value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateDefaultOrganizationRequest, $0.User>(
            'UpdateDefaultOrganization',
            updateDefaultOrganization_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateDefaultOrganizationRequest.fromBuffer(value),
            ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.ClientSettings>(
        'GetClientSettings',
        getClientSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.ClientSettings value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClientSettings, $0.ClientSettings>(
        'SetClientSettings',
        setClientSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ClientSettings.fromBuffer(value),
        ($0.ClientSettings value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserInfoRequest, $0.User>(
        'UpdateUserInfo',
        updateUserInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateUserInfoRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EmptyRequest, $0.UserPasswordChangeTicket>(
            'CreatePasswordChangeTicket',
            createPasswordChangeTicket_Pre,
            false,
            false,
            ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
            ($0.UserPasswordChangeTicket value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.User>(
        'DeleteAccount',
        deleteAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateChargeRequest, $0.Charge>(
        'CreateCharge',
        createCharge_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateChargeRequest.fromBuffer(value),
        ($0.Charge value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetChargesRequest, $0.Charges>(
        'GetCharges',
        getCharges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetChargesRequest.fromBuffer(value),
        ($0.Charges value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateAutoChargeIntentRequest,
            $0.AutoChargeIntent>(
        'CreateAutoChargeIntent',
        createAutoChargeIntent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateAutoChargeIntentRequest.fromBuffer(value),
        ($0.AutoChargeIntent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateAutoChargeIntentRequest,
            $0.AutoChargeIntent>(
        'UpdateAutoChargeIntent',
        updateAutoChargeIntent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateAutoChargeIntentRequest.fromBuffer(value),
        ($0.AutoChargeIntent value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetAutoChargeRequest, $0.AutoChargeIntent>(
            'GetAutoChargeIntent',
            getAutoChargeIntent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAutoChargeRequest.fromBuffer(value),
            ($0.AutoChargeIntent value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> getMe_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return getMe(call, await request);
  }

  $async.Future<$0.Organization> getOrganization_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$0.Metrics> getMetrics_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetMetricsRequest> request) async {
    return getMetrics(call, await request);
  }

  $async.Future<$0.APIKey> createAPIKey_Pre(
      $grpc.ServiceCall call, $async.Future<$0.APIKeyRequest> request) async {
    return createAPIKey(call, await request);
  }

  $async.Future<$0.APIKey> deleteAPIKey_Pre($grpc.ServiceCall call,
      $async.Future<$0.APIKeyFindRequest> request) async {
    return deleteAPIKey(call, await request);
  }

  $async.Future<$0.User> updateDefaultOrganization_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateDefaultOrganizationRequest> request) async {
    return updateDefaultOrganization(call, await request);
  }

  $async.Future<$0.ClientSettings> getClientSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return getClientSettings(call, await request);
  }

  $async.Future<$0.ClientSettings> setClientSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ClientSettings> request) async {
    return setClientSettings(call, await request);
  }

  $async.Future<$0.User> updateUserInfo_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateUserInfoRequest> request) async {
    return updateUserInfo(call, await request);
  }

  $async.Future<$0.UserPasswordChangeTicket> createPasswordChangeTicket_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return createPasswordChangeTicket(call, await request);
  }

  $async.Future<$0.User> deleteAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return deleteAccount(call, await request);
  }

  $async.Future<$0.Charge> createCharge_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateChargeRequest> request) async {
    return createCharge(call, await request);
  }

  $async.Future<$0.Charges> getCharges_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetChargesRequest> request) async {
    return getCharges(call, await request);
  }

  $async.Future<$0.AutoChargeIntent> createAutoChargeIntent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateAutoChargeIntentRequest> request) async {
    return createAutoChargeIntent(call, await request);
  }

  $async.Future<$0.AutoChargeIntent> updateAutoChargeIntent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateAutoChargeIntentRequest> request) async {
    return updateAutoChargeIntent(call, await request);
  }

  $async.Future<$0.AutoChargeIntent> getAutoChargeIntent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAutoChargeRequest> request) async {
    return getAutoChargeIntent(call, await request);
  }

  $async.Future<$0.User> getMe($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.Organization> getOrganization(
      $grpc.ServiceCall call, $0.GetOrganizationRequest request);
  $async.Future<$0.Metrics> getMetrics(
      $grpc.ServiceCall call, $0.GetMetricsRequest request);
  $async.Future<$0.APIKey> createAPIKey(
      $grpc.ServiceCall call, $0.APIKeyRequest request);
  $async.Future<$0.APIKey> deleteAPIKey(
      $grpc.ServiceCall call, $0.APIKeyFindRequest request);
  $async.Future<$0.User> updateDefaultOrganization(
      $grpc.ServiceCall call, $0.UpdateDefaultOrganizationRequest request);
  $async.Future<$0.ClientSettings> getClientSettings(
      $grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.ClientSettings> setClientSettings(
      $grpc.ServiceCall call, $0.ClientSettings request);
  $async.Future<$0.User> updateUserInfo(
      $grpc.ServiceCall call, $0.UpdateUserInfoRequest request);
  $async.Future<$0.UserPasswordChangeTicket> createPasswordChangeTicket(
      $grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.User> deleteAccount(
      $grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.Charge> createCharge(
      $grpc.ServiceCall call, $0.CreateChargeRequest request);
  $async.Future<$0.Charges> getCharges(
      $grpc.ServiceCall call, $0.GetChargesRequest request);
  $async.Future<$0.AutoChargeIntent> createAutoChargeIntent(
      $grpc.ServiceCall call, $0.CreateAutoChargeIntentRequest request);
  $async.Future<$0.AutoChargeIntent> updateAutoChargeIntent(
      $grpc.ServiceCall call, $0.CreateAutoChargeIntentRequest request);
  $async.Future<$0.AutoChargeIntent> getAutoChargeIntent(
      $grpc.ServiceCall call, $0.GetAutoChargeRequest request);
}

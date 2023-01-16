///
//  Generated code. Do not modify.
//  source: dashboard.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use organizationRoleDescriptor instead')
const OrganizationRole$json = const {
  '1': 'OrganizationRole',
  '2': const [
    const {'1': 'MEMBER', '2': 0},
    const {'1': 'ACCOUNTANT', '2': 1},
    const {'1': 'OWNER', '2': 2},
  ],
};

/// Descriptor for `OrganizationRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List organizationRoleDescriptor = $convert.base64Decode('ChBPcmdhbml6YXRpb25Sb2xlEgoKBk1FTUJFUhAAEg4KCkFDQ09VTlRBTlQQARIJCgVPV05FUhAC');
@$core.Deprecated('Use organizationMemberDescriptor instead')
const OrganizationMember$json = const {
  '1': 'OrganizationMember',
  '2': const [
    const {'1': 'organization', '3': 1, '4': 1, '5': 11, '6': '.gooseai.Organization', '10': 'organization'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.gooseai.User', '9': 0, '10': 'user', '17': true},
    const {'1': 'role', '3': 3, '4': 1, '5': 14, '6': '.gooseai.OrganizationRole', '10': 'role'},
    const {'1': 'is_default', '3': 4, '4': 1, '5': 8, '10': 'isDefault'},
  ],
  '8': const [
    const {'1': '_user'},
  ],
};

/// Descriptor for `OrganizationMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationMemberDescriptor = $convert.base64Decode('ChJPcmdhbml6YXRpb25NZW1iZXISOQoMb3JnYW5pemF0aW9uGAEgASgLMhUuZ29vc2VhaS5Pcmdhbml6YXRpb25SDG9yZ2FuaXphdGlvbhImCgR1c2VyGAIgASgLMg0uZ29vc2VhaS5Vc2VySABSBHVzZXKIAQESLQoEcm9sZRgDIAEoDjIZLmdvb3NlYWkuT3JnYW5pemF0aW9uUm9sZVIEcm9sZRIdCgppc19kZWZhdWx0GAQgASgIUglpc0RlZmF1bHRCBwoFX3VzZXI=');
@$core.Deprecated('Use organizationGrantDescriptor instead')
const OrganizationGrant$json = const {
  '1': 'OrganizationGrant',
  '2': const [
    const {'1': 'amount_granted', '3': 1, '4': 1, '5': 1, '10': 'amountGranted'},
    const {'1': 'amount_used', '3': 2, '4': 1, '5': 1, '10': 'amountUsed'},
    const {'1': 'expires_at', '3': 3, '4': 1, '5': 4, '10': 'expiresAt'},
    const {'1': 'granted_at', '3': 4, '4': 1, '5': 4, '10': 'grantedAt'},
  ],
};

/// Descriptor for `OrganizationGrant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationGrantDescriptor = $convert.base64Decode('ChFPcmdhbml6YXRpb25HcmFudBIlCg5hbW91bnRfZ3JhbnRlZBgBIAEoAVINYW1vdW50R3JhbnRlZBIfCgthbW91bnRfdXNlZBgCIAEoAVIKYW1vdW50VXNlZBIdCgpleHBpcmVzX2F0GAMgASgEUglleHBpcmVzQXQSHQoKZ3JhbnRlZF9hdBgEIAEoBFIJZ3JhbnRlZEF0');
@$core.Deprecated('Use organizationPaymentInfoDescriptor instead')
const OrganizationPaymentInfo$json = const {
  '1': 'OrganizationPaymentInfo',
  '2': const [
    const {'1': 'balance', '3': 1, '4': 1, '5': 1, '10': 'balance'},
    const {'1': 'grants', '3': 2, '4': 3, '5': 11, '6': '.gooseai.OrganizationGrant', '10': 'grants'},
  ],
};

/// Descriptor for `OrganizationPaymentInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationPaymentInfoDescriptor = $convert.base64Decode('ChdPcmdhbml6YXRpb25QYXltZW50SW5mbxIYCgdiYWxhbmNlGAEgASgBUgdiYWxhbmNlEjIKBmdyYW50cxgCIAMoCzIaLmdvb3NlYWkuT3JnYW5pemF0aW9uR3JhbnRSBmdyYW50cw==');
@$core.Deprecated('Use organizationAutoChargeDescriptor instead')
const OrganizationAutoCharge$json = const {
  '1': 'OrganizationAutoCharge',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 4, '10': 'createdAt'},
  ],
};

/// Descriptor for `OrganizationAutoCharge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationAutoChargeDescriptor = $convert.base64Decode('ChZPcmdhbml6YXRpb25BdXRvQ2hhcmdlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQSDgoCaWQYAiABKAlSAmlkEh0KCmNyZWF0ZWRfYXQYAyABKARSCWNyZWF0ZWRBdA==');
@$core.Deprecated('Use organizationDescriptor instead')
const Organization$json = const {
  '1': 'Organization',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'members', '3': 4, '4': 3, '5': 11, '6': '.gooseai.OrganizationMember', '10': 'members'},
    const {'1': 'payment_info', '3': 5, '4': 1, '5': 11, '6': '.gooseai.OrganizationPaymentInfo', '9': 0, '10': 'paymentInfo', '17': true},
    const {'1': 'stripe_customer_id', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'stripeCustomerId', '17': true},
    const {'1': 'auto_charge', '3': 7, '4': 1, '5': 11, '6': '.gooseai.OrganizationAutoCharge', '9': 2, '10': 'autoCharge', '17': true},
  ],
  '8': const [
    const {'1': '_payment_info'},
    const {'1': '_stripe_customer_id'},
    const {'1': '_auto_charge'},
  ],
};

/// Descriptor for `Organization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationDescriptor = $convert.base64Decode('CgxPcmdhbml6YXRpb24SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEjUKB21lbWJlcnMYBCADKAsyGy5nb29zZWFpLk9yZ2FuaXphdGlvbk1lbWJlclIHbWVtYmVycxJICgxwYXltZW50X2luZm8YBSABKAsyIC5nb29zZWFpLk9yZ2FuaXphdGlvblBheW1lbnRJbmZvSABSC3BheW1lbnRJbmZviAEBEjEKEnN0cmlwZV9jdXN0b21lcl9pZBgGIAEoCUgBUhBzdHJpcGVDdXN0b21lcklkiAEBEkUKC2F1dG9fY2hhcmdlGAcgASgLMh8uZ29vc2VhaS5Pcmdhbml6YXRpb25BdXRvQ2hhcmdlSAJSCmF1dG9DaGFyZ2WIAQFCDwoNX3BheW1lbnRfaW5mb0IVChNfc3RyaXBlX2N1c3RvbWVyX2lkQg4KDF9hdXRvX2NoYXJnZQ==');
@$core.Deprecated('Use aPIKeyDescriptor instead')
const APIKey$json = const {
  '1': 'APIKey',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'is_secret', '3': 2, '4': 1, '5': 8, '10': 'isSecret'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 4, '10': 'createdAt'},
  ],
};

/// Descriptor for `APIKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIKeyDescriptor = $convert.base64Decode('CgZBUElLZXkSEAoDa2V5GAEgASgJUgNrZXkSGwoJaXNfc2VjcmV0GAIgASgIUghpc1NlY3JldBIdCgpjcmVhdGVkX2F0GAMgASgEUgljcmVhdGVkQXQ=');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'auth_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'authId', '17': true},
    const {'1': 'profile_picture', '3': 3, '4': 1, '5': 9, '10': 'profilePicture'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'organizations', '3': 5, '4': 3, '5': 11, '6': '.gooseai.OrganizationMember', '10': 'organizations'},
    const {'1': 'api_keys', '3': 7, '4': 3, '5': 11, '6': '.gooseai.APIKey', '10': 'apiKeys'},
    const {'1': 'created_at', '3': 8, '4': 1, '5': 4, '10': 'createdAt'},
    const {'1': 'email_verified', '3': 9, '4': 1, '5': 8, '9': 1, '10': 'emailVerified', '17': true},
  ],
  '8': const [
    const {'1': '_auth_id'},
    const {'1': '_email_verified'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIcCgdhdXRoX2lkGAIgASgJSABSBmF1dGhJZIgBARInCg9wcm9maWxlX3BpY3R1cmUYAyABKAlSDnByb2ZpbGVQaWN0dXJlEhQKBWVtYWlsGAQgASgJUgVlbWFpbBJBCg1vcmdhbml6YXRpb25zGAUgAygLMhsuZ29vc2VhaS5Pcmdhbml6YXRpb25NZW1iZXJSDW9yZ2FuaXphdGlvbnMSKgoIYXBpX2tleXMYByADKAsyDy5nb29zZWFpLkFQSUtleVIHYXBpS2V5cxIdCgpjcmVhdGVkX2F0GAggASgEUgljcmVhdGVkQXQSKgoOZW1haWxfdmVyaWZpZWQYCSABKAhIAVINZW1haWxWZXJpZmllZIgBAUIKCghfYXV0aF9pZEIRCg9fZW1haWxfdmVyaWZpZWQ=');
@$core.Deprecated('Use costDataDescriptor instead')
const CostData$json = const {
  '1': 'CostData',
  '2': const [
    const {'1': 'amount_tokens', '3': 1, '4': 1, '5': 13, '10': 'amountTokens'},
    const {'1': 'amount_credits', '3': 2, '4': 1, '5': 1, '10': 'amountCredits'},
  ],
};

/// Descriptor for `CostData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List costDataDescriptor = $convert.base64Decode('CghDb3N0RGF0YRIjCg1hbW91bnRfdG9rZW5zGAEgASgNUgxhbW91bnRUb2tlbnMSJQoOYW1vdW50X2NyZWRpdHMYAiABKAFSDWFtb3VudENyZWRpdHM=');
@$core.Deprecated('Use usageMetricDescriptor instead')
const UsageMetric$json = const {
  '1': 'UsageMetric',
  '2': const [
    const {'1': 'operation', '3': 1, '4': 1, '5': 9, '10': 'operation'},
    const {'1': 'engine', '3': 2, '4': 1, '5': 9, '10': 'engine'},
    const {'1': 'input_cost', '3': 3, '4': 1, '5': 11, '6': '.gooseai.CostData', '10': 'inputCost'},
    const {'1': 'output_cost', '3': 4, '4': 1, '5': 11, '6': '.gooseai.CostData', '10': 'outputCost'},
    const {'1': 'user', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'user', '17': true},
    const {'1': 'aggregation_timestamp', '3': 6, '4': 1, '5': 4, '10': 'aggregationTimestamp'},
  ],
  '8': const [
    const {'1': '_user'},
  ],
};

/// Descriptor for `UsageMetric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usageMetricDescriptor = $convert.base64Decode('CgtVc2FnZU1ldHJpYxIcCglvcGVyYXRpb24YASABKAlSCW9wZXJhdGlvbhIWCgZlbmdpbmUYAiABKAlSBmVuZ2luZRIwCgppbnB1dF9jb3N0GAMgASgLMhEuZ29vc2VhaS5Db3N0RGF0YVIJaW5wdXRDb3N0EjIKC291dHB1dF9jb3N0GAQgASgLMhEuZ29vc2VhaS5Db3N0RGF0YVIKb3V0cHV0Q29zdBIXCgR1c2VyGAUgASgJSABSBHVzZXKIAQESMwoVYWdncmVnYXRpb25fdGltZXN0YW1wGAYgASgEUhRhZ2dyZWdhdGlvblRpbWVzdGFtcEIHCgVfdXNlcg==');
@$core.Deprecated('Use costTotalDescriptor instead')
const CostTotal$json = const {
  '1': 'CostTotal',
  '2': const [
    const {'1': 'amount_tokens', '3': 1, '4': 1, '5': 13, '10': 'amountTokens'},
    const {'1': 'amount_credits', '3': 2, '4': 1, '5': 1, '10': 'amountCredits'},
  ],
};

/// Descriptor for `CostTotal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List costTotalDescriptor = $convert.base64Decode('CglDb3N0VG90YWwSIwoNYW1vdW50X3Rva2VucxgBIAEoDVIMYW1vdW50VG9rZW5zEiUKDmFtb3VudF9jcmVkaXRzGAIgASgBUg1hbW91bnRDcmVkaXRz');
@$core.Deprecated('Use totalMetricsDataDescriptor instead')
const TotalMetricsData$json = const {
  '1': 'TotalMetricsData',
  '2': const [
    const {'1': 'input_total', '3': 1, '4': 1, '5': 11, '6': '.gooseai.CostTotal', '10': 'inputTotal'},
    const {'1': 'output_total', '3': 2, '4': 1, '5': 11, '6': '.gooseai.CostTotal', '10': 'outputTotal'},
  ],
};

/// Descriptor for `TotalMetricsData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totalMetricsDataDescriptor = $convert.base64Decode('ChBUb3RhbE1ldHJpY3NEYXRhEjMKC2lucHV0X3RvdGFsGAEgASgLMhIuZ29vc2VhaS5Db3N0VG90YWxSCmlucHV0VG90YWwSNQoMb3V0cHV0X3RvdGFsGAIgASgLMhIuZ29vc2VhaS5Db3N0VG90YWxSC291dHB1dFRvdGFs');
@$core.Deprecated('Use metricsDescriptor instead')
const Metrics$json = const {
  '1': 'Metrics',
  '2': const [
    const {'1': 'metrics', '3': 1, '4': 3, '5': 11, '6': '.gooseai.UsageMetric', '10': 'metrics'},
    const {'1': 'total', '3': 2, '4': 1, '5': 11, '6': '.gooseai.TotalMetricsData', '10': 'total'},
  ],
};

/// Descriptor for `Metrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricsDescriptor = $convert.base64Decode('CgdNZXRyaWNzEi4KB21ldHJpY3MYASADKAsyFC5nb29zZWFpLlVzYWdlTWV0cmljUgdtZXRyaWNzEi8KBXRvdGFsGAIgASgLMhkuZ29vc2VhaS5Ub3RhbE1ldHJpY3NEYXRhUgV0b3RhbA==');
@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = const {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode('CgxFbXB0eVJlcXVlc3Q=');
@$core.Deprecated('Use getOrganizationRequestDescriptor instead')
const GetOrganizationRequest$json = const {
  '1': 'GetOrganizationRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationRequestDescriptor = $convert.base64Decode('ChZHZXRPcmdhbml6YXRpb25SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getMetricsRequestDescriptor instead')
const GetMetricsRequest$json = const {
  '1': 'GetMetricsRequest',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    const {'1': 'range_from', '3': 3, '4': 1, '5': 4, '10': 'rangeFrom'},
    const {'1': 'range_to', '3': 4, '4': 1, '5': 4, '10': 'rangeTo'},
    const {'1': 'include_per_request_metrics', '3': 5, '4': 1, '5': 8, '10': 'includePerRequestMetrics'},
  ],
  '8': const [
    const {'1': '_user_id'},
  ],
};

/// Descriptor for `GetMetricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMetricsRequestDescriptor = $convert.base64Decode('ChFHZXRNZXRyaWNzUmVxdWVzdBInCg9vcmdhbml6YXRpb25faWQYASABKAlSDm9yZ2FuaXphdGlvbklkEhwKB3VzZXJfaWQYAiABKAlIAFIGdXNlcklkiAEBEh0KCnJhbmdlX2Zyb20YAyABKARSCXJhbmdlRnJvbRIZCghyYW5nZV90bxgEIAEoBFIHcmFuZ2VUbxI9ChtpbmNsdWRlX3Blcl9yZXF1ZXN0X21ldHJpY3MYBSABKAhSGGluY2x1ZGVQZXJSZXF1ZXN0TWV0cmljc0IKCghfdXNlcl9pZA==');
@$core.Deprecated('Use aPIKeyRequestDescriptor instead')
const APIKeyRequest$json = const {
  '1': 'APIKeyRequest',
  '2': const [
    const {'1': 'is_secret', '3': 1, '4': 1, '5': 8, '10': 'isSecret'},
  ],
};

/// Descriptor for `APIKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIKeyRequestDescriptor = $convert.base64Decode('Cg1BUElLZXlSZXF1ZXN0EhsKCWlzX3NlY3JldBgBIAEoCFIIaXNTZWNyZXQ=');
@$core.Deprecated('Use aPIKeyFindRequestDescriptor instead')
const APIKeyFindRequest$json = const {
  '1': 'APIKeyFindRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `APIKeyFindRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIKeyFindRequestDescriptor = $convert.base64Decode('ChFBUElLZXlGaW5kUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use updateDefaultOrganizationRequestDescriptor instead')
const UpdateDefaultOrganizationRequest$json = const {
  '1': 'UpdateDefaultOrganizationRequest',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
  ],
};

/// Descriptor for `UpdateDefaultOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDefaultOrganizationRequestDescriptor = $convert.base64Decode('CiBVcGRhdGVEZWZhdWx0T3JnYW5pemF0aW9uUmVxdWVzdBInCg9vcmdhbml6YXRpb25faWQYASABKAlSDm9yZ2FuaXphdGlvbklk');
@$core.Deprecated('Use clientSettingsDescriptor instead')
const ClientSettings$json = const {
  '1': 'ClientSettings',
  '2': const [
    const {'1': 'settings', '3': 1, '4': 1, '5': 12, '10': 'settings'},
  ],
};

/// Descriptor for `ClientSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientSettingsDescriptor = $convert.base64Decode('Cg5DbGllbnRTZXR0aW5ncxIaCghzZXR0aW5ncxgBIAEoDFIIc2V0dGluZ3M=');
@$core.Deprecated('Use createAutoChargeIntentRequestDescriptor instead')
const CreateAutoChargeIntentRequest$json = const {
  '1': 'CreateAutoChargeIntentRequest',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'monthly_maximum', '3': 2, '4': 1, '5': 4, '10': 'monthlyMaximum'},
    const {'1': 'minimum_value', '3': 3, '4': 1, '5': 4, '10': 'minimumValue'},
    const {'1': 'amount_credits', '3': 4, '4': 1, '5': 4, '10': 'amountCredits'},
  ],
};

/// Descriptor for `CreateAutoChargeIntentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAutoChargeIntentRequestDescriptor = $convert.base64Decode('Ch1DcmVhdGVBdXRvQ2hhcmdlSW50ZW50UmVxdWVzdBInCg9vcmdhbml6YXRpb25faWQYASABKAlSDm9yZ2FuaXphdGlvbklkEicKD21vbnRobHlfbWF4aW11bRgCIAEoBFIObW9udGhseU1heGltdW0SIwoNbWluaW11bV92YWx1ZRgDIAEoBFIMbWluaW11bVZhbHVlEiUKDmFtb3VudF9jcmVkaXRzGAQgASgEUg1hbW91bnRDcmVkaXRz');
@$core.Deprecated('Use createChargeRequestDescriptor instead')
const CreateChargeRequest$json = const {
  '1': 'CreateChargeRequest',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 4, '10': 'amount'},
    const {'1': 'organization_id', '3': 2, '4': 1, '5': 9, '10': 'organizationId'},
  ],
};

/// Descriptor for `CreateChargeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createChargeRequestDescriptor = $convert.base64Decode('ChNDcmVhdGVDaGFyZ2VSZXF1ZXN0EhYKBmFtb3VudBgBIAEoBFIGYW1vdW50EicKD29yZ2FuaXphdGlvbl9pZBgCIAEoCVIOb3JnYW5pemF0aW9uSWQ=');
@$core.Deprecated('Use getChargesRequestDescriptor instead')
const GetChargesRequest$json = const {
  '1': 'GetChargesRequest',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'range_from', '3': 2, '4': 1, '5': 4, '10': 'rangeFrom'},
    const {'1': 'range_to', '3': 3, '4': 1, '5': 4, '10': 'rangeTo'},
  ],
};

/// Descriptor for `GetChargesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChargesRequestDescriptor = $convert.base64Decode('ChFHZXRDaGFyZ2VzUmVxdWVzdBInCg9vcmdhbml6YXRpb25faWQYASABKAlSDm9yZ2FuaXphdGlvbklkEh0KCnJhbmdlX2Zyb20YAiABKARSCXJhbmdlRnJvbRIZCghyYW5nZV90bxgDIAEoBFIHcmFuZ2VUbw==');
@$core.Deprecated('Use chargeDescriptor instead')
const Charge$json = const {
  '1': 'Charge',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'paid', '3': 2, '4': 1, '5': 8, '10': 'paid'},
    const {'1': 'receipt_link', '3': 3, '4': 1, '5': 9, '10': 'receiptLink'},
    const {'1': 'payment_link', '3': 4, '4': 1, '5': 9, '10': 'paymentLink'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 4, '10': 'createdAt'},
    const {'1': 'amount_credits', '3': 6, '4': 1, '5': 4, '10': 'amountCredits'},
  ],
};

/// Descriptor for `Charge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargeDescriptor = $convert.base64Decode('CgZDaGFyZ2USDgoCaWQYASABKAlSAmlkEhIKBHBhaWQYAiABKAhSBHBhaWQSIQoMcmVjZWlwdF9saW5rGAMgASgJUgtyZWNlaXB0TGluaxIhCgxwYXltZW50X2xpbmsYBCABKAlSC3BheW1lbnRMaW5rEh0KCmNyZWF0ZWRfYXQYBSABKARSCWNyZWF0ZWRBdBIlCg5hbW91bnRfY3JlZGl0cxgGIAEoBFINYW1vdW50Q3JlZGl0cw==');
@$core.Deprecated('Use chargesDescriptor instead')
const Charges$json = const {
  '1': 'Charges',
  '2': const [
    const {'1': 'charges', '3': 1, '4': 3, '5': 11, '6': '.gooseai.Charge', '10': 'charges'},
  ],
};

/// Descriptor for `Charges`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargesDescriptor = $convert.base64Decode('CgdDaGFyZ2VzEikKB2NoYXJnZXMYASADKAsyDy5nb29zZWFpLkNoYXJnZVIHY2hhcmdlcw==');
@$core.Deprecated('Use getAutoChargeRequestDescriptor instead')
const GetAutoChargeRequest$json = const {
  '1': 'GetAutoChargeRequest',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
  ],
};

/// Descriptor for `GetAutoChargeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAutoChargeRequestDescriptor = $convert.base64Decode('ChRHZXRBdXRvQ2hhcmdlUmVxdWVzdBInCg9vcmdhbml6YXRpb25faWQYASABKAlSDm9yZ2FuaXphdGlvbklk');
@$core.Deprecated('Use autoChargeIntentDescriptor instead')
const AutoChargeIntent$json = const {
  '1': 'AutoChargeIntent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'payment_link', '3': 2, '4': 1, '5': 9, '10': 'paymentLink'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 4, '10': 'createdAt'},
    const {'1': 'monthly_maximum', '3': 4, '4': 1, '5': 4, '10': 'monthlyMaximum'},
    const {'1': 'minimum_value', '3': 5, '4': 1, '5': 4, '10': 'minimumValue'},
    const {'1': 'amount_credits', '3': 6, '4': 1, '5': 4, '10': 'amountCredits'},
  ],
};

/// Descriptor for `AutoChargeIntent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autoChargeIntentDescriptor = $convert.base64Decode('ChBBdXRvQ2hhcmdlSW50ZW50Eg4KAmlkGAEgASgJUgJpZBIhCgxwYXltZW50X2xpbmsYAiABKAlSC3BheW1lbnRMaW5rEh0KCmNyZWF0ZWRfYXQYAyABKARSCWNyZWF0ZWRBdBInCg9tb250aGx5X21heGltdW0YBCABKARSDm1vbnRobHlNYXhpbXVtEiMKDW1pbmltdW1fdmFsdWUYBSABKARSDG1pbmltdW1WYWx1ZRIlCg5hbW91bnRfY3JlZGl0cxgGIAEoBFINYW1vdW50Q3JlZGl0cw==');
@$core.Deprecated('Use updateUserInfoRequestDescriptor instead')
const UpdateUserInfoRequest$json = const {
  '1': 'UpdateUserInfoRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email', '17': true},
  ],
  '8': const [
    const {'1': '_email'},
  ],
};

/// Descriptor for `UpdateUserInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserInfoRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVVc2VySW5mb1JlcXVlc3QSGQoFZW1haWwYASABKAlIAFIFZW1haWyIAQFCCAoGX2VtYWls');
@$core.Deprecated('Use userPasswordChangeTicketDescriptor instead')
const UserPasswordChangeTicket$json = const {
  '1': 'UserPasswordChangeTicket',
  '2': const [
    const {'1': 'ticket', '3': 1, '4': 1, '5': 9, '10': 'ticket'},
  ],
};

/// Descriptor for `UserPasswordChangeTicket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPasswordChangeTicketDescriptor = $convert.base64Decode('ChhVc2VyUGFzc3dvcmRDaGFuZ2VUaWNrZXQSFgoGdGlja2V0GAEgASgJUgZ0aWNrZXQ=');

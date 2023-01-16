///
//  Generated code. Do not modify.
//  source: generation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use finishReasonDescriptor instead')
const FinishReason$json = const {
  '1': 'FinishReason',
  '2': const [
    const {'1': 'NULL', '2': 0},
    const {'1': 'LENGTH', '2': 1},
    const {'1': 'STOP', '2': 2},
    const {'1': 'ERROR', '2': 3},
    const {'1': 'FILTER', '2': 4},
  ],
};

/// Descriptor for `FinishReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List finishReasonDescriptor = $convert.base64Decode('CgxGaW5pc2hSZWFzb24SCAoETlVMTBAAEgoKBkxFTkdUSBABEggKBFNUT1AQAhIJCgVFUlJPUhADEgoKBkZJTFRFUhAE');
@$core.Deprecated('Use artifactTypeDescriptor instead')
const ArtifactType$json = const {
  '1': 'ArtifactType',
  '2': const [
    const {'1': 'ARTIFACT_NONE', '2': 0},
    const {'1': 'ARTIFACT_IMAGE', '2': 1},
    const {'1': 'ARTIFACT_VIDEO', '2': 2},
    const {'1': 'ARTIFACT_TEXT', '2': 3},
    const {'1': 'ARTIFACT_TOKENS', '2': 4},
    const {'1': 'ARTIFACT_EMBEDDING', '2': 5},
    const {'1': 'ARTIFACT_CLASSIFICATIONS', '2': 6},
    const {'1': 'ARTIFACT_MASK', '2': 7},
    const {'1': 'ARTIFACT_LATENT', '2': 8},
    const {'1': 'ARTIFACT_TENSOR', '2': 9},
  ],
};

/// Descriptor for `ArtifactType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List artifactTypeDescriptor = $convert.base64Decode('CgxBcnRpZmFjdFR5cGUSEQoNQVJUSUZBQ1RfTk9ORRAAEhIKDkFSVElGQUNUX0lNQUdFEAESEgoOQVJUSUZBQ1RfVklERU8QAhIRCg1BUlRJRkFDVF9URVhUEAMSEwoPQVJUSUZBQ1RfVE9LRU5TEAQSFgoSQVJUSUZBQ1RfRU1CRURESU5HEAUSHAoYQVJUSUZBQ1RfQ0xBU1NJRklDQVRJT05TEAYSEQoNQVJUSUZBQ1RfTUFTSxAHEhMKD0FSVElGQUNUX0xBVEVOVBAIEhMKD0FSVElGQUNUX1RFTlNPUhAJ');
@$core.Deprecated('Use maskedAreaInitDescriptor instead')
const MaskedAreaInit$json = const {
  '1': 'MaskedAreaInit',
  '2': const [
    const {'1': 'MASKED_AREA_INIT_ZERO', '2': 0},
    const {'1': 'MASKED_AREA_INIT_RANDOM', '2': 1},
    const {'1': 'MASKED_AREA_INIT_ORIGINAL', '2': 2},
  ],
};

/// Descriptor for `MaskedAreaInit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List maskedAreaInitDescriptor = $convert.base64Decode('Cg5NYXNrZWRBcmVhSW5pdBIZChVNQVNLRURfQVJFQV9JTklUX1pFUk8QABIbChdNQVNLRURfQVJFQV9JTklUX1JBTkRPTRABEh0KGU1BU0tFRF9BUkVBX0lOSVRfT1JJR0lOQUwQAg==');
@$core.Deprecated('Use weightMethodDescriptor instead')
const WeightMethod$json = const {
  '1': 'WeightMethod',
  '2': const [
    const {'1': 'TEXT_ENCODER', '2': 0},
    const {'1': 'CROSS_ATTENTION', '2': 1},
  ],
};

/// Descriptor for `WeightMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List weightMethodDescriptor = $convert.base64Decode('CgxXZWlnaHRNZXRob2QSEAoMVEVYVF9FTkNPREVSEAASEwoPQ1JPU1NfQVRURU5USU9OEAE=');
@$core.Deprecated('Use diffusionSamplerDescriptor instead')
const DiffusionSampler$json = const {
  '1': 'DiffusionSampler',
  '2': const [
    const {'1': 'SAMPLER_DDIM', '2': 0},
    const {'1': 'SAMPLER_DDPM', '2': 1},
    const {'1': 'SAMPLER_K_EULER', '2': 2},
    const {'1': 'SAMPLER_K_EULER_ANCESTRAL', '2': 3},
    const {'1': 'SAMPLER_K_HEUN', '2': 4},
    const {'1': 'SAMPLER_K_DPM_2', '2': 5},
    const {'1': 'SAMPLER_K_DPM_2_ANCESTRAL', '2': 6},
    const {'1': 'SAMPLER_K_LMS', '2': 7},
    const {'1': 'SAMPLER_K_DPMPP_2S_ANCESTRAL', '2': 8},
    const {'1': 'SAMPLER_K_DPMPP_2M', '2': 9},
    const {'1': 'SAMPLER_K_DPMPP_SDE', '2': 10},
  ],
};

/// Descriptor for `DiffusionSampler`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List diffusionSamplerDescriptor = $convert.base64Decode('ChBEaWZmdXNpb25TYW1wbGVyEhAKDFNBTVBMRVJfRERJTRAAEhAKDFNBTVBMRVJfRERQTRABEhMKD1NBTVBMRVJfS19FVUxFUhACEh0KGVNBTVBMRVJfS19FVUxFUl9BTkNFU1RSQUwQAxISCg5TQU1QTEVSX0tfSEVVThAEEhMKD1NBTVBMRVJfS19EUE1fMhAFEh0KGVNBTVBMRVJfS19EUE1fMl9BTkNFU1RSQUwQBhIRCg1TQU1QTEVSX0tfTE1TEAcSIAocU0FNUExFUl9LX0RQTVBQXzJTX0FOQ0VTVFJBTBAIEhYKElNBTVBMRVJfS19EUE1QUF8yTRAJEhcKE1NBTVBMRVJfS19EUE1QUF9TREUQCg==');
@$core.Deprecated('Use upscalerDescriptor instead')
const Upscaler$json = const {
  '1': 'Upscaler',
  '2': const [
    const {'1': 'UPSCALER_RGB', '2': 0},
    const {'1': 'UPSCALER_GFPGAN', '2': 1},
    const {'1': 'UPSCALER_ESRGAN', '2': 2},
  ],
};

/// Descriptor for `Upscaler`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List upscalerDescriptor = $convert.base64Decode('CghVcHNjYWxlchIQCgxVUFNDQUxFUl9SR0IQABITCg9VUFNDQUxFUl9HRlBHQU4QARITCg9VUFNDQUxFUl9FU1JHQU4QAg==');
@$core.Deprecated('Use guidancePresetDescriptor instead')
const GuidancePreset$json = const {
  '1': 'GuidancePreset',
  '2': const [
    const {'1': 'GUIDANCE_PRESET_NONE', '2': 0},
    const {'1': 'GUIDANCE_PRESET_SIMPLE', '2': 1},
    const {'1': 'GUIDANCE_PRESET_FAST_BLUE', '2': 2},
    const {'1': 'GUIDANCE_PRESET_FAST_GREEN', '2': 3},
    const {'1': 'GUIDANCE_PRESET_SLOW', '2': 4},
    const {'1': 'GUIDANCE_PRESET_SLOWER', '2': 5},
    const {'1': 'GUIDANCE_PRESET_SLOWEST', '2': 6},
  ],
};

/// Descriptor for `GuidancePreset`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List guidancePresetDescriptor = $convert.base64Decode('Cg5HdWlkYW5jZVByZXNldBIYChRHVUlEQU5DRV9QUkVTRVRfTk9ORRAAEhoKFkdVSURBTkNFX1BSRVNFVF9TSU1QTEUQARIdChlHVUlEQU5DRV9QUkVTRVRfRkFTVF9CTFVFEAISHgoaR1VJREFOQ0VfUFJFU0VUX0ZBU1RfR1JFRU4QAxIYChRHVUlEQU5DRV9QUkVTRVRfU0xPVxAEEhoKFkdVSURBTkNFX1BSRVNFVF9TTE9XRVIQBRIbChdHVUlEQU5DRV9QUkVTRVRfU0xPV0VTVBAG');
@$core.Deprecated('Use modelArchitectureDescriptor instead')
const ModelArchitecture$json = const {
  '1': 'ModelArchitecture',
  '2': const [
    const {'1': 'MODEL_ARCHITECTURE_NONE', '2': 0},
    const {'1': 'MODEL_ARCHITECTURE_CLIP_VIT', '2': 1},
    const {'1': 'MODEL_ARCHITECTURE_CLIP_RESNET', '2': 2},
    const {'1': 'MODEL_ARCHITECTURE_LDM', '2': 3},
  ],
};

/// Descriptor for `ModelArchitecture`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List modelArchitectureDescriptor = $convert.base64Decode('ChFNb2RlbEFyY2hpdGVjdHVyZRIbChdNT0RFTF9BUkNISVRFQ1RVUkVfTk9ORRAAEh8KG01PREVMX0FSQ0hJVEVDVFVSRV9DTElQX1ZJVBABEiIKHk1PREVMX0FSQ0hJVEVDVFVSRV9DTElQX1JFU05FVBACEhoKFk1PREVMX0FSQ0hJVEVDVFVSRV9MRE0QAw==');
@$core.Deprecated('Use actionDescriptor instead')
const Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'ACTION_PASSTHROUGH', '2': 0},
    const {'1': 'ACTION_REGENERATE_DUPLICATE', '2': 1},
    const {'1': 'ACTION_REGENERATE', '2': 2},
    const {'1': 'ACTION_OBFUSCATE_DUPLICATE', '2': 3},
    const {'1': 'ACTION_OBFUSCATE', '2': 4},
    const {'1': 'ACTION_DISCARD', '2': 5},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode('CgZBY3Rpb24SFgoSQUNUSU9OX1BBU1NUSFJPVUdIEAASHwobQUNUSU9OX1JFR0VORVJBVEVfRFVQTElDQVRFEAESFQoRQUNUSU9OX1JFR0VORVJBVEUQAhIeChpBQ1RJT05fT0JGVVNDQVRFX0RVUExJQ0FURRADEhQKEEFDVElPTl9PQkZVU0NBVEUQBBISCg5BQ1RJT05fRElTQ0FSRBAF');
@$core.Deprecated('Use classifierModeDescriptor instead')
const ClassifierMode$json = const {
  '1': 'ClassifierMode',
  '2': const [
    const {'1': 'CLSFR_MODE_ZEROSHOT', '2': 0},
    const {'1': 'CLSFR_MODE_MULTICLASS', '2': 1},
  ],
};

/// Descriptor for `ClassifierMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List classifierModeDescriptor = $convert.base64Decode('Cg5DbGFzc2lmaWVyTW9kZRIXChNDTFNGUl9NT0RFX1pFUk9TSE9UEAASGQoVQ0xTRlJfTU9ERV9NVUxUSUNMQVNTEAE=');
@$core.Deprecated('Use assetActionDescriptor instead')
const AssetAction$json = const {
  '1': 'AssetAction',
  '2': const [
    const {'1': 'ASSET_PUT', '2': 0},
    const {'1': 'ASSET_GET', '2': 1},
    const {'1': 'ASSET_DELETE', '2': 2},
  ],
};

/// Descriptor for `AssetAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List assetActionDescriptor = $convert.base64Decode('CgtBc3NldEFjdGlvbhINCglBU1NFVF9QVVQQABINCglBU1NFVF9HRVQQARIQCgxBU1NFVF9ERUxFVEUQAg==');
@$core.Deprecated('Use assetUseDescriptor instead')
const AssetUse$json = const {
  '1': 'AssetUse',
  '2': const [
    const {'1': 'ASSET_USE_UNDEFINED', '2': 0},
    const {'1': 'ASSET_USE_INPUT', '2': 1},
    const {'1': 'ASSET_USE_OUTPUT', '2': 2},
    const {'1': 'ASSET_USE_INTERMEDIATE', '2': 3},
    const {'1': 'ASSET_USE_PROJECT', '2': 4},
  ],
};

/// Descriptor for `AssetUse`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List assetUseDescriptor = $convert.base64Decode('CghBc3NldFVzZRIXChNBU1NFVF9VU0VfVU5ERUZJTkVEEAASEwoPQVNTRVRfVVNFX0lOUFVUEAESFAoQQVNTRVRfVVNFX09VVFBVVBACEhoKFkFTU0VUX1VTRV9JTlRFUk1FRElBVEUQAxIVChFBU1NFVF9VU0VfUFJPSkVDVBAE');
@$core.Deprecated('Use stageActionDescriptor instead')
const StageAction$json = const {
  '1': 'StageAction',
  '2': const [
    const {'1': 'STAGE_ACTION_PASS', '2': 0},
    const {'1': 'STAGE_ACTION_DISCARD', '2': 1},
    const {'1': 'STAGE_ACTION_RETURN', '2': 2},
  ],
};

/// Descriptor for `StageAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List stageActionDescriptor = $convert.base64Decode('CgtTdGFnZUFjdGlvbhIVChFTVEFHRV9BQ1RJT05fUEFTUxAAEhgKFFNUQUdFX0FDVElPTl9ESVNDQVJEEAESFwoTU1RBR0VfQUNUSU9OX1JFVFVSThAC');
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'text', '17': true},
    const {'1': 'id', '3': 2, '4': 1, '5': 13, '10': 'id'},
  ],
  '8': const [
    const {'1': '_text'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode('CgVUb2tlbhIXCgR0ZXh0GAEgASgJSABSBHRleHSIAQESDgoCaWQYAiABKA1SAmlkQgcKBV90ZXh0');
@$core.Deprecated('Use tokensDescriptor instead')
const Tokens$json = const {
  '1': 'Tokens',
  '2': const [
    const {'1': 'tokens', '3': 1, '4': 3, '5': 11, '6': '.gooseai.Token', '10': 'tokens'},
    const {'1': 'tokenizer_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'tokenizerId', '17': true},
  ],
  '8': const [
    const {'1': '_tokenizer_id'},
  ],
};

/// Descriptor for `Tokens`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokensDescriptor = $convert.base64Decode('CgZUb2tlbnMSJgoGdG9rZW5zGAEgAygLMg4uZ29vc2VhaS5Ub2tlblIGdG9rZW5zEiYKDHRva2VuaXplcl9pZBgCIAEoCUgAUgt0b2tlbml6ZXJJZIgBAUIPCg1fdG9rZW5pemVyX2lk');
@$core.Deprecated('Use artifactDescriptor instead')
const Artifact$json = const {
  '1': 'Artifact',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.gooseai.ArtifactType', '10': 'type'},
    const {'1': 'mime', '3': 3, '4': 1, '5': 9, '10': 'mime'},
    const {'1': 'magic', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'magic', '17': true},
    const {'1': 'binary', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'binary'},
    const {'1': 'text', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'text'},
    const {'1': 'tokens', '3': 7, '4': 1, '5': 11, '6': '.gooseai.Tokens', '9': 0, '10': 'tokens'},
    const {'1': 'classifier', '3': 11, '4': 1, '5': 11, '6': '.gooseai.ClassifierParameters', '9': 0, '10': 'classifier'},
    const {'1': 'tensor', '3': 14, '4': 1, '5': 11, '6': '.tensors.Tensor', '9': 0, '10': 'tensor'},
    const {'1': 'index', '3': 8, '4': 1, '5': 13, '10': 'index'},
    const {'1': 'finish_reason', '3': 9, '4': 1, '5': 14, '6': '.gooseai.FinishReason', '10': 'finishReason'},
    const {'1': 'seed', '3': 10, '4': 1, '5': 13, '10': 'seed'},
    const {'1': 'uuid', '3': 12, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'size', '3': 13, '4': 1, '5': 4, '10': 'size'},
  ],
  '8': const [
    const {'1': 'data'},
    const {'1': '_magic'},
  ],
};

/// Descriptor for `Artifact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artifactDescriptor = $convert.base64Decode('CghBcnRpZmFjdBIOCgJpZBgBIAEoBFICaWQSKQoEdHlwZRgCIAEoDjIVLmdvb3NlYWkuQXJ0aWZhY3RUeXBlUgR0eXBlEhIKBG1pbWUYAyABKAlSBG1pbWUSGQoFbWFnaWMYBCABKAlIAVIFbWFnaWOIAQESGAoGYmluYXJ5GAUgASgMSABSBmJpbmFyeRIUCgR0ZXh0GAYgASgJSABSBHRleHQSKQoGdG9rZW5zGAcgASgLMg8uZ29vc2VhaS5Ub2tlbnNIAFIGdG9rZW5zEj8KCmNsYXNzaWZpZXIYCyABKAsyHS5nb29zZWFpLkNsYXNzaWZpZXJQYXJhbWV0ZXJzSABSCmNsYXNzaWZpZXISKQoGdGVuc29yGA4gASgLMg8udGVuc29ycy5UZW5zb3JIAFIGdGVuc29yEhQKBWluZGV4GAggASgNUgVpbmRleBI6Cg1maW5pc2hfcmVhc29uGAkgASgOMhUuZ29vc2VhaS5GaW5pc2hSZWFzb25SDGZpbmlzaFJlYXNvbhISCgRzZWVkGAogASgNUgRzZWVkEhIKBHV1aWQYDCABKAlSBHV1aWQSEgoEc2l6ZRgNIAEoBFIEc2l6ZUIGCgRkYXRhQggKBl9tYWdpYw==');
@$core.Deprecated('Use promptParametersDescriptor instead')
const PromptParameters$json = const {
  '1': 'PromptParameters',
  '2': const [
    const {'1': 'init', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'init', '17': true},
    const {'1': 'weight', '3': 2, '4': 1, '5': 2, '9': 1, '10': 'weight', '17': true},
  ],
  '8': const [
    const {'1': '_init'},
    const {'1': '_weight'},
  ],
};

/// Descriptor for `PromptParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptParametersDescriptor = $convert.base64Decode('ChBQcm9tcHRQYXJhbWV0ZXJzEhcKBGluaXQYASABKAhIAFIEaW5pdIgBARIbCgZ3ZWlnaHQYAiABKAJIAVIGd2VpZ2h0iAEBQgcKBV9pbml0QgkKB193ZWlnaHQ=');
@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = const {
  '1': 'Prompt',
  '2': const [
    const {'1': 'parameters', '3': 1, '4': 1, '5': 11, '6': '.gooseai.PromptParameters', '9': 1, '10': 'parameters', '17': true},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'text'},
    const {'1': 'tokens', '3': 3, '4': 1, '5': 11, '6': '.gooseai.Tokens', '9': 0, '10': 'tokens'},
    const {'1': 'artifact', '3': 4, '4': 1, '5': 11, '6': '.gooseai.Artifact', '9': 0, '10': 'artifact'},
  ],
  '8': const [
    const {'1': 'prompt'},
    const {'1': '_parameters'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode('CgZQcm9tcHQSPgoKcGFyYW1ldGVycxgBIAEoCzIZLmdvb3NlYWkuUHJvbXB0UGFyYW1ldGVyc0gBUgpwYXJhbWV0ZXJziAEBEhQKBHRleHQYAiABKAlIAFIEdGV4dBIpCgZ0b2tlbnMYAyABKAsyDy5nb29zZWFpLlRva2Vuc0gAUgZ0b2tlbnMSLwoIYXJ0aWZhY3QYBCABKAsyES5nb29zZWFpLkFydGlmYWN0SABSCGFydGlmYWN0QggKBnByb21wdEINCgtfcGFyYW1ldGVycw==');
@$core.Deprecated('Use samplerParametersDescriptor instead')
const SamplerParameters$json = const {
  '1': 'SamplerParameters',
  '2': const [
    const {'1': 'eta', '3': 1, '4': 1, '5': 2, '9': 0, '10': 'eta', '17': true},
    const {'1': 'sampling_steps', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'samplingSteps', '17': true},
    const {'1': 'latent_channels', '3': 3, '4': 1, '5': 4, '9': 2, '10': 'latentChannels', '17': true},
    const {'1': 'downsampling_factor', '3': 4, '4': 1, '5': 4, '9': 3, '10': 'downsamplingFactor', '17': true},
    const {'1': 'cfg_scale', '3': 5, '4': 1, '5': 2, '9': 4, '10': 'cfgScale', '17': true},
    const {'1': 'init_noise_scale', '3': 6, '4': 1, '5': 2, '9': 5, '10': 'initNoiseScale', '17': true},
    const {'1': 'step_noise_scale', '3': 7, '4': 1, '5': 2, '9': 6, '10': 'stepNoiseScale', '17': true},
  ],
  '8': const [
    const {'1': '_eta'},
    const {'1': '_sampling_steps'},
    const {'1': '_latent_channels'},
    const {'1': '_downsampling_factor'},
    const {'1': '_cfg_scale'},
    const {'1': '_init_noise_scale'},
    const {'1': '_step_noise_scale'},
  ],
};

/// Descriptor for `SamplerParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List samplerParametersDescriptor = $convert.base64Decode('ChFTYW1wbGVyUGFyYW1ldGVycxIVCgNldGEYASABKAJIAFIDZXRhiAEBEioKDnNhbXBsaW5nX3N0ZXBzGAIgASgESAFSDXNhbXBsaW5nU3RlcHOIAQESLAoPbGF0ZW50X2NoYW5uZWxzGAMgASgESAJSDmxhdGVudENoYW5uZWxziAEBEjQKE2Rvd25zYW1wbGluZ19mYWN0b3IYBCABKARIA1ISZG93bnNhbXBsaW5nRmFjdG9yiAEBEiAKCWNmZ19zY2FsZRgFIAEoAkgEUghjZmdTY2FsZYgBARItChBpbml0X25vaXNlX3NjYWxlGAYgASgCSAVSDmluaXROb2lzZVNjYWxliAEBEi0KEHN0ZXBfbm9pc2Vfc2NhbGUYByABKAJIBlIOc3RlcE5vaXNlU2NhbGWIAQFCBgoEX2V0YUIRCg9fc2FtcGxpbmdfc3RlcHNCEgoQX2xhdGVudF9jaGFubmVsc0IWChRfZG93bnNhbXBsaW5nX2ZhY3RvckIMCgpfY2ZnX3NjYWxlQhMKEV9pbml0X25vaXNlX3NjYWxlQhMKEV9zdGVwX25vaXNlX3NjYWxl');
@$core.Deprecated('Use conditionerParametersDescriptor instead')
const ConditionerParameters$json = const {
  '1': 'ConditionerParameters',
  '2': const [
    const {'1': 'vector_adjust_prior', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'vectorAdjustPrior', '17': true},
    const {'1': 'conditioner', '3': 2, '4': 1, '5': 11, '6': '.gooseai.Model', '9': 1, '10': 'conditioner', '17': true},
  ],
  '8': const [
    const {'1': '_vector_adjust_prior'},
    const {'1': '_conditioner'},
  ],
};

/// Descriptor for `ConditionerParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conditionerParametersDescriptor = $convert.base64Decode('ChVDb25kaXRpb25lclBhcmFtZXRlcnMSMwoTdmVjdG9yX2FkanVzdF9wcmlvchgBIAEoCUgAUhF2ZWN0b3JBZGp1c3RQcmlvcogBARI1Cgtjb25kaXRpb25lchgCIAEoCzIOLmdvb3NlYWkuTW9kZWxIAVILY29uZGl0aW9uZXKIAQFCFgoUX3ZlY3Rvcl9hZGp1c3RfcHJpb3JCDgoMX2NvbmRpdGlvbmVy');
@$core.Deprecated('Use scheduleParametersDescriptor instead')
const ScheduleParameters$json = const {
  '1': 'ScheduleParameters',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 2, '9': 0, '10': 'start', '17': true},
    const {'1': 'end', '3': 2, '4': 1, '5': 2, '9': 1, '10': 'end', '17': true},
    const {'1': 'value', '3': 3, '4': 1, '5': 2, '9': 2, '10': 'value', '17': true},
  ],
  '8': const [
    const {'1': '_start'},
    const {'1': '_end'},
    const {'1': '_value'},
  ],
};

/// Descriptor for `ScheduleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleParametersDescriptor = $convert.base64Decode('ChJTY2hlZHVsZVBhcmFtZXRlcnMSGQoFc3RhcnQYASABKAJIAFIFc3RhcnSIAQESFQoDZW5kGAIgASgCSAFSA2VuZIgBARIZCgV2YWx1ZRgDIAEoAkgCUgV2YWx1ZYgBAUIICgZfc3RhcnRCBgoEX2VuZEIICgZfdmFsdWU=');
@$core.Deprecated('Use stepParameterDescriptor instead')
const StepParameter$json = const {
  '1': 'StepParameter',
  '2': const [
    const {'1': 'scaled_step', '3': 1, '4': 1, '5': 2, '10': 'scaledStep'},
    const {'1': 'sampler', '3': 2, '4': 1, '5': 11, '6': '.gooseai.SamplerParameters', '9': 0, '10': 'sampler', '17': true},
    const {'1': 'schedule', '3': 3, '4': 1, '5': 11, '6': '.gooseai.ScheduleParameters', '9': 1, '10': 'schedule', '17': true},
    const {'1': 'guidance', '3': 4, '4': 1, '5': 11, '6': '.gooseai.GuidanceParameters', '9': 2, '10': 'guidance', '17': true},
  ],
  '8': const [
    const {'1': '_sampler'},
    const {'1': '_schedule'},
    const {'1': '_guidance'},
  ],
};

/// Descriptor for `StepParameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepParameterDescriptor = $convert.base64Decode('Cg1TdGVwUGFyYW1ldGVyEh8KC3NjYWxlZF9zdGVwGAEgASgCUgpzY2FsZWRTdGVwEjkKB3NhbXBsZXIYAiABKAsyGi5nb29zZWFpLlNhbXBsZXJQYXJhbWV0ZXJzSABSB3NhbXBsZXKIAQESPAoIc2NoZWR1bGUYAyABKAsyGy5nb29zZWFpLlNjaGVkdWxlUGFyYW1ldGVyc0gBUghzY2hlZHVsZYgBARI8CghndWlkYW5jZRgEIAEoCzIbLmdvb3NlYWkuR3VpZGFuY2VQYXJhbWV0ZXJzSAJSCGd1aWRhbmNliAEBQgoKCF9zYW1wbGVyQgsKCV9zY2hlZHVsZUILCglfZ3VpZGFuY2U=');
@$core.Deprecated('Use modelDescriptor instead')
const Model$json = const {
  '1': 'Model',
  '2': const [
    const {'1': 'architecture', '3': 1, '4': 1, '5': 14, '6': '.gooseai.ModelArchitecture', '10': 'architecture'},
    const {'1': 'publisher', '3': 2, '4': 1, '5': 9, '10': 'publisher'},
    const {'1': 'dataset', '3': 3, '4': 1, '5': 9, '10': 'dataset'},
    const {'1': 'version', '3': 4, '4': 1, '5': 2, '10': 'version'},
    const {'1': 'semantic_version', '3': 5, '4': 1, '5': 9, '10': 'semanticVersion'},
    const {'1': 'alias', '3': 6, '4': 1, '5': 9, '10': 'alias'},
  ],
};

/// Descriptor for `Model`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelDescriptor = $convert.base64Decode('CgVNb2RlbBI+CgxhcmNoaXRlY3R1cmUYASABKA4yGi5nb29zZWFpLk1vZGVsQXJjaGl0ZWN0dXJlUgxhcmNoaXRlY3R1cmUSHAoJcHVibGlzaGVyGAIgASgJUglwdWJsaXNoZXISGAoHZGF0YXNldBgDIAEoCVIHZGF0YXNldBIYCgd2ZXJzaW9uGAQgASgCUgd2ZXJzaW9uEikKEHNlbWFudGljX3ZlcnNpb24YBSABKAlSD3NlbWFudGljVmVyc2lvbhIUCgVhbGlhcxgGIAEoCVIFYWxpYXM=');
@$core.Deprecated('Use cutoutParametersDescriptor instead')
const CutoutParameters$json = const {
  '1': 'CutoutParameters',
  '2': const [
    const {'1': 'cutouts', '3': 1, '4': 3, '5': 11, '6': '.gooseai.CutoutParameters', '10': 'cutouts'},
    const {'1': 'count', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'count', '17': true},
    const {'1': 'gray', '3': 3, '4': 1, '5': 2, '9': 1, '10': 'gray', '17': true},
    const {'1': 'blur', '3': 4, '4': 1, '5': 2, '9': 2, '10': 'blur', '17': true},
    const {'1': 'size_power', '3': 5, '4': 1, '5': 2, '9': 3, '10': 'sizePower', '17': true},
  ],
  '8': const [
    const {'1': '_count'},
    const {'1': '_gray'},
    const {'1': '_blur'},
    const {'1': '_size_power'},
  ],
};

/// Descriptor for `CutoutParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cutoutParametersDescriptor = $convert.base64Decode('ChBDdXRvdXRQYXJhbWV0ZXJzEjMKB2N1dG91dHMYASADKAsyGS5nb29zZWFpLkN1dG91dFBhcmFtZXRlcnNSB2N1dG91dHMSGQoFY291bnQYAiABKA1IAFIFY291bnSIAQESFwoEZ3JheRgDIAEoAkgBUgRncmF5iAEBEhcKBGJsdXIYBCABKAJIAlIEYmx1cogBARIiCgpzaXplX3Bvd2VyGAUgASgCSANSCXNpemVQb3dlcogBAUIICgZfY291bnRCBwoFX2dyYXlCBwoFX2JsdXJCDQoLX3NpemVfcG93ZXI=');
@$core.Deprecated('Use guidanceScheduleParametersDescriptor instead')
const GuidanceScheduleParameters$json = const {
  '1': 'GuidanceScheduleParameters',
  '2': const [
    const {'1': 'duration', '3': 1, '4': 1, '5': 2, '10': 'duration'},
    const {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `GuidanceScheduleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guidanceScheduleParametersDescriptor = $convert.base64Decode('ChpHdWlkYW5jZVNjaGVkdWxlUGFyYW1ldGVycxIaCghkdXJhdGlvbhgBIAEoAlIIZHVyYXRpb24SFAoFdmFsdWUYAiABKAJSBXZhbHVl');
@$core.Deprecated('Use guidanceInstanceParametersDescriptor instead')
const GuidanceInstanceParameters$json = const {
  '1': 'GuidanceInstanceParameters',
  '2': const [
    const {'1': 'models', '3': 2, '4': 3, '5': 11, '6': '.gooseai.Model', '10': 'models'},
    const {'1': 'guidance_strength', '3': 3, '4': 1, '5': 2, '9': 0, '10': 'guidanceStrength', '17': true},
    const {'1': 'schedule', '3': 4, '4': 3, '5': 11, '6': '.gooseai.GuidanceScheduleParameters', '10': 'schedule'},
    const {'1': 'cutouts', '3': 5, '4': 1, '5': 11, '6': '.gooseai.CutoutParameters', '9': 1, '10': 'cutouts', '17': true},
    const {'1': 'prompt', '3': 6, '4': 1, '5': 11, '6': '.gooseai.Prompt', '9': 2, '10': 'prompt', '17': true},
  ],
  '8': const [
    const {'1': '_guidance_strength'},
    const {'1': '_cutouts'},
    const {'1': '_prompt'},
  ],
};

/// Descriptor for `GuidanceInstanceParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guidanceInstanceParametersDescriptor = $convert.base64Decode('ChpHdWlkYW5jZUluc3RhbmNlUGFyYW1ldGVycxImCgZtb2RlbHMYAiADKAsyDi5nb29zZWFpLk1vZGVsUgZtb2RlbHMSMAoRZ3VpZGFuY2Vfc3RyZW5ndGgYAyABKAJIAFIQZ3VpZGFuY2VTdHJlbmd0aIgBARI/CghzY2hlZHVsZRgEIAMoCzIjLmdvb3NlYWkuR3VpZGFuY2VTY2hlZHVsZVBhcmFtZXRlcnNSCHNjaGVkdWxlEjgKB2N1dG91dHMYBSABKAsyGS5nb29zZWFpLkN1dG91dFBhcmFtZXRlcnNIAVIHY3V0b3V0c4gBARIsCgZwcm9tcHQYBiABKAsyDy5nb29zZWFpLlByb21wdEgCUgZwcm9tcHSIAQFCFAoSX2d1aWRhbmNlX3N0cmVuZ3RoQgoKCF9jdXRvdXRzQgkKB19wcm9tcHQ=');
@$core.Deprecated('Use guidanceParametersDescriptor instead')
const GuidanceParameters$json = const {
  '1': 'GuidanceParameters',
  '2': const [
    const {'1': 'guidance_preset', '3': 1, '4': 1, '5': 14, '6': '.gooseai.GuidancePreset', '10': 'guidancePreset'},
    const {'1': 'instances', '3': 2, '4': 3, '5': 11, '6': '.gooseai.GuidanceInstanceParameters', '10': 'instances'},
  ],
};

/// Descriptor for `GuidanceParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guidanceParametersDescriptor = $convert.base64Decode('ChJHdWlkYW5jZVBhcmFtZXRlcnMSQAoPZ3VpZGFuY2VfcHJlc2V0GAEgASgOMhcuZ29vc2VhaS5HdWlkYW5jZVByZXNldFIOZ3VpZGFuY2VQcmVzZXQSQQoJaW5zdGFuY2VzGAIgAygLMiMuZ29vc2VhaS5HdWlkYW5jZUluc3RhbmNlUGFyYW1ldGVyc1IJaW5zdGFuY2Vz');
@$core.Deprecated('Use transformTypeDescriptor instead')
const TransformType$json = const {
  '1': 'TransformType',
  '2': const [
    const {'1': 'diffusion', '3': 1, '4': 1, '5': 14, '6': '.gooseai.DiffusionSampler', '9': 0, '10': 'diffusion'},
    const {'1': 'upscaler', '3': 2, '4': 1, '5': 14, '6': '.gooseai.Upscaler', '9': 0, '10': 'upscaler'},
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

/// Descriptor for `TransformType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformTypeDescriptor = $convert.base64Decode('Cg1UcmFuc2Zvcm1UeXBlEjkKCWRpZmZ1c2lvbhgBIAEoDjIZLmdvb3NlYWkuRGlmZnVzaW9uU2FtcGxlckgAUglkaWZmdXNpb24SLwoIdXBzY2FsZXIYAiABKA4yES5nb29zZWFpLlVwc2NhbGVySABSCHVwc2NhbGVyQgYKBHR5cGU=');
@$core.Deprecated('Use imageParametersDescriptor instead')
const ImageParameters$json = const {
  '1': 'ImageParameters',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'height', '17': true},
    const {'1': 'width', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'width', '17': true},
    const {'1': 'seed', '3': 3, '4': 3, '5': 13, '10': 'seed'},
    const {'1': 'samples', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'samples', '17': true},
    const {'1': 'steps', '3': 5, '4': 1, '5': 4, '9': 3, '10': 'steps', '17': true},
    const {'1': 'transform', '3': 6, '4': 1, '5': 11, '6': '.gooseai.TransformType', '9': 4, '10': 'transform', '17': true},
    const {'1': 'parameters', '3': 7, '4': 3, '5': 11, '6': '.gooseai.StepParameter', '10': 'parameters'},
    const {'1': 'masked_area_init', '3': 8, '4': 1, '5': 14, '6': '.gooseai.MaskedAreaInit', '9': 5, '10': 'maskedAreaInit', '17': true},
    const {'1': 'weight_method', '3': 9, '4': 1, '5': 14, '6': '.gooseai.WeightMethod', '9': 6, '10': 'weightMethod', '17': true},
    const {'1': 'quantize', '3': 10, '4': 1, '5': 8, '9': 7, '10': 'quantize', '17': true},
  ],
  '8': const [
    const {'1': '_height'},
    const {'1': '_width'},
    const {'1': '_samples'},
    const {'1': '_steps'},
    const {'1': '_transform'},
    const {'1': '_masked_area_init'},
    const {'1': '_weight_method'},
    const {'1': '_quantize'},
  ],
};

/// Descriptor for `ImageParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageParametersDescriptor = $convert.base64Decode('Cg9JbWFnZVBhcmFtZXRlcnMSGwoGaGVpZ2h0GAEgASgESABSBmhlaWdodIgBARIZCgV3aWR0aBgCIAEoBEgBUgV3aWR0aIgBARISCgRzZWVkGAMgAygNUgRzZWVkEh0KB3NhbXBsZXMYBCABKARIAlIHc2FtcGxlc4gBARIZCgVzdGVwcxgFIAEoBEgDUgVzdGVwc4gBARI5Cgl0cmFuc2Zvcm0YBiABKAsyFi5nb29zZWFpLlRyYW5zZm9ybVR5cGVIBFIJdHJhbnNmb3JtiAEBEjYKCnBhcmFtZXRlcnMYByADKAsyFi5nb29zZWFpLlN0ZXBQYXJhbWV0ZXJSCnBhcmFtZXRlcnMSRgoQbWFza2VkX2FyZWFfaW5pdBgIIAEoDjIXLmdvb3NlYWkuTWFza2VkQXJlYUluaXRIBVIObWFza2VkQXJlYUluaXSIAQESPwoNd2VpZ2h0X21ldGhvZBgJIAEoDjIVLmdvb3NlYWkuV2VpZ2h0TWV0aG9kSAZSDHdlaWdodE1ldGhvZIgBARIfCghxdWFudGl6ZRgKIAEoCEgHUghxdWFudGl6ZYgBAUIJCgdfaGVpZ2h0QggKBl93aWR0aEIKCghfc2FtcGxlc0IICgZfc3RlcHNCDAoKX3RyYW5zZm9ybUITChFfbWFza2VkX2FyZWFfaW5pdEIQCg5fd2VpZ2h0X21ldGhvZEILCglfcXVhbnRpemU=');
@$core.Deprecated('Use classifierConceptDescriptor instead')
const ClassifierConcept$json = const {
  '1': 'ClassifierConcept',
  '2': const [
    const {'1': 'concept', '3': 1, '4': 1, '5': 9, '10': 'concept'},
    const {'1': 'threshold', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'threshold', '17': true},
  ],
  '8': const [
    const {'1': '_threshold'},
  ],
};

/// Descriptor for `ClassifierConcept`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classifierConceptDescriptor = $convert.base64Decode('ChFDbGFzc2lmaWVyQ29uY2VwdBIYCgdjb25jZXB0GAEgASgJUgdjb25jZXB0EiEKCXRocmVzaG9sZBgCIAEoAkgAUgl0aHJlc2hvbGSIAQFCDAoKX3RocmVzaG9sZA==');
@$core.Deprecated('Use classifierCategoryDescriptor instead')
const ClassifierCategory$json = const {
  '1': 'ClassifierCategory',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'concepts', '3': 2, '4': 3, '5': 11, '6': '.gooseai.ClassifierConcept', '10': 'concepts'},
    const {'1': 'adjustment', '3': 3, '4': 1, '5': 2, '9': 0, '10': 'adjustment', '17': true},
    const {'1': 'action', '3': 4, '4': 1, '5': 14, '6': '.gooseai.Action', '9': 1, '10': 'action', '17': true},
    const {'1': 'classifier_mode', '3': 5, '4': 1, '5': 14, '6': '.gooseai.ClassifierMode', '9': 2, '10': 'classifierMode', '17': true},
  ],
  '8': const [
    const {'1': '_adjustment'},
    const {'1': '_action'},
    const {'1': '_classifier_mode'},
  ],
};

/// Descriptor for `ClassifierCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classifierCategoryDescriptor = $convert.base64Decode('ChJDbGFzc2lmaWVyQ2F0ZWdvcnkSEgoEbmFtZRgBIAEoCVIEbmFtZRI2Cghjb25jZXB0cxgCIAMoCzIaLmdvb3NlYWkuQ2xhc3NpZmllckNvbmNlcHRSCGNvbmNlcHRzEiMKCmFkanVzdG1lbnQYAyABKAJIAFIKYWRqdXN0bWVudIgBARIsCgZhY3Rpb24YBCABKA4yDy5nb29zZWFpLkFjdGlvbkgBUgZhY3Rpb26IAQESRQoPY2xhc3NpZmllcl9tb2RlGAUgASgOMhcuZ29vc2VhaS5DbGFzc2lmaWVyTW9kZUgCUg5jbGFzc2lmaWVyTW9kZYgBAUINCgtfYWRqdXN0bWVudEIJCgdfYWN0aW9uQhIKEF9jbGFzc2lmaWVyX21vZGU=');
@$core.Deprecated('Use classifierParametersDescriptor instead')
const ClassifierParameters$json = const {
  '1': 'ClassifierParameters',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.gooseai.ClassifierCategory', '10': 'categories'},
    const {'1': 'exceeds', '3': 2, '4': 3, '5': 11, '6': '.gooseai.ClassifierCategory', '10': 'exceeds'},
    const {'1': 'realized_action', '3': 3, '4': 1, '5': 14, '6': '.gooseai.Action', '9': 0, '10': 'realizedAction', '17': true},
  ],
  '8': const [
    const {'1': '_realized_action'},
  ],
};

/// Descriptor for `ClassifierParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classifierParametersDescriptor = $convert.base64Decode('ChRDbGFzc2lmaWVyUGFyYW1ldGVycxI7CgpjYXRlZ29yaWVzGAEgAygLMhsuZ29vc2VhaS5DbGFzc2lmaWVyQ2F0ZWdvcnlSCmNhdGVnb3JpZXMSNQoHZXhjZWVkcxgCIAMoCzIbLmdvb3NlYWkuQ2xhc3NpZmllckNhdGVnb3J5UgdleGNlZWRzEj0KD3JlYWxpemVkX2FjdGlvbhgDIAEoDjIPLmdvb3NlYWkuQWN0aW9uSABSDnJlYWxpemVkQWN0aW9uiAEBQhIKEF9yZWFsaXplZF9hY3Rpb24=');
@$core.Deprecated('Use assetParametersDescriptor instead')
const AssetParameters$json = const {
  '1': 'AssetParameters',
  '2': const [
    const {'1': 'action', '3': 1, '4': 1, '5': 14, '6': '.gooseai.AssetAction', '10': 'action'},
    const {'1': 'project_id', '3': 2, '4': 1, '5': 9, '10': 'projectId'},
    const {'1': 'use', '3': 3, '4': 1, '5': 14, '6': '.gooseai.AssetUse', '10': 'use'},
  ],
};

/// Descriptor for `AssetParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetParametersDescriptor = $convert.base64Decode('Cg9Bc3NldFBhcmFtZXRlcnMSLAoGYWN0aW9uGAEgASgOMhQuZ29vc2VhaS5Bc3NldEFjdGlvblIGYWN0aW9uEh0KCnByb2plY3RfaWQYAiABKAlSCXByb2plY3RJZBIjCgN1c2UYAyABKA4yES5nb29zZWFpLkFzc2V0VXNlUgN1c2U=');
@$core.Deprecated('Use answerMetaDescriptor instead')
const AnswerMeta$json = const {
  '1': 'AnswerMeta',
  '2': const [
    const {'1': 'gpu_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'gpuId', '17': true},
    const {'1': 'cpu_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'cpuId', '17': true},
    const {'1': 'node_id', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'nodeId', '17': true},
    const {'1': 'engine_id', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'engineId', '17': true},
  ],
  '8': const [
    const {'1': '_gpu_id'},
    const {'1': '_cpu_id'},
    const {'1': '_node_id'},
    const {'1': '_engine_id'},
  ],
};

/// Descriptor for `AnswerMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerMetaDescriptor = $convert.base64Decode('CgpBbnN3ZXJNZXRhEhoKBmdwdV9pZBgBIAEoCUgAUgVncHVJZIgBARIaCgZjcHVfaWQYAiABKAlIAVIFY3B1SWSIAQESHAoHbm9kZV9pZBgDIAEoCUgCUgZub2RlSWSIAQESIAoJZW5naW5lX2lkGAQgASgJSANSCGVuZ2luZUlkiAEBQgkKB19ncHVfaWRCCQoHX2NwdV9pZEIKCghfbm9kZV9pZEIMCgpfZW5naW5lX2lk');
@$core.Deprecated('Use answerDescriptor instead')
const Answer$json = const {
  '1': 'Answer',
  '2': const [
    const {'1': 'answer_id', '3': 1, '4': 1, '5': 9, '10': 'answerId'},
    const {'1': 'request_id', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'received', '3': 3, '4': 1, '5': 4, '10': 'received'},
    const {'1': 'created', '3': 4, '4': 1, '5': 4, '10': 'created'},
    const {'1': 'meta', '3': 6, '4': 1, '5': 11, '6': '.gooseai.AnswerMeta', '9': 0, '10': 'meta', '17': true},
    const {'1': 'artifacts', '3': 7, '4': 3, '5': 11, '6': '.gooseai.Artifact', '10': 'artifacts'},
  ],
  '8': const [
    const {'1': '_meta'},
  ],
};

/// Descriptor for `Answer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerDescriptor = $convert.base64Decode('CgZBbnN3ZXISGwoJYW5zd2VyX2lkGAEgASgJUghhbnN3ZXJJZBIdCgpyZXF1ZXN0X2lkGAIgASgJUglyZXF1ZXN0SWQSGgoIcmVjZWl2ZWQYAyABKARSCHJlY2VpdmVkEhgKB2NyZWF0ZWQYBCABKARSB2NyZWF0ZWQSLAoEbWV0YRgGIAEoCzITLmdvb3NlYWkuQW5zd2VyTWV0YUgAUgRtZXRhiAEBEi8KCWFydGlmYWN0cxgHIAMoCzIRLmdvb3NlYWkuQXJ0aWZhY3RSCWFydGlmYWN0c0IHCgVfbWV0YQ==');
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'engine_id', '3': 1, '4': 1, '5': 9, '10': 'engineId'},
    const {'1': 'request_id', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'requested_type', '3': 3, '4': 1, '5': 14, '6': '.gooseai.ArtifactType', '10': 'requestedType'},
    const {'1': 'prompt', '3': 4, '4': 3, '5': 11, '6': '.gooseai.Prompt', '10': 'prompt'},
    const {'1': 'image', '3': 5, '4': 1, '5': 11, '6': '.gooseai.ImageParameters', '9': 0, '10': 'image'},
    const {'1': 'classifier', '3': 7, '4': 1, '5': 11, '6': '.gooseai.ClassifierParameters', '9': 0, '10': 'classifier'},
    const {'1': 'asset', '3': 8, '4': 1, '5': 11, '6': '.gooseai.AssetParameters', '9': 0, '10': 'asset'},
    const {'1': 'conditioner', '3': 6, '4': 1, '5': 11, '6': '.gooseai.ConditionerParameters', '9': 1, '10': 'conditioner', '17': true},
  ],
  '8': const [
    const {'1': 'params'},
    const {'1': '_conditioner'},
  ],
  '9': const [
    const {'1': 9, '2': 10},
    const {'1': 10, '2': 11},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0EhsKCWVuZ2luZV9pZBgBIAEoCVIIZW5naW5lSWQSHQoKcmVxdWVzdF9pZBgCIAEoCVIJcmVxdWVzdElkEjwKDnJlcXVlc3RlZF90eXBlGAMgASgOMhUuZ29vc2VhaS5BcnRpZmFjdFR5cGVSDXJlcXVlc3RlZFR5cGUSJwoGcHJvbXB0GAQgAygLMg8uZ29vc2VhaS5Qcm9tcHRSBnByb21wdBIwCgVpbWFnZRgFIAEoCzIYLmdvb3NlYWkuSW1hZ2VQYXJhbWV0ZXJzSABSBWltYWdlEj8KCmNsYXNzaWZpZXIYByABKAsyHS5nb29zZWFpLkNsYXNzaWZpZXJQYXJhbWV0ZXJzSABSCmNsYXNzaWZpZXISMAoFYXNzZXQYCCABKAsyGC5nb29zZWFpLkFzc2V0UGFyYW1ldGVyc0gAUgVhc3NldBJFCgtjb25kaXRpb25lchgGIAEoCzIeLmdvb3NlYWkuQ29uZGl0aW9uZXJQYXJhbWV0ZXJzSAFSC2NvbmRpdGlvbmVyiAEBQggKBnBhcmFtc0IOCgxfY29uZGl0aW9uZXJKBAgJEApKBAgKEAs=');
@$core.Deprecated('Use onStatusDescriptor instead')
const OnStatus$json = const {
  '1': 'OnStatus',
  '2': const [
    const {'1': 'reason', '3': 1, '4': 3, '5': 14, '6': '.gooseai.FinishReason', '10': 'reason'},
    const {'1': 'target', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'target', '17': true},
    const {'1': 'action', '3': 3, '4': 3, '5': 14, '6': '.gooseai.StageAction', '10': 'action'},
  ],
  '8': const [
    const {'1': '_target'},
  ],
};

/// Descriptor for `OnStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onStatusDescriptor = $convert.base64Decode('CghPblN0YXR1cxItCgZyZWFzb24YASADKA4yFS5nb29zZWFpLkZpbmlzaFJlYXNvblIGcmVhc29uEhsKBnRhcmdldBgCIAEoCUgAUgZ0YXJnZXSIAQESLAoGYWN0aW9uGAMgAygOMhQuZ29vc2VhaS5TdGFnZUFjdGlvblIGYWN0aW9uQgkKB190YXJnZXQ=');
@$core.Deprecated('Use stageDescriptor instead')
const Stage$json = const {
  '1': 'Stage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'request', '3': 2, '4': 1, '5': 11, '6': '.gooseai.Request', '10': 'request'},
    const {'1': 'on_status', '3': 3, '4': 3, '5': 11, '6': '.gooseai.OnStatus', '10': 'onStatus'},
  ],
};

/// Descriptor for `Stage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stageDescriptor = $convert.base64Decode('CgVTdGFnZRIOCgJpZBgBIAEoCVICaWQSKgoHcmVxdWVzdBgCIAEoCzIQLmdvb3NlYWkuUmVxdWVzdFIHcmVxdWVzdBIuCglvbl9zdGF0dXMYAyADKAsyES5nb29zZWFpLk9uU3RhdHVzUghvblN0YXR1cw==');
@$core.Deprecated('Use chainRequestDescriptor instead')
const ChainRequest$json = const {
  '1': 'ChainRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'stage', '3': 2, '4': 3, '5': 11, '6': '.gooseai.Stage', '10': 'stage'},
  ],
};

/// Descriptor for `ChainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chainRequestDescriptor = $convert.base64Decode('CgxDaGFpblJlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEiQKBXN0YWdlGAIgAygLMg4uZ29vc2VhaS5TdGFnZVIFc3RhZ2U=');

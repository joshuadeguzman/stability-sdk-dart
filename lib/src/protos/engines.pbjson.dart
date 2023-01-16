///
//  Generated code. Do not modify.
//  source: engines.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use engineTypeDescriptor instead')
const EngineType$json = const {
  '1': 'EngineType',
  '2': const [
    const {'1': 'TEXT', '2': 0},
    const {'1': 'PICTURE', '2': 1},
    const {'1': 'AUDIO', '2': 2},
    const {'1': 'VIDEO', '2': 3},
    const {'1': 'CLASSIFICATION', '2': 4},
    const {'1': 'STORAGE', '2': 5},
  ],
};

/// Descriptor for `EngineType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List engineTypeDescriptor = $convert.base64Decode('CgpFbmdpbmVUeXBlEggKBFRFWFQQABILCgdQSUNUVVJFEAESCQoFQVVESU8QAhIJCgVWSURFTxADEhIKDkNMQVNTSUZJQ0FUSU9OEAQSCwoHU1RPUkFHRRAF');
@$core.Deprecated('Use engineTokenizerDescriptor instead')
const EngineTokenizer$json = const {
  '1': 'EngineTokenizer',
  '2': const [
    const {'1': 'GPT2', '2': 0},
    const {'1': 'PILE', '2': 1},
  ],
};

/// Descriptor for `EngineTokenizer`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List engineTokenizerDescriptor = $convert.base64Decode('Cg9FbmdpbmVUb2tlbml6ZXISCAoER1BUMhAAEggKBFBJTEUQAQ==');
@$core.Deprecated('Use engineInfoDescriptor instead')
const EngineInfo$json = const {
  '1': 'EngineInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'ready', '3': 3, '4': 1, '5': 8, '10': 'ready'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.gooseai.EngineType', '10': 'type'},
    const {'1': 'tokenizer', '3': 5, '4': 1, '5': 14, '6': '.gooseai.EngineTokenizer', '10': 'tokenizer'},
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `EngineInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List engineInfoDescriptor = $convert.base64Decode('CgpFbmdpbmVJbmZvEg4KAmlkGAEgASgJUgJpZBIUCgVvd25lchgCIAEoCVIFb3duZXISFAoFcmVhZHkYAyABKAhSBXJlYWR5EicKBHR5cGUYBCABKA4yEy5nb29zZWFpLkVuZ2luZVR5cGVSBHR5cGUSNgoJdG9rZW5pemVyGAUgASgOMhguZ29vc2VhaS5FbmdpbmVUb2tlbml6ZXJSCXRva2VuaXplchISCgRuYW1lGAYgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAcgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use listEnginesRequestDescriptor instead')
const ListEnginesRequest$json = const {
  '1': 'ListEnginesRequest',
};

/// Descriptor for `ListEnginesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEnginesRequestDescriptor = $convert.base64Decode('ChJMaXN0RW5naW5lc1JlcXVlc3Q=');
@$core.Deprecated('Use enginesDescriptor instead')
const Engines$json = const {
  '1': 'Engines',
  '2': const [
    const {'1': 'engine', '3': 1, '4': 3, '5': 11, '6': '.gooseai.EngineInfo', '10': 'engine'},
  ],
};

/// Descriptor for `Engines`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enginesDescriptor = $convert.base64Decode('CgdFbmdpbmVzEisKBmVuZ2luZRgBIAMoCzITLmdvb3NlYWkuRW5naW5lSW5mb1IGZW5naW5l');

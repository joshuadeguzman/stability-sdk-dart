///
//  Generated code. Do not modify.
//  source: tensors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use dtypeDescriptor instead')
const Dtype$json = const {
  '1': 'Dtype',
  '2': const [
    const {'1': 'DT_INVALID', '2': 0},
    const {'1': 'DT_FLOAT32', '2': 1},
    const {'1': 'DT_FLOAT64', '2': 2},
    const {'1': 'DT_FLOAT16', '2': 3},
    const {'1': 'DT_BFLOAT16', '2': 4},
    const {'1': 'DT_COMPLEX32', '2': 5},
    const {'1': 'DT_COMPLEX64', '2': 6},
    const {'1': 'DT_COMPLEX128', '2': 7},
    const {'1': 'DT_UINT8', '2': 8},
    const {'1': 'DT_INT8', '2': 9},
    const {'1': 'DT_INT16', '2': 10},
    const {'1': 'DT_INT32', '2': 11},
    const {'1': 'DT_INT64', '2': 12},
    const {'1': 'DT_BOOL', '2': 13},
    const {'1': 'DT_QUINT8', '2': 14},
    const {'1': 'DT_QINT8', '2': 15},
    const {'1': 'DT_QINT32', '2': 16},
    const {'1': 'DT_QUINT4_2', '2': 17},
  ],
};

/// Descriptor for `Dtype`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dtypeDescriptor = $convert.base64Decode('CgVEdHlwZRIOCgpEVF9JTlZBTElEEAASDgoKRFRfRkxPQVQzMhABEg4KCkRUX0ZMT0FUNjQQAhIOCgpEVF9GTE9BVDE2EAMSDwoLRFRfQkZMT0FUMTYQBBIQCgxEVF9DT01QTEVYMzIQBRIQCgxEVF9DT01QTEVYNjQQBhIRCg1EVF9DT01QTEVYMTI4EAcSDAoIRFRfVUlOVDgQCBILCgdEVF9JTlQ4EAkSDAoIRFRfSU5UMTYQChIMCghEVF9JTlQzMhALEgwKCERUX0lOVDY0EAwSCwoHRFRfQk9PTBANEg0KCURUX1FVSU5UOBAOEgwKCERUX1FJTlQ4EA8SDQoJRFRfUUlOVDMyEBASDwoLRFRfUVVJTlQ0XzIQEQ==');
@$core.Deprecated('Use attributeTypeDescriptor instead')
const AttributeType$json = const {
  '1': 'AttributeType',
  '2': const [
    const {'1': 'AT_PARAMETER', '2': 0},
    const {'1': 'AT_BUFFER', '2': 1},
  ],
};

/// Descriptor for `AttributeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List attributeTypeDescriptor = $convert.base64Decode('Cg1BdHRyaWJ1dGVUeXBlEhAKDEFUX1BBUkFNRVRFUhAAEg0KCUFUX0JVRkZFUhAB');
@$core.Deprecated('Use tensorDescriptor instead')
const Tensor$json = const {
  '1': 'Tensor',
  '2': const [
    const {'1': 'dtype', '3': 1, '4': 1, '5': 14, '6': '.tensors.Dtype', '10': 'dtype'},
    const {'1': 'shape', '3': 2, '4': 3, '5': 3, '10': 'shape'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'attr_type', '3': 4, '4': 1, '5': 14, '6': '.tensors.AttributeType', '9': 0, '10': 'attrType', '17': true},
  ],
  '8': const [
    const {'1': '_attr_type'},
  ],
};

/// Descriptor for `Tensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tensorDescriptor = $convert.base64Decode('CgZUZW5zb3ISJAoFZHR5cGUYASABKA4yDi50ZW5zb3JzLkR0eXBlUgVkdHlwZRIUCgVzaGFwZRgCIAMoA1IFc2hhcGUSEgoEZGF0YRgDIAEoDFIEZGF0YRI4CglhdHRyX3R5cGUYBCABKA4yFi50ZW5zb3JzLkF0dHJpYnV0ZVR5cGVIAFIIYXR0clR5cGWIAQFCDAoKX2F0dHJfdHlwZQ==');
@$core.Deprecated('Use attributeDescriptor instead')
const Attribute$json = const {
  '1': 'Attribute',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'module', '3': 3, '4': 1, '5': 11, '6': '.tensors.Module', '9': 0, '10': 'module'},
    const {'1': 'tensor', '3': 4, '4': 1, '5': 11, '6': '.tensors.Tensor', '9': 0, '10': 'tensor'},
    const {'1': 'string', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'string'},
    const {'1': 'int64', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'int64'},
    const {'1': 'float', '3': 7, '4': 1, '5': 2, '9': 0, '10': 'float'},
    const {'1': 'bool', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'bool'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `Attribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeDescriptor = $convert.base64Decode('CglBdHRyaWJ1dGUSEgoEbmFtZRgBIAEoCVIEbmFtZRIpCgZtb2R1bGUYAyABKAsyDy50ZW5zb3JzLk1vZHVsZUgAUgZtb2R1bGUSKQoGdGVuc29yGAQgASgLMg8udGVuc29ycy5UZW5zb3JIAFIGdGVuc29yEhgKBnN0cmluZxgFIAEoCUgAUgZzdHJpbmcSFgoFaW50NjQYBiABKANIAFIFaW50NjQSFgoFZmxvYXQYByABKAJIAFIFZmxvYXQSFAoEYm9vbBgIIAEoCEgAUgRib29sQgcKBXZhbHVl');
@$core.Deprecated('Use moduleDescriptor instead')
const Module$json = const {
  '1': 'Module',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'names', '3': 2, '4': 3, '5': 9, '10': 'names'},
    const {'1': 'attributes', '3': 3, '4': 3, '5': 11, '6': '.tensors.Attribute', '10': 'attributes'},
  ],
};

/// Descriptor for `Module`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDescriptor = $convert.base64Decode('CgZNb2R1bGUSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVuYW1lcxgCIAMoCVIFbmFtZXMSMgoKYXR0cmlidXRlcxgDIAMoCzISLnRlbnNvcnMuQXR0cmlidXRlUgphdHRyaWJ1dGVz');

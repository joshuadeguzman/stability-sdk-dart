///
//  Generated code. Do not modify.
//  source: tensors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Dtype extends $pb.ProtobufEnum {
  static const Dtype DT_INVALID = Dtype._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_INVALID');
  static const Dtype DT_FLOAT32 = Dtype._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_FLOAT32');
  static const Dtype DT_FLOAT64 = Dtype._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_FLOAT64');
  static const Dtype DT_FLOAT16 = Dtype._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_FLOAT16');
  static const Dtype DT_BFLOAT16 = Dtype._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_BFLOAT16');
  static const Dtype DT_COMPLEX32 = Dtype._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_COMPLEX32');
  static const Dtype DT_COMPLEX64 = Dtype._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_COMPLEX64');
  static const Dtype DT_COMPLEX128 = Dtype._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_COMPLEX128');
  static const Dtype DT_UINT8 = Dtype._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_UINT8');
  static const Dtype DT_INT8 = Dtype._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_INT8');
  static const Dtype DT_INT16 = Dtype._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_INT16');
  static const Dtype DT_INT32 = Dtype._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_INT32');
  static const Dtype DT_INT64 = Dtype._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_INT64');
  static const Dtype DT_BOOL = Dtype._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_BOOL');
  static const Dtype DT_QUINT8 = Dtype._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_QUINT8');
  static const Dtype DT_QINT8 = Dtype._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_QINT8');
  static const Dtype DT_QINT32 = Dtype._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_QINT32');
  static const Dtype DT_QUINT4_2 = Dtype._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DT_QUINT4_2');

  static const $core.List<Dtype> values = <Dtype> [
    DT_INVALID,
    DT_FLOAT32,
    DT_FLOAT64,
    DT_FLOAT16,
    DT_BFLOAT16,
    DT_COMPLEX32,
    DT_COMPLEX64,
    DT_COMPLEX128,
    DT_UINT8,
    DT_INT8,
    DT_INT16,
    DT_INT32,
    DT_INT64,
    DT_BOOL,
    DT_QUINT8,
    DT_QINT8,
    DT_QINT32,
    DT_QUINT4_2,
  ];

  static final $core.Map<$core.int, Dtype> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Dtype? valueOf($core.int value) => _byValue[value];

  const Dtype._($core.int v, $core.String n) : super(v, n);
}

class AttributeType extends $pb.ProtobufEnum {
  static const AttributeType AT_PARAMETER = AttributeType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AT_PARAMETER');
  static const AttributeType AT_BUFFER = AttributeType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AT_BUFFER');

  static const $core.List<AttributeType> values = <AttributeType> [
    AT_PARAMETER,
    AT_BUFFER,
  ];

  static final $core.Map<$core.int, AttributeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AttributeType? valueOf($core.int value) => _byValue[value];

  const AttributeType._($core.int v, $core.String n) : super(v, n);
}


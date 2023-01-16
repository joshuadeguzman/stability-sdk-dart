///
//  Generated code. Do not modify.
//  source: engines.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class EngineType extends $pb.ProtobufEnum {
  static const EngineType TEXT = EngineType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');
  static const EngineType PICTURE = EngineType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PICTURE');
  static const EngineType AUDIO = EngineType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUDIO');
  static const EngineType VIDEO = EngineType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIDEO');
  static const EngineType CLASSIFICATION = EngineType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLASSIFICATION');
  static const EngineType STORAGE = EngineType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STORAGE');

  static const $core.List<EngineType> values = <EngineType> [
    TEXT,
    PICTURE,
    AUDIO,
    VIDEO,
    CLASSIFICATION,
    STORAGE,
  ];

  static final $core.Map<$core.int, EngineType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EngineType? valueOf($core.int value) => _byValue[value];

  const EngineType._($core.int v, $core.String n) : super(v, n);
}

class EngineTokenizer extends $pb.ProtobufEnum {
  static const EngineTokenizer GPT2 = EngineTokenizer._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GPT2');
  static const EngineTokenizer PILE = EngineTokenizer._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PILE');

  static const $core.List<EngineTokenizer> values = <EngineTokenizer> [
    GPT2,
    PILE,
  ];

  static final $core.Map<$core.int, EngineTokenizer> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EngineTokenizer? valueOf($core.int value) => _byValue[value];

  const EngineTokenizer._($core.int v, $core.String n) : super(v, n);
}


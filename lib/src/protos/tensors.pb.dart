///
//  Generated code. Do not modify.
//  source: tensors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensors.pbenum.dart';

export 'tensors.pbenum.dart';

class Tensor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Tensor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tensors'), createEmptyInstance: create)
    ..e<Dtype>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dtype', $pb.PbFieldType.OE, defaultOrMaker: Dtype.DT_INVALID, valueOf: Dtype.valueOf, enumValues: Dtype.values)
    ..p<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shape', $pb.PbFieldType.K6)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..e<AttributeType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attrType', $pb.PbFieldType.OE, defaultOrMaker: AttributeType.AT_PARAMETER, valueOf: AttributeType.valueOf, enumValues: AttributeType.values)
    ..hasRequiredFields = false
  ;

  Tensor._() : super();
  factory Tensor({
    Dtype? dtype,
    $core.Iterable<$fixnum.Int64>? shape,
    $core.List<$core.int>? data,
    AttributeType? attrType,
  }) {
    final _result = create();
    if (dtype != null) {
      _result.dtype = dtype;
    }
    if (shape != null) {
      _result.shape.addAll(shape);
    }
    if (data != null) {
      _result.data = data;
    }
    if (attrType != null) {
      _result.attrType = attrType;
    }
    return _result;
  }
  factory Tensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tensor clone() => Tensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tensor copyWith(void Function(Tensor) updates) => super.copyWith((message) => updates(message as Tensor)) as Tensor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tensor create() => Tensor._();
  Tensor createEmptyInstance() => create();
  static $pb.PbList<Tensor> createRepeated() => $pb.PbList<Tensor>();
  @$core.pragma('dart2js:noInline')
  static Tensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tensor>(create);
  static Tensor? _defaultInstance;

  @$pb.TagNumber(1)
  Dtype get dtype => $_getN(0);
  @$pb.TagNumber(1)
  set dtype(Dtype v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDtype() => $_has(0);
  @$pb.TagNumber(1)
  void clearDtype() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get shape => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);

  @$pb.TagNumber(4)
  AttributeType get attrType => $_getN(3);
  @$pb.TagNumber(4)
  set attrType(AttributeType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAttrType() => $_has(3);
  @$pb.TagNumber(4)
  void clearAttrType() => clearField(4);
}

enum Attribute_Value {
  module, 
  tensor, 
  string, 
  int64, 
  float, 
  bool_8, 
  notSet
}

class Attribute extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Attribute_Value> _Attribute_ValueByTag = {
    3 : Attribute_Value.module,
    4 : Attribute_Value.tensor,
    5 : Attribute_Value.string,
    6 : Attribute_Value.int64,
    7 : Attribute_Value.float,
    8 : Attribute_Value.bool_8,
    0 : Attribute_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Attribute', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tensors'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<Module>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'module', subBuilder: Module.create)
    ..aOM<Tensor>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tensor', subBuilder: Tensor.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'string')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'int64')
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'float', $pb.PbFieldType.OF)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bool')
    ..hasRequiredFields = false
  ;

  Attribute._() : super();
  factory Attribute({
    $core.String? name,
    Module? module,
    Tensor? tensor,
    $core.String? string,
    $fixnum.Int64? int64,
    $core.double? float,
    $core.bool? bool_8,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (module != null) {
      _result.module = module;
    }
    if (tensor != null) {
      _result.tensor = tensor;
    }
    if (string != null) {
      _result.string = string;
    }
    if (int64 != null) {
      _result.int64 = int64;
    }
    if (float != null) {
      _result.float = float;
    }
    if (bool_8 != null) {
      _result.bool_8 = bool_8;
    }
    return _result;
  }
  factory Attribute.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Attribute.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Attribute clone() => Attribute()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Attribute copyWith(void Function(Attribute) updates) => super.copyWith((message) => updates(message as Attribute)) as Attribute; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Attribute create() => Attribute._();
  Attribute createEmptyInstance() => create();
  static $pb.PbList<Attribute> createRepeated() => $pb.PbList<Attribute>();
  @$core.pragma('dart2js:noInline')
  static Attribute getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Attribute>(create);
  static Attribute? _defaultInstance;

  Attribute_Value whichValue() => _Attribute_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(3)
  Module get module => $_getN(1);
  @$pb.TagNumber(3)
  set module(Module v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasModule() => $_has(1);
  @$pb.TagNumber(3)
  void clearModule() => clearField(3);
  @$pb.TagNumber(3)
  Module ensureModule() => $_ensure(1);

  @$pb.TagNumber(4)
  Tensor get tensor => $_getN(2);
  @$pb.TagNumber(4)
  set tensor(Tensor v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTensor() => $_has(2);
  @$pb.TagNumber(4)
  void clearTensor() => clearField(4);
  @$pb.TagNumber(4)
  Tensor ensureTensor() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.String get string => $_getSZ(3);
  @$pb.TagNumber(5)
  set string($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasString() => $_has(3);
  @$pb.TagNumber(5)
  void clearString() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get int64 => $_getI64(4);
  @$pb.TagNumber(6)
  set int64($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasInt64() => $_has(4);
  @$pb.TagNumber(6)
  void clearInt64() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get float => $_getN(5);
  @$pb.TagNumber(7)
  set float($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasFloat() => $_has(5);
  @$pb.TagNumber(7)
  void clearFloat() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get bool_8 => $_getBF(6);
  @$pb.TagNumber(8)
  set bool_8($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasBool_8() => $_has(6);
  @$pb.TagNumber(8)
  void clearBool_8() => clearField(8);
}

class Module extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Module', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tensors'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'names')
    ..pc<Attribute>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: Attribute.create)
    ..hasRequiredFields = false
  ;

  Module._() : super();
  factory Module({
    $core.String? name,
    $core.Iterable<$core.String>? names,
    $core.Iterable<Attribute>? attributes,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (names != null) {
      _result.names.addAll(names);
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    return _result;
  }
  factory Module.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Module.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Module clone() => Module()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Module copyWith(void Function(Module) updates) => super.copyWith((message) => updates(message as Module)) as Module; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Module create() => Module._();
  Module createEmptyInstance() => create();
  static $pb.PbList<Module> createRepeated() => $pb.PbList<Module>();
  @$core.pragma('dart2js:noInline')
  static Module getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Module>(create);
  static Module? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get names => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Attribute> get attributes => $_getList(2);
}


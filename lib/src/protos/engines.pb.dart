///
//  Generated code. Do not modify.
//  source: engines.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'engines.pbenum.dart';

export 'engines.pbenum.dart';

class EngineInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EngineInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ready')
    ..e<EngineType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: EngineType.TEXT, valueOf: EngineType.valueOf, enumValues: EngineType.values)
    ..e<EngineTokenizer>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenizer', $pb.PbFieldType.OE, defaultOrMaker: EngineTokenizer.GPT2, valueOf: EngineTokenizer.valueOf, enumValues: EngineTokenizer.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  EngineInfo._() : super();
  factory EngineInfo({
    $core.String? id,
    $core.String? owner,
    $core.bool? ready,
    EngineType? type,
    EngineTokenizer? tokenizer,
    $core.String? name,
    $core.String? description,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (ready != null) {
      _result.ready = ready;
    }
    if (type != null) {
      _result.type = type;
    }
    if (tokenizer != null) {
      _result.tokenizer = tokenizer;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory EngineInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EngineInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EngineInfo clone() => EngineInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EngineInfo copyWith(void Function(EngineInfo) updates) => super.copyWith((message) => updates(message as EngineInfo)) as EngineInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EngineInfo create() => EngineInfo._();
  EngineInfo createEmptyInstance() => create();
  static $pb.PbList<EngineInfo> createRepeated() => $pb.PbList<EngineInfo>();
  @$core.pragma('dart2js:noInline')
  static EngineInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EngineInfo>(create);
  static EngineInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get owner => $_getSZ(1);
  @$pb.TagNumber(2)
  set owner($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get ready => $_getBF(2);
  @$pb.TagNumber(3)
  set ready($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReady() => $_has(2);
  @$pb.TagNumber(3)
  void clearReady() => clearField(3);

  @$pb.TagNumber(4)
  EngineType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(EngineType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  EngineTokenizer get tokenizer => $_getN(4);
  @$pb.TagNumber(5)
  set tokenizer(EngineTokenizer v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTokenizer() => $_has(4);
  @$pb.TagNumber(5)
  void clearTokenizer() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);
}

class ListEnginesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListEnginesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListEnginesRequest._() : super();
  factory ListEnginesRequest() => create();
  factory ListEnginesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListEnginesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListEnginesRequest clone() => ListEnginesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListEnginesRequest copyWith(void Function(ListEnginesRequest) updates) => super.copyWith((message) => updates(message as ListEnginesRequest)) as ListEnginesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListEnginesRequest create() => ListEnginesRequest._();
  ListEnginesRequest createEmptyInstance() => create();
  static $pb.PbList<ListEnginesRequest> createRepeated() => $pb.PbList<ListEnginesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListEnginesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEnginesRequest>(create);
  static ListEnginesRequest? _defaultInstance;
}

class Engines extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Engines', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<EngineInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'engine', $pb.PbFieldType.PM, subBuilder: EngineInfo.create)
    ..hasRequiredFields = false
  ;

  Engines._() : super();
  factory Engines({
    $core.Iterable<EngineInfo>? engine,
  }) {
    final _result = create();
    if (engine != null) {
      _result.engine.addAll(engine);
    }
    return _result;
  }
  factory Engines.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Engines.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Engines clone() => Engines()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Engines copyWith(void Function(Engines) updates) => super.copyWith((message) => updates(message as Engines)) as Engines; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Engines create() => Engines._();
  Engines createEmptyInstance() => create();
  static $pb.PbList<Engines> createRepeated() => $pb.PbList<Engines>();
  @$core.pragma('dart2js:noInline')
  static Engines getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Engines>(create);
  static Engines? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EngineInfo> get engine => $_getList(0);
}


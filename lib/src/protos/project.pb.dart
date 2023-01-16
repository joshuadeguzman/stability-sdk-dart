///
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'generation.pb.dart' as $2;

import 'project.pbenum.dart';

export 'project.pbenum.dart';

class ProjectAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProjectAsset', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uri')
    ..e<ProjectAssetUse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'use', $pb.PbFieldType.OE, defaultOrMaker: ProjectAssetUse.PROJECT_ASSET_USE_UNDEFINED, valueOf: ProjectAssetUse.valueOf, enumValues: ProjectAssetUse.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$2.Request>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: $2.Request.create)
    ..hasRequiredFields = false
  ;

  ProjectAsset._() : super();
  factory ProjectAsset({
    $core.String? id,
    $core.String? uri,
    ProjectAssetUse? use,
    $core.String? name,
    $fixnum.Int64? size,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $2.Request? request,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (uri != null) {
      _result.uri = uri;
    }
    if (use != null) {
      _result.use = use;
    }
    if (name != null) {
      _result.name = name;
    }
    if (size != null) {
      _result.size = size;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (request != null) {
      _result.request = request;
    }
    return _result;
  }
  factory ProjectAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectAsset clone() => ProjectAsset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectAsset copyWith(void Function(ProjectAsset) updates) => super.copyWith((message) => updates(message as ProjectAsset)) as ProjectAsset; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProjectAsset create() => ProjectAsset._();
  ProjectAsset createEmptyInstance() => create();
  static $pb.PbList<ProjectAsset> createRepeated() => $pb.PbList<ProjectAsset>();
  @$core.pragma('dart2js:noInline')
  static ProjectAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectAsset>(create);
  static ProjectAsset? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  @$pb.TagNumber(3)
  ProjectAssetUse get use => $_getN(2);
  @$pb.TagNumber(3)
  set use(ProjectAssetUse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUse() => $_has(2);
  @$pb.TagNumber(3)
  void clearUse() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get size => $_getI64(4);
  @$pb.TagNumber(5)
  set size($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearSize() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updatedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updatedAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $2.Request get request => $_getN(7);
  @$pb.TagNumber(8)
  set request($2.Request v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequest() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequest() => clearField(8);
  @$pb.TagNumber(8)
  $2.Request ensureRequest() => $_ensure(7);
}

class Project extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Project', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..e<ProjectAccess>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'access', $pb.PbFieldType.OE, defaultOrMaker: ProjectAccess.PROJECT_ACCESS_PRIVATE, valueOf: ProjectAccess.valueOf, enumValues: ProjectAccess.values)
    ..e<ProjectStatus>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ProjectStatus.PROJECT_STATUS_INACTIVE, valueOf: ProjectStatus.valueOf, enumValues: ProjectStatus.values)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ProjectAsset>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', subBuilder: ProjectAsset.create)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<ProjectAsset>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assets', $pb.PbFieldType.PM, subBuilder: ProjectAsset.create)
    ..hasRequiredFields = false
  ;

  Project._() : super();
  factory Project({
    $core.String? id,
    $core.String? title,
    $core.String? ownerId,
    ProjectAccess? access,
    ProjectStatus? status,
    $fixnum.Int64? size,
    ProjectAsset? file,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $core.Iterable<ProjectAsset>? assets,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (access != null) {
      _result.access = access;
    }
    if (status != null) {
      _result.status = status;
    }
    if (size != null) {
      _result.size = size;
    }
    if (file != null) {
      _result.file = file;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (assets != null) {
      _result.assets.addAll(assets);
    }
    return _result;
  }
  factory Project.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Project.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Project clone() => Project()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Project copyWith(void Function(Project) updates) => super.copyWith((message) => updates(message as Project)) as Project; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Project create() => Project._();
  Project createEmptyInstance() => create();
  static $pb.PbList<Project> createRepeated() => $pb.PbList<Project>();
  @$core.pragma('dart2js:noInline')
  static Project getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Project>(create);
  static Project? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ownerId => $_getSZ(2);
  @$pb.TagNumber(3)
  set ownerId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwnerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwnerId() => clearField(3);

  @$pb.TagNumber(4)
  ProjectAccess get access => $_getN(3);
  @$pb.TagNumber(4)
  set access(ProjectAccess v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccess() => clearField(4);

  @$pb.TagNumber(5)
  ProjectStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(ProjectStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get size => $_getI64(5);
  @$pb.TagNumber(6)
  set size($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSize() => $_has(5);
  @$pb.TagNumber(6)
  void clearSize() => clearField(6);

  @$pb.TagNumber(7)
  ProjectAsset get file => $_getN(6);
  @$pb.TagNumber(7)
  set file(ProjectAsset v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasFile() => $_has(6);
  @$pb.TagNumber(7)
  void clearFile() => clearField(7);
  @$pb.TagNumber(7)
  ProjectAsset ensureFile() => $_ensure(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createdAt => $_getI64(7);
  @$pb.TagNumber(8)
  set createdAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get updatedAt => $_getI64(8);
  @$pb.TagNumber(9)
  set updatedAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdatedAt() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<ProjectAsset> get assets => $_getList(9);
}

class CreateProjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateProjectRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..e<ProjectAccess>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'access', $pb.PbFieldType.OE, defaultOrMaker: ProjectAccess.PROJECT_ACCESS_PRIVATE, valueOf: ProjectAccess.valueOf, enumValues: ProjectAccess.values)
    ..e<ProjectStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ProjectStatus.PROJECT_STATUS_INACTIVE, valueOf: ProjectStatus.valueOf, enumValues: ProjectStatus.values)
    ..aOM<ProjectAsset>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', subBuilder: ProjectAsset.create)
    ..hasRequiredFields = false
  ;

  CreateProjectRequest._() : super();
  factory CreateProjectRequest({
    $core.String? title,
    $core.String? ownerId,
    ProjectAccess? access,
    ProjectStatus? status,
    ProjectAsset? file,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (access != null) {
      _result.access = access;
    }
    if (status != null) {
      _result.status = status;
    }
    if (file != null) {
      _result.file = file;
    }
    return _result;
  }
  factory CreateProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateProjectRequest clone() => CreateProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateProjectRequest copyWith(void Function(CreateProjectRequest) updates) => super.copyWith((message) => updates(message as CreateProjectRequest)) as CreateProjectRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProjectRequest create() => CreateProjectRequest._();
  CreateProjectRequest createEmptyInstance() => create();
  static $pb.PbList<CreateProjectRequest> createRepeated() => $pb.PbList<CreateProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateProjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateProjectRequest>(create);
  static CreateProjectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  ProjectAccess get access => $_getN(2);
  @$pb.TagNumber(3)
  set access(ProjectAccess v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccess() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccess() => clearField(3);

  @$pb.TagNumber(4)
  ProjectStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(ProjectStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  ProjectAsset get file => $_getN(4);
  @$pb.TagNumber(5)
  set file(ProjectAsset v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFile() => $_has(4);
  @$pb.TagNumber(5)
  void clearFile() => clearField(5);
  @$pb.TagNumber(5)
  ProjectAsset ensureFile() => $_ensure(4);
}

class UpdateProjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateProjectRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..e<ProjectAccess>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'access', $pb.PbFieldType.OE, defaultOrMaker: ProjectAccess.PROJECT_ACCESS_PRIVATE, valueOf: ProjectAccess.valueOf, enumValues: ProjectAccess.values)
    ..e<ProjectStatus>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ProjectStatus.PROJECT_STATUS_INACTIVE, valueOf: ProjectStatus.valueOf, enumValues: ProjectStatus.values)
    ..aOM<ProjectAsset>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', subBuilder: ProjectAsset.create)
    ..hasRequiredFields = false
  ;

  UpdateProjectRequest._() : super();
  factory UpdateProjectRequest({
    $core.String? id,
    $core.String? ownerId,
    $core.String? title,
    ProjectAccess? access,
    ProjectStatus? status,
    ProjectAsset? file,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (access != null) {
      _result.access = access;
    }
    if (status != null) {
      _result.status = status;
    }
    if (file != null) {
      _result.file = file;
    }
    return _result;
  }
  factory UpdateProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateProjectRequest clone() => UpdateProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateProjectRequest copyWith(void Function(UpdateProjectRequest) updates) => super.copyWith((message) => updates(message as UpdateProjectRequest)) as UpdateProjectRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateProjectRequest create() => UpdateProjectRequest._();
  UpdateProjectRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateProjectRequest> createRepeated() => $pb.PbList<UpdateProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateProjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProjectRequest>(create);
  static UpdateProjectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  ProjectAccess get access => $_getN(3);
  @$pb.TagNumber(4)
  set access(ProjectAccess v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccess() => clearField(4);

  @$pb.TagNumber(5)
  ProjectStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(ProjectStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  ProjectAsset get file => $_getN(5);
  @$pb.TagNumber(6)
  set file(ProjectAsset v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFile() => $_has(5);
  @$pb.TagNumber(6)
  void clearFile() => clearField(6);
  @$pb.TagNumber(6)
  ProjectAsset ensureFile() => $_ensure(5);
}

class ListProjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListProjectRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..hasRequiredFields = false
  ;

  ListProjectRequest._() : super();
  factory ListProjectRequest({
    $core.String? ownerId,
  }) {
    final _result = create();
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    return _result;
  }
  factory ListProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListProjectRequest clone() => ListProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListProjectRequest copyWith(void Function(ListProjectRequest) updates) => super.copyWith((message) => updates(message as ListProjectRequest)) as ListProjectRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListProjectRequest create() => ListProjectRequest._();
  ListProjectRequest createEmptyInstance() => create();
  static $pb.PbList<ListProjectRequest> createRepeated() => $pb.PbList<ListProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProjectRequest>(create);
  static ListProjectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnerId() => clearField(1);
}

class GetProjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetProjectRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..hasRequiredFields = false
  ;

  GetProjectRequest._() : super();
  factory GetProjectRequest({
    $core.String? id,
    $core.String? ownerId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    return _result;
  }
  factory GetProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetProjectRequest clone() => GetProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetProjectRequest copyWith(void Function(GetProjectRequest) updates) => super.copyWith((message) => updates(message as GetProjectRequest)) as GetProjectRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetProjectRequest create() => GetProjectRequest._();
  GetProjectRequest createEmptyInstance() => create();
  static $pb.PbList<GetProjectRequest> createRepeated() => $pb.PbList<GetProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static GetProjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProjectRequest>(create);
  static GetProjectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);
}

class DeleteProjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteProjectRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..hasRequiredFields = false
  ;

  DeleteProjectRequest._() : super();
  factory DeleteProjectRequest({
    $core.String? id,
    $core.String? ownerId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    return _result;
  }
  factory DeleteProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteProjectRequest clone() => DeleteProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteProjectRequest copyWith(void Function(DeleteProjectRequest) updates) => super.copyWith((message) => updates(message as DeleteProjectRequest)) as DeleteProjectRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteProjectRequest create() => DeleteProjectRequest._();
  DeleteProjectRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteProjectRequest> createRepeated() => $pb.PbList<DeleteProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteProjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteProjectRequest>(create);
  static DeleteProjectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);
}

class QueryAssetsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAssetsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'since', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'until', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startKey')
    ..pc<ProjectAssetUse>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'use', $pb.PbFieldType.KE, valueOf: ProjectAssetUse.valueOf, enumValues: ProjectAssetUse.values, defaultEnumValue: ProjectAssetUse.PROJECT_ASSET_USE_UNDEFINED)
    ..e<ProjectSortDir>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sortDir', $pb.PbFieldType.OE, defaultOrMaker: ProjectSortDir.PROJECT_SORT_DIR_UNSPECIFIED, valueOf: ProjectSortDir.valueOf, enumValues: ProjectSortDir.values)
    ..hasRequiredFields = false
  ;

  QueryAssetsRequest._() : super();
  factory QueryAssetsRequest({
    $core.String? id,
    $core.String? ownerId,
    $fixnum.Int64? since,
    $fixnum.Int64? until,
    $fixnum.Int64? limit,
    $core.String? startKey,
    $core.Iterable<ProjectAssetUse>? use,
    ProjectSortDir? sortDir,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (since != null) {
      _result.since = since;
    }
    if (until != null) {
      _result.until = until;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (startKey != null) {
      _result.startKey = startKey;
    }
    if (use != null) {
      _result.use.addAll(use);
    }
    if (sortDir != null) {
      _result.sortDir = sortDir;
    }
    return _result;
  }
  factory QueryAssetsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAssetsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAssetsRequest clone() => QueryAssetsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAssetsRequest copyWith(void Function(QueryAssetsRequest) updates) => super.copyWith((message) => updates(message as QueryAssetsRequest)) as QueryAssetsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAssetsRequest create() => QueryAssetsRequest._();
  QueryAssetsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAssetsRequest> createRepeated() => $pb.PbList<QueryAssetsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAssetsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAssetsRequest>(create);
  static QueryAssetsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get since => $_getI64(2);
  @$pb.TagNumber(3)
  set since($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSince() => $_has(2);
  @$pb.TagNumber(3)
  void clearSince() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get until => $_getI64(3);
  @$pb.TagNumber(4)
  set until($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUntil() => $_has(3);
  @$pb.TagNumber(4)
  void clearUntil() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get limit => $_getI64(4);
  @$pb.TagNumber(5)
  set limit($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimit() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get startKey => $_getSZ(5);
  @$pb.TagNumber(6)
  set startKey($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<ProjectAssetUse> get use => $_getList(6);

  @$pb.TagNumber(8)
  ProjectSortDir get sortDir => $_getN(7);
  @$pb.TagNumber(8)
  set sortDir(ProjectSortDir v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSortDir() => $_has(7);
  @$pb.TagNumber(8)
  void clearSortDir() => clearField(8);
}

class QueryAssetsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAssetsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<ProjectAsset>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assets', $pb.PbFieldType.PM, subBuilder: ProjectAsset.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastKey')
    ..hasRequiredFields = false
  ;

  QueryAssetsResponse._() : super();
  factory QueryAssetsResponse({
    $core.Iterable<ProjectAsset>? assets,
    $core.String? lastKey,
  }) {
    final _result = create();
    if (assets != null) {
      _result.assets.addAll(assets);
    }
    if (lastKey != null) {
      _result.lastKey = lastKey;
    }
    return _result;
  }
  factory QueryAssetsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAssetsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAssetsResponse clone() => QueryAssetsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAssetsResponse copyWith(void Function(QueryAssetsResponse) updates) => super.copyWith((message) => updates(message as QueryAssetsResponse)) as QueryAssetsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAssetsResponse create() => QueryAssetsResponse._();
  QueryAssetsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAssetsResponse> createRepeated() => $pb.PbList<QueryAssetsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAssetsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAssetsResponse>(create);
  static QueryAssetsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProjectAsset> get assets => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get lastKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastKey() => clearField(2);
}

class DeleteAssetsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAssetsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetIds')
    ..hasRequiredFields = false
  ;

  DeleteAssetsRequest._() : super();
  factory DeleteAssetsRequest({
    $core.String? id,
    $core.String? ownerId,
    $core.Iterable<$core.String>? assetIds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (assetIds != null) {
      _result.assetIds.addAll(assetIds);
    }
    return _result;
  }
  factory DeleteAssetsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAssetsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAssetsRequest clone() => DeleteAssetsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAssetsRequest copyWith(void Function(DeleteAssetsRequest) updates) => super.copyWith((message) => updates(message as DeleteAssetsRequest)) as DeleteAssetsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAssetsRequest create() => DeleteAssetsRequest._();
  DeleteAssetsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAssetsRequest> createRepeated() => $pb.PbList<DeleteAssetsRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteAssetsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAssetsRequest>(create);
  static DeleteAssetsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get assetIds => $_getList(2);
}

class DeleteAssetsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAssetsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assetIds')
    ..hasRequiredFields = false
  ;

  DeleteAssetsResponse._() : super();
  factory DeleteAssetsResponse({
    $core.String? id,
    $core.String? ownerId,
    $core.Iterable<$core.String>? assetIds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (assetIds != null) {
      _result.assetIds.addAll(assetIds);
    }
    return _result;
  }
  factory DeleteAssetsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAssetsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAssetsResponse clone() => DeleteAssetsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAssetsResponse copyWith(void Function(DeleteAssetsResponse) updates) => super.copyWith((message) => updates(message as DeleteAssetsResponse)) as DeleteAssetsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAssetsResponse create() => DeleteAssetsResponse._();
  DeleteAssetsResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAssetsResponse> createRepeated() => $pb.PbList<DeleteAssetsResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteAssetsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAssetsResponse>(create);
  static DeleteAssetsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get assetIds => $_getList(2);
}


///
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ProjectAccess extends $pb.ProtobufEnum {
  static const ProjectAccess PROJECT_ACCESS_PRIVATE = ProjectAccess._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_ACCESS_PRIVATE');
  static const ProjectAccess PROJECT_ACCESS_PUBLIC = ProjectAccess._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_ACCESS_PUBLIC');

  static const $core.List<ProjectAccess> values = <ProjectAccess> [
    PROJECT_ACCESS_PRIVATE,
    PROJECT_ACCESS_PUBLIC,
  ];

  static final $core.Map<$core.int, ProjectAccess> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProjectAccess? valueOf($core.int value) => _byValue[value];

  const ProjectAccess._($core.int v, $core.String n) : super(v, n);
}

class ProjectStatus extends $pb.ProtobufEnum {
  static const ProjectStatus PROJECT_STATUS_INACTIVE = ProjectStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_STATUS_INACTIVE');
  static const ProjectStatus PROJECT_STATUS_ACTIVE = ProjectStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_STATUS_ACTIVE');
  static const ProjectStatus PROJECT_STATUS_DELETED = ProjectStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_STATUS_DELETED');

  static const $core.List<ProjectStatus> values = <ProjectStatus> [
    PROJECT_STATUS_INACTIVE,
    PROJECT_STATUS_ACTIVE,
    PROJECT_STATUS_DELETED,
  ];

  static final $core.Map<$core.int, ProjectStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProjectStatus? valueOf($core.int value) => _byValue[value];

  const ProjectStatus._($core.int v, $core.String n) : super(v, n);
}

class ProjectAssetUse extends $pb.ProtobufEnum {
  static const ProjectAssetUse PROJECT_ASSET_USE_UNDEFINED = ProjectAssetUse._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_ASSET_USE_UNDEFINED');
  static const ProjectAssetUse PROJECT_ASSET_USE_INPUT = ProjectAssetUse._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_ASSET_USE_INPUT');
  static const ProjectAssetUse PROJECT_ASSET_USE_OUTPUT = ProjectAssetUse._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_ASSET_USE_OUTPUT');
  static const ProjectAssetUse PROJECT_ASSET_USE_INTERMEDIATE = ProjectAssetUse._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_ASSET_USE_INTERMEDIATE');
  static const ProjectAssetUse PROJECT_ASSET_USE_PROJECT = ProjectAssetUse._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_ASSET_USE_PROJECT');

  static const $core.List<ProjectAssetUse> values = <ProjectAssetUse> [
    PROJECT_ASSET_USE_UNDEFINED,
    PROJECT_ASSET_USE_INPUT,
    PROJECT_ASSET_USE_OUTPUT,
    PROJECT_ASSET_USE_INTERMEDIATE,
    PROJECT_ASSET_USE_PROJECT,
  ];

  static final $core.Map<$core.int, ProjectAssetUse> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProjectAssetUse? valueOf($core.int value) => _byValue[value];

  const ProjectAssetUse._($core.int v, $core.String n) : super(v, n);
}

class ProjectSortDir extends $pb.ProtobufEnum {
  static const ProjectSortDir PROJECT_SORT_DIR_UNSPECIFIED = ProjectSortDir._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_SORT_DIR_UNSPECIFIED');
  static const ProjectSortDir PROJECT_SORT_DIR_ASC = ProjectSortDir._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_SORT_DIR_ASC');
  static const ProjectSortDir PROJECT_SORT_DIR_DESC = ProjectSortDir._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROJECT_SORT_DIR_DESC');

  static const $core.List<ProjectSortDir> values = <ProjectSortDir> [
    PROJECT_SORT_DIR_UNSPECIFIED,
    PROJECT_SORT_DIR_ASC,
    PROJECT_SORT_DIR_DESC,
  ];

  static final $core.Map<$core.int, ProjectSortDir> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProjectSortDir? valueOf($core.int value) => _byValue[value];

  const ProjectSortDir._($core.int v, $core.String n) : super(v, n);
}


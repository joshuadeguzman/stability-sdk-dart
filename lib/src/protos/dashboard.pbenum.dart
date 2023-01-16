///
//  Generated code. Do not modify.
//  source: dashboard.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class OrganizationRole extends $pb.ProtobufEnum {
  static const OrganizationRole MEMBER = OrganizationRole._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MEMBER');
  static const OrganizationRole ACCOUNTANT = OrganizationRole._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCOUNTANT');
  static const OrganizationRole OWNER = OrganizationRole._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OWNER');

  static const $core.List<OrganizationRole> values = <OrganizationRole> [
    MEMBER,
    ACCOUNTANT,
    OWNER,
  ];

  static final $core.Map<$core.int, OrganizationRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrganizationRole? valueOf($core.int value) => _byValue[value];

  const OrganizationRole._($core.int v, $core.String n) : super(v, n);
}


///
//  Generated code. Do not modify.
//  source: dashboard.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'dashboard.pbenum.dart';

export 'dashboard.pbenum.dart';

class OrganizationMember extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrganizationMember', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOM<Organization>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organization', subBuilder: Organization.create)
    ..aOM<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..e<OrganizationRole>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: OrganizationRole.MEMBER, valueOf: OrganizationRole.valueOf, enumValues: OrganizationRole.values)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDefault')
    ..hasRequiredFields = false
  ;

  OrganizationMember._() : super();
  factory OrganizationMember({
    Organization? organization,
    User? user,
    OrganizationRole? role,
    $core.bool? isDefault,
  }) {
    final _result = create();
    if (organization != null) {
      _result.organization = organization;
    }
    if (user != null) {
      _result.user = user;
    }
    if (role != null) {
      _result.role = role;
    }
    if (isDefault != null) {
      _result.isDefault = isDefault;
    }
    return _result;
  }
  factory OrganizationMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganizationMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganizationMember clone() => OrganizationMember()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganizationMember copyWith(void Function(OrganizationMember) updates) => super.copyWith((message) => updates(message as OrganizationMember)) as OrganizationMember; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrganizationMember create() => OrganizationMember._();
  OrganizationMember createEmptyInstance() => create();
  static $pb.PbList<OrganizationMember> createRepeated() => $pb.PbList<OrganizationMember>();
  @$core.pragma('dart2js:noInline')
  static OrganizationMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganizationMember>(create);
  static OrganizationMember? _defaultInstance;

  @$pb.TagNumber(1)
  Organization get organization => $_getN(0);
  @$pb.TagNumber(1)
  set organization(Organization v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganization() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganization() => clearField(1);
  @$pb.TagNumber(1)
  Organization ensureOrganization() => $_ensure(0);

  @$pb.TagNumber(2)
  User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  OrganizationRole get role => $_getN(2);
  @$pb.TagNumber(3)
  set role(OrganizationRole v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isDefault => $_getBF(3);
  @$pb.TagNumber(4)
  set isDefault($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsDefault() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsDefault() => clearField(4);
}

class OrganizationGrant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrganizationGrant', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountGranted', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountUsed', $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiresAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantedAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  OrganizationGrant._() : super();
  factory OrganizationGrant({
    $core.double? amountGranted,
    $core.double? amountUsed,
    $fixnum.Int64? expiresAt,
    $fixnum.Int64? grantedAt,
  }) {
    final _result = create();
    if (amountGranted != null) {
      _result.amountGranted = amountGranted;
    }
    if (amountUsed != null) {
      _result.amountUsed = amountUsed;
    }
    if (expiresAt != null) {
      _result.expiresAt = expiresAt;
    }
    if (grantedAt != null) {
      _result.grantedAt = grantedAt;
    }
    return _result;
  }
  factory OrganizationGrant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganizationGrant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganizationGrant clone() => OrganizationGrant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganizationGrant copyWith(void Function(OrganizationGrant) updates) => super.copyWith((message) => updates(message as OrganizationGrant)) as OrganizationGrant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrganizationGrant create() => OrganizationGrant._();
  OrganizationGrant createEmptyInstance() => create();
  static $pb.PbList<OrganizationGrant> createRepeated() => $pb.PbList<OrganizationGrant>();
  @$core.pragma('dart2js:noInline')
  static OrganizationGrant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganizationGrant>(create);
  static OrganizationGrant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get amountGranted => $_getN(0);
  @$pb.TagNumber(1)
  set amountGranted($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmountGranted() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmountGranted() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amountUsed => $_getN(1);
  @$pb.TagNumber(2)
  set amountUsed($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmountUsed() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmountUsed() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expiresAt => $_getI64(2);
  @$pb.TagNumber(3)
  set expiresAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpiresAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpiresAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get grantedAt => $_getI64(3);
  @$pb.TagNumber(4)
  set grantedAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGrantedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrantedAt() => clearField(4);
}

class OrganizationPaymentInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrganizationPaymentInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance', $pb.PbFieldType.OD)
    ..pc<OrganizationGrant>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grants', $pb.PbFieldType.PM, subBuilder: OrganizationGrant.create)
    ..hasRequiredFields = false
  ;

  OrganizationPaymentInfo._() : super();
  factory OrganizationPaymentInfo({
    $core.double? balance,
    $core.Iterable<OrganizationGrant>? grants,
  }) {
    final _result = create();
    if (balance != null) {
      _result.balance = balance;
    }
    if (grants != null) {
      _result.grants.addAll(grants);
    }
    return _result;
  }
  factory OrganizationPaymentInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganizationPaymentInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganizationPaymentInfo clone() => OrganizationPaymentInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganizationPaymentInfo copyWith(void Function(OrganizationPaymentInfo) updates) => super.copyWith((message) => updates(message as OrganizationPaymentInfo)) as OrganizationPaymentInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrganizationPaymentInfo create() => OrganizationPaymentInfo._();
  OrganizationPaymentInfo createEmptyInstance() => create();
  static $pb.PbList<OrganizationPaymentInfo> createRepeated() => $pb.PbList<OrganizationPaymentInfo>();
  @$core.pragma('dart2js:noInline')
  static OrganizationPaymentInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganizationPaymentInfo>(create);
  static OrganizationPaymentInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get balance => $_getN(0);
  @$pb.TagNumber(1)
  set balance($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<OrganizationGrant> get grants => $_getList(1);
}

class OrganizationAutoCharge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrganizationAutoCharge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabled')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  OrganizationAutoCharge._() : super();
  factory OrganizationAutoCharge({
    $core.bool? enabled,
    $core.String? id,
    $fixnum.Int64? createdAt,
  }) {
    final _result = create();
    if (enabled != null) {
      _result.enabled = enabled;
    }
    if (id != null) {
      _result.id = id;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory OrganizationAutoCharge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganizationAutoCharge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganizationAutoCharge clone() => OrganizationAutoCharge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganizationAutoCharge copyWith(void Function(OrganizationAutoCharge) updates) => super.copyWith((message) => updates(message as OrganizationAutoCharge)) as OrganizationAutoCharge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrganizationAutoCharge create() => OrganizationAutoCharge._();
  OrganizationAutoCharge createEmptyInstance() => create();
  static $pb.PbList<OrganizationAutoCharge> createRepeated() => $pb.PbList<OrganizationAutoCharge>();
  @$core.pragma('dart2js:noInline')
  static OrganizationAutoCharge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganizationAutoCharge>(create);
  static OrganizationAutoCharge? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdAt => $_getI64(2);
  @$pb.TagNumber(3)
  set createdAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => clearField(3);
}

class Organization extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Organization', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<OrganizationMember>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: OrganizationMember.create)
    ..aOM<OrganizationPaymentInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentInfo', subBuilder: OrganizationPaymentInfo.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stripeCustomerId')
    ..aOM<OrganizationAutoCharge>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoCharge', subBuilder: OrganizationAutoCharge.create)
    ..hasRequiredFields = false
  ;

  Organization._() : super();
  factory Organization({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.Iterable<OrganizationMember>? members,
    OrganizationPaymentInfo? paymentInfo,
    $core.String? stripeCustomerId,
    OrganizationAutoCharge? autoCharge,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    if (paymentInfo != null) {
      _result.paymentInfo = paymentInfo;
    }
    if (stripeCustomerId != null) {
      _result.stripeCustomerId = stripeCustomerId;
    }
    if (autoCharge != null) {
      _result.autoCharge = autoCharge;
    }
    return _result;
  }
  factory Organization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Organization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Organization clone() => Organization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Organization copyWith(void Function(Organization) updates) => super.copyWith((message) => updates(message as Organization)) as Organization; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Organization create() => Organization._();
  Organization createEmptyInstance() => create();
  static $pb.PbList<Organization> createRepeated() => $pb.PbList<Organization>();
  @$core.pragma('dart2js:noInline')
  static Organization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Organization>(create);
  static Organization? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<OrganizationMember> get members => $_getList(3);

  @$pb.TagNumber(5)
  OrganizationPaymentInfo get paymentInfo => $_getN(4);
  @$pb.TagNumber(5)
  set paymentInfo(OrganizationPaymentInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPaymentInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearPaymentInfo() => clearField(5);
  @$pb.TagNumber(5)
  OrganizationPaymentInfo ensurePaymentInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get stripeCustomerId => $_getSZ(5);
  @$pb.TagNumber(6)
  set stripeCustomerId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStripeCustomerId() => $_has(5);
  @$pb.TagNumber(6)
  void clearStripeCustomerId() => clearField(6);

  @$pb.TagNumber(7)
  OrganizationAutoCharge get autoCharge => $_getN(6);
  @$pb.TagNumber(7)
  set autoCharge(OrganizationAutoCharge v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAutoCharge() => $_has(6);
  @$pb.TagNumber(7)
  void clearAutoCharge() => clearField(7);
  @$pb.TagNumber(7)
  OrganizationAutoCharge ensureAutoCharge() => $_ensure(6);
}

class APIKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'APIKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSecret')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  APIKey._() : super();
  factory APIKey({
    $core.String? key,
    $core.bool? isSecret,
    $fixnum.Int64? createdAt,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (isSecret != null) {
      _result.isSecret = isSecret;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory APIKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIKey clone() => APIKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIKey copyWith(void Function(APIKey) updates) => super.copyWith((message) => updates(message as APIKey)) as APIKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static APIKey create() => APIKey._();
  APIKey createEmptyInstance() => create();
  static $pb.PbList<APIKey> createRepeated() => $pb.PbList<APIKey>();
  @$core.pragma('dart2js:noInline')
  static APIKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIKey>(create);
  static APIKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isSecret => $_getBF(1);
  @$pb.TagNumber(2)
  set isSecret($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsSecret() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdAt => $_getI64(2);
  @$pb.TagNumber(3)
  set createdAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => clearField(3);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profilePicture')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..pc<OrganizationMember>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizations', $pb.PbFieldType.PM, subBuilder: OrganizationMember.create)
    ..pc<APIKey>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiKeys', $pb.PbFieldType.PM, subBuilder: APIKey.create)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailVerified')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String? id,
    $core.String? authId,
    $core.String? profilePicture,
    $core.String? email,
    $core.Iterable<OrganizationMember>? organizations,
    $core.Iterable<APIKey>? apiKeys,
    $fixnum.Int64? createdAt,
    $core.bool? emailVerified,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (authId != null) {
      _result.authId = authId;
    }
    if (profilePicture != null) {
      _result.profilePicture = profilePicture;
    }
    if (email != null) {
      _result.email = email;
    }
    if (organizations != null) {
      _result.organizations.addAll(organizations);
    }
    if (apiKeys != null) {
      _result.apiKeys.addAll(apiKeys);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (emailVerified != null) {
      _result.emailVerified = emailVerified;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get authId => $_getSZ(1);
  @$pb.TagNumber(2)
  set authId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get profilePicture => $_getSZ(2);
  @$pb.TagNumber(3)
  set profilePicture($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfilePicture() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfilePicture() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<OrganizationMember> get organizations => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<APIKey> get apiKeys => $_getList(5);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(8)
  set createdAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(8)
  void clearCreatedAt() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get emailVerified => $_getBF(7);
  @$pb.TagNumber(9)
  set emailVerified($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasEmailVerified() => $_has(7);
  @$pb.TagNumber(9)
  void clearEmailVerified() => clearField(9);
}

class CostData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CostData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountTokens', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountCredits', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  CostData._() : super();
  factory CostData({
    $core.int? amountTokens,
    $core.double? amountCredits,
  }) {
    final _result = create();
    if (amountTokens != null) {
      _result.amountTokens = amountTokens;
    }
    if (amountCredits != null) {
      _result.amountCredits = amountCredits;
    }
    return _result;
  }
  factory CostData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CostData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CostData clone() => CostData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CostData copyWith(void Function(CostData) updates) => super.copyWith((message) => updates(message as CostData)) as CostData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CostData create() => CostData._();
  CostData createEmptyInstance() => create();
  static $pb.PbList<CostData> createRepeated() => $pb.PbList<CostData>();
  @$core.pragma('dart2js:noInline')
  static CostData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CostData>(create);
  static CostData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get amountTokens => $_getIZ(0);
  @$pb.TagNumber(1)
  set amountTokens($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmountTokens() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmountTokens() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amountCredits => $_getN(1);
  @$pb.TagNumber(2)
  set amountCredits($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmountCredits() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmountCredits() => clearField(2);
}

class UsageMetric extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UsageMetric', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operation')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'engine')
    ..aOM<CostData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputCost', subBuilder: CostData.create)
    ..aOM<CostData>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputCost', subBuilder: CostData.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aggregationTimestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  UsageMetric._() : super();
  factory UsageMetric({
    $core.String? operation,
    $core.String? engine,
    CostData? inputCost,
    CostData? outputCost,
    $core.String? user,
    $fixnum.Int64? aggregationTimestamp,
  }) {
    final _result = create();
    if (operation != null) {
      _result.operation = operation;
    }
    if (engine != null) {
      _result.engine = engine;
    }
    if (inputCost != null) {
      _result.inputCost = inputCost;
    }
    if (outputCost != null) {
      _result.outputCost = outputCost;
    }
    if (user != null) {
      _result.user = user;
    }
    if (aggregationTimestamp != null) {
      _result.aggregationTimestamp = aggregationTimestamp;
    }
    return _result;
  }
  factory UsageMetric.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UsageMetric.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UsageMetric clone() => UsageMetric()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UsageMetric copyWith(void Function(UsageMetric) updates) => super.copyWith((message) => updates(message as UsageMetric)) as UsageMetric; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UsageMetric create() => UsageMetric._();
  UsageMetric createEmptyInstance() => create();
  static $pb.PbList<UsageMetric> createRepeated() => $pb.PbList<UsageMetric>();
  @$core.pragma('dart2js:noInline')
  static UsageMetric getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsageMetric>(create);
  static UsageMetric? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operation => $_getSZ(0);
  @$pb.TagNumber(1)
  set operation($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get engine => $_getSZ(1);
  @$pb.TagNumber(2)
  set engine($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEngine() => $_has(1);
  @$pb.TagNumber(2)
  void clearEngine() => clearField(2);

  @$pb.TagNumber(3)
  CostData get inputCost => $_getN(2);
  @$pb.TagNumber(3)
  set inputCost(CostData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInputCost() => $_has(2);
  @$pb.TagNumber(3)
  void clearInputCost() => clearField(3);
  @$pb.TagNumber(3)
  CostData ensureInputCost() => $_ensure(2);

  @$pb.TagNumber(4)
  CostData get outputCost => $_getN(3);
  @$pb.TagNumber(4)
  set outputCost(CostData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutputCost() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutputCost() => clearField(4);
  @$pb.TagNumber(4)
  CostData ensureOutputCost() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get user => $_getSZ(4);
  @$pb.TagNumber(5)
  set user($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(4);
  @$pb.TagNumber(5)
  void clearUser() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get aggregationTimestamp => $_getI64(5);
  @$pb.TagNumber(6)
  set aggregationTimestamp($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAggregationTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearAggregationTimestamp() => clearField(6);
}

class CostTotal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CostTotal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountTokens', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountCredits', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  CostTotal._() : super();
  factory CostTotal({
    $core.int? amountTokens,
    $core.double? amountCredits,
  }) {
    final _result = create();
    if (amountTokens != null) {
      _result.amountTokens = amountTokens;
    }
    if (amountCredits != null) {
      _result.amountCredits = amountCredits;
    }
    return _result;
  }
  factory CostTotal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CostTotal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CostTotal clone() => CostTotal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CostTotal copyWith(void Function(CostTotal) updates) => super.copyWith((message) => updates(message as CostTotal)) as CostTotal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CostTotal create() => CostTotal._();
  CostTotal createEmptyInstance() => create();
  static $pb.PbList<CostTotal> createRepeated() => $pb.PbList<CostTotal>();
  @$core.pragma('dart2js:noInline')
  static CostTotal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CostTotal>(create);
  static CostTotal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get amountTokens => $_getIZ(0);
  @$pb.TagNumber(1)
  set amountTokens($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmountTokens() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmountTokens() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amountCredits => $_getN(1);
  @$pb.TagNumber(2)
  set amountCredits($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmountCredits() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmountCredits() => clearField(2);
}

class TotalMetricsData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TotalMetricsData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOM<CostTotal>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputTotal', subBuilder: CostTotal.create)
    ..aOM<CostTotal>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputTotal', subBuilder: CostTotal.create)
    ..hasRequiredFields = false
  ;

  TotalMetricsData._() : super();
  factory TotalMetricsData({
    CostTotal? inputTotal,
    CostTotal? outputTotal,
  }) {
    final _result = create();
    if (inputTotal != null) {
      _result.inputTotal = inputTotal;
    }
    if (outputTotal != null) {
      _result.outputTotal = outputTotal;
    }
    return _result;
  }
  factory TotalMetricsData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TotalMetricsData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TotalMetricsData clone() => TotalMetricsData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TotalMetricsData copyWith(void Function(TotalMetricsData) updates) => super.copyWith((message) => updates(message as TotalMetricsData)) as TotalMetricsData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TotalMetricsData create() => TotalMetricsData._();
  TotalMetricsData createEmptyInstance() => create();
  static $pb.PbList<TotalMetricsData> createRepeated() => $pb.PbList<TotalMetricsData>();
  @$core.pragma('dart2js:noInline')
  static TotalMetricsData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TotalMetricsData>(create);
  static TotalMetricsData? _defaultInstance;

  @$pb.TagNumber(1)
  CostTotal get inputTotal => $_getN(0);
  @$pb.TagNumber(1)
  set inputTotal(CostTotal v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInputTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearInputTotal() => clearField(1);
  @$pb.TagNumber(1)
  CostTotal ensureInputTotal() => $_ensure(0);

  @$pb.TagNumber(2)
  CostTotal get outputTotal => $_getN(1);
  @$pb.TagNumber(2)
  set outputTotal(CostTotal v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutputTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutputTotal() => clearField(2);
  @$pb.TagNumber(2)
  CostTotal ensureOutputTotal() => $_ensure(1);
}

class Metrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Metrics', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<UsageMetric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metrics', $pb.PbFieldType.PM, subBuilder: UsageMetric.create)
    ..aOM<TotalMetricsData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'total', subBuilder: TotalMetricsData.create)
    ..hasRequiredFields = false
  ;

  Metrics._() : super();
  factory Metrics({
    $core.Iterable<UsageMetric>? metrics,
    TotalMetricsData? total,
  }) {
    final _result = create();
    if (metrics != null) {
      _result.metrics.addAll(metrics);
    }
    if (total != null) {
      _result.total = total;
    }
    return _result;
  }
  factory Metrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metrics clone() => Metrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metrics copyWith(void Function(Metrics) updates) => super.copyWith((message) => updates(message as Metrics)) as Metrics; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metrics create() => Metrics._();
  Metrics createEmptyInstance() => create();
  static $pb.PbList<Metrics> createRepeated() => $pb.PbList<Metrics>();
  @$core.pragma('dart2js:noInline')
  static Metrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metrics>(create);
  static Metrics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UsageMetric> get metrics => $_getList(0);

  @$pb.TagNumber(2)
  TotalMetricsData get total => $_getN(1);
  @$pb.TagNumber(2)
  set total(TotalMetricsData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
  @$pb.TagNumber(2)
  TotalMetricsData ensureTotal() => $_ensure(1);
}

class EmptyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyRequest._() : super();
  factory EmptyRequest() => create();
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest? _defaultInstance;
}

class GetOrganizationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrganizationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetOrganizationRequest._() : super();
  factory GetOrganizationRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationRequest clone() => GetOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationRequest copyWith(void Function(GetOrganizationRequest) updates) => super.copyWith((message) => updates(message as GetOrganizationRequest)) as GetOrganizationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOrganizationRequest create() => GetOrganizationRequest._();
  GetOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationRequest> createRepeated() => $pb.PbList<GetOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationRequest>(create);
  static GetOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetMetricsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMetricsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeFrom', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeTo', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includePerRequestMetrics')
    ..hasRequiredFields = false
  ;

  GetMetricsRequest._() : super();
  factory GetMetricsRequest({
    $core.String? organizationId,
    $core.String? userId,
    $fixnum.Int64? rangeFrom,
    $fixnum.Int64? rangeTo,
    $core.bool? includePerRequestMetrics,
  }) {
    final _result = create();
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (rangeFrom != null) {
      _result.rangeFrom = rangeFrom;
    }
    if (rangeTo != null) {
      _result.rangeTo = rangeTo;
    }
    if (includePerRequestMetrics != null) {
      _result.includePerRequestMetrics = includePerRequestMetrics;
    }
    return _result;
  }
  factory GetMetricsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMetricsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMetricsRequest clone() => GetMetricsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMetricsRequest copyWith(void Function(GetMetricsRequest) updates) => super.copyWith((message) => updates(message as GetMetricsRequest)) as GetMetricsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMetricsRequest create() => GetMetricsRequest._();
  GetMetricsRequest createEmptyInstance() => create();
  static $pb.PbList<GetMetricsRequest> createRepeated() => $pb.PbList<GetMetricsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMetricsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMetricsRequest>(create);
  static GetMetricsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get rangeFrom => $_getI64(2);
  @$pb.TagNumber(3)
  set rangeFrom($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRangeFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearRangeFrom() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rangeTo => $_getI64(3);
  @$pb.TagNumber(4)
  set rangeTo($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRangeTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearRangeTo() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get includePerRequestMetrics => $_getBF(4);
  @$pb.TagNumber(5)
  set includePerRequestMetrics($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIncludePerRequestMetrics() => $_has(4);
  @$pb.TagNumber(5)
  void clearIncludePerRequestMetrics() => clearField(5);
}

class APIKeyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'APIKeyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSecret')
    ..hasRequiredFields = false
  ;

  APIKeyRequest._() : super();
  factory APIKeyRequest({
    $core.bool? isSecret,
  }) {
    final _result = create();
    if (isSecret != null) {
      _result.isSecret = isSecret;
    }
    return _result;
  }
  factory APIKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIKeyRequest clone() => APIKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIKeyRequest copyWith(void Function(APIKeyRequest) updates) => super.copyWith((message) => updates(message as APIKeyRequest)) as APIKeyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static APIKeyRequest create() => APIKeyRequest._();
  APIKeyRequest createEmptyInstance() => create();
  static $pb.PbList<APIKeyRequest> createRepeated() => $pb.PbList<APIKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static APIKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIKeyRequest>(create);
  static APIKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSecret => $_getBF(0);
  @$pb.TagNumber(1)
  set isSecret($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSecret() => clearField(1);
}

class APIKeyFindRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'APIKeyFindRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  APIKeyFindRequest._() : super();
  factory APIKeyFindRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory APIKeyFindRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIKeyFindRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIKeyFindRequest clone() => APIKeyFindRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIKeyFindRequest copyWith(void Function(APIKeyFindRequest) updates) => super.copyWith((message) => updates(message as APIKeyFindRequest)) as APIKeyFindRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static APIKeyFindRequest create() => APIKeyFindRequest._();
  APIKeyFindRequest createEmptyInstance() => create();
  static $pb.PbList<APIKeyFindRequest> createRepeated() => $pb.PbList<APIKeyFindRequest>();
  @$core.pragma('dart2js:noInline')
  static APIKeyFindRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIKeyFindRequest>(create);
  static APIKeyFindRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateDefaultOrganizationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateDefaultOrganizationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..hasRequiredFields = false
  ;

  UpdateDefaultOrganizationRequest._() : super();
  factory UpdateDefaultOrganizationRequest({
    $core.String? organizationId,
  }) {
    final _result = create();
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    return _result;
  }
  factory UpdateDefaultOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateDefaultOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateDefaultOrganizationRequest clone() => UpdateDefaultOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateDefaultOrganizationRequest copyWith(void Function(UpdateDefaultOrganizationRequest) updates) => super.copyWith((message) => updates(message as UpdateDefaultOrganizationRequest)) as UpdateDefaultOrganizationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateDefaultOrganizationRequest create() => UpdateDefaultOrganizationRequest._();
  UpdateDefaultOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateDefaultOrganizationRequest> createRepeated() => $pb.PbList<UpdateDefaultOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateDefaultOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateDefaultOrganizationRequest>(create);
  static UpdateDefaultOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);
}

class ClientSettings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientSettings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settings', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ClientSettings._() : super();
  factory ClientSettings({
    $core.List<$core.int>? settings,
  }) {
    final _result = create();
    if (settings != null) {
      _result.settings = settings;
    }
    return _result;
  }
  factory ClientSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientSettings clone() => ClientSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientSettings copyWith(void Function(ClientSettings) updates) => super.copyWith((message) => updates(message as ClientSettings)) as ClientSettings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientSettings create() => ClientSettings._();
  ClientSettings createEmptyInstance() => create();
  static $pb.PbList<ClientSettings> createRepeated() => $pb.PbList<ClientSettings>();
  @$core.pragma('dart2js:noInline')
  static ClientSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientSettings>(create);
  static ClientSettings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get settings => $_getN(0);
  @$pb.TagNumber(1)
  set settings($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSettings() => $_has(0);
  @$pb.TagNumber(1)
  void clearSettings() => clearField(1);
}

class CreateAutoChargeIntentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAutoChargeIntentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'monthlyMaximum', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minimumValue', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountCredits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  CreateAutoChargeIntentRequest._() : super();
  factory CreateAutoChargeIntentRequest({
    $core.String? organizationId,
    $fixnum.Int64? monthlyMaximum,
    $fixnum.Int64? minimumValue,
    $fixnum.Int64? amountCredits,
  }) {
    final _result = create();
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (monthlyMaximum != null) {
      _result.monthlyMaximum = monthlyMaximum;
    }
    if (minimumValue != null) {
      _result.minimumValue = minimumValue;
    }
    if (amountCredits != null) {
      _result.amountCredits = amountCredits;
    }
    return _result;
  }
  factory CreateAutoChargeIntentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAutoChargeIntentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAutoChargeIntentRequest clone() => CreateAutoChargeIntentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAutoChargeIntentRequest copyWith(void Function(CreateAutoChargeIntentRequest) updates) => super.copyWith((message) => updates(message as CreateAutoChargeIntentRequest)) as CreateAutoChargeIntentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAutoChargeIntentRequest create() => CreateAutoChargeIntentRequest._();
  CreateAutoChargeIntentRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAutoChargeIntentRequest> createRepeated() => $pb.PbList<CreateAutoChargeIntentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAutoChargeIntentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAutoChargeIntentRequest>(create);
  static CreateAutoChargeIntentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get monthlyMaximum => $_getI64(1);
  @$pb.TagNumber(2)
  set monthlyMaximum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMonthlyMaximum() => $_has(1);
  @$pb.TagNumber(2)
  void clearMonthlyMaximum() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get minimumValue => $_getI64(2);
  @$pb.TagNumber(3)
  set minimumValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinimumValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinimumValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get amountCredits => $_getI64(3);
  @$pb.TagNumber(4)
  set amountCredits($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmountCredits() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmountCredits() => clearField(4);
}

class CreateChargeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateChargeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..hasRequiredFields = false
  ;

  CreateChargeRequest._() : super();
  factory CreateChargeRequest({
    $fixnum.Int64? amount,
    $core.String? organizationId,
  }) {
    final _result = create();
    if (amount != null) {
      _result.amount = amount;
    }
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    return _result;
  }
  factory CreateChargeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateChargeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateChargeRequest clone() => CreateChargeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateChargeRequest copyWith(void Function(CreateChargeRequest) updates) => super.copyWith((message) => updates(message as CreateChargeRequest)) as CreateChargeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateChargeRequest create() => CreateChargeRequest._();
  CreateChargeRequest createEmptyInstance() => create();
  static $pb.PbList<CreateChargeRequest> createRepeated() => $pb.PbList<CreateChargeRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateChargeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateChargeRequest>(create);
  static CreateChargeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get organizationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set organizationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrganizationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrganizationId() => clearField(2);
}

class GetChargesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetChargesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeFrom', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeTo', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetChargesRequest._() : super();
  factory GetChargesRequest({
    $core.String? organizationId,
    $fixnum.Int64? rangeFrom,
    $fixnum.Int64? rangeTo,
  }) {
    final _result = create();
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (rangeFrom != null) {
      _result.rangeFrom = rangeFrom;
    }
    if (rangeTo != null) {
      _result.rangeTo = rangeTo;
    }
    return _result;
  }
  factory GetChargesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChargesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChargesRequest clone() => GetChargesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChargesRequest copyWith(void Function(GetChargesRequest) updates) => super.copyWith((message) => updates(message as GetChargesRequest)) as GetChargesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChargesRequest create() => GetChargesRequest._();
  GetChargesRequest createEmptyInstance() => create();
  static $pb.PbList<GetChargesRequest> createRepeated() => $pb.PbList<GetChargesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetChargesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChargesRequest>(create);
  static GetChargesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rangeFrom => $_getI64(1);
  @$pb.TagNumber(2)
  set rangeFrom($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRangeFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearRangeFrom() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get rangeTo => $_getI64(2);
  @$pb.TagNumber(3)
  set rangeTo($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRangeTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearRangeTo() => clearField(3);
}

class Charge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Charge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiptLink')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentLink')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountCredits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Charge._() : super();
  factory Charge({
    $core.String? id,
    $core.bool? paid,
    $core.String? receiptLink,
    $core.String? paymentLink,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? amountCredits,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (paid != null) {
      _result.paid = paid;
    }
    if (receiptLink != null) {
      _result.receiptLink = receiptLink;
    }
    if (paymentLink != null) {
      _result.paymentLink = paymentLink;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (amountCredits != null) {
      _result.amountCredits = amountCredits;
    }
    return _result;
  }
  factory Charge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Charge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Charge clone() => Charge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Charge copyWith(void Function(Charge) updates) => super.copyWith((message) => updates(message as Charge)) as Charge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Charge create() => Charge._();
  Charge createEmptyInstance() => create();
  static $pb.PbList<Charge> createRepeated() => $pb.PbList<Charge>();
  @$core.pragma('dart2js:noInline')
  static Charge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Charge>(create);
  static Charge? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get paid => $_getBF(1);
  @$pb.TagNumber(2)
  set paid($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaid() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get receiptLink => $_getSZ(2);
  @$pb.TagNumber(3)
  set receiptLink($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceiptLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiptLink() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get paymentLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set paymentLink($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaymentLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaymentLink() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get amountCredits => $_getI64(5);
  @$pb.TagNumber(6)
  set amountCredits($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmountCredits() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmountCredits() => clearField(6);
}

class Charges extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Charges', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<Charge>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'charges', $pb.PbFieldType.PM, subBuilder: Charge.create)
    ..hasRequiredFields = false
  ;

  Charges._() : super();
  factory Charges({
    $core.Iterable<Charge>? charges,
  }) {
    final _result = create();
    if (charges != null) {
      _result.charges.addAll(charges);
    }
    return _result;
  }
  factory Charges.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Charges.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Charges clone() => Charges()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Charges copyWith(void Function(Charges) updates) => super.copyWith((message) => updates(message as Charges)) as Charges; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Charges create() => Charges._();
  Charges createEmptyInstance() => create();
  static $pb.PbList<Charges> createRepeated() => $pb.PbList<Charges>();
  @$core.pragma('dart2js:noInline')
  static Charges getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Charges>(create);
  static Charges? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Charge> get charges => $_getList(0);
}

class GetAutoChargeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAutoChargeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..hasRequiredFields = false
  ;

  GetAutoChargeRequest._() : super();
  factory GetAutoChargeRequest({
    $core.String? organizationId,
  }) {
    final _result = create();
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    return _result;
  }
  factory GetAutoChargeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAutoChargeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAutoChargeRequest clone() => GetAutoChargeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAutoChargeRequest copyWith(void Function(GetAutoChargeRequest) updates) => super.copyWith((message) => updates(message as GetAutoChargeRequest)) as GetAutoChargeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAutoChargeRequest create() => GetAutoChargeRequest._();
  GetAutoChargeRequest createEmptyInstance() => create();
  static $pb.PbList<GetAutoChargeRequest> createRepeated() => $pb.PbList<GetAutoChargeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAutoChargeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAutoChargeRequest>(create);
  static GetAutoChargeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);
}

class AutoChargeIntent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AutoChargeIntent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentLink')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'monthlyMaximum', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minimumValue', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountCredits', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AutoChargeIntent._() : super();
  factory AutoChargeIntent({
    $core.String? id,
    $core.String? paymentLink,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? monthlyMaximum,
    $fixnum.Int64? minimumValue,
    $fixnum.Int64? amountCredits,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (paymentLink != null) {
      _result.paymentLink = paymentLink;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (monthlyMaximum != null) {
      _result.monthlyMaximum = monthlyMaximum;
    }
    if (minimumValue != null) {
      _result.minimumValue = minimumValue;
    }
    if (amountCredits != null) {
      _result.amountCredits = amountCredits;
    }
    return _result;
  }
  factory AutoChargeIntent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoChargeIntent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AutoChargeIntent clone() => AutoChargeIntent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AutoChargeIntent copyWith(void Function(AutoChargeIntent) updates) => super.copyWith((message) => updates(message as AutoChargeIntent)) as AutoChargeIntent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoChargeIntent create() => AutoChargeIntent._();
  AutoChargeIntent createEmptyInstance() => create();
  static $pb.PbList<AutoChargeIntent> createRepeated() => $pb.PbList<AutoChargeIntent>();
  @$core.pragma('dart2js:noInline')
  static AutoChargeIntent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoChargeIntent>(create);
  static AutoChargeIntent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paymentLink => $_getSZ(1);
  @$pb.TagNumber(2)
  set paymentLink($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentLink() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdAt => $_getI64(2);
  @$pb.TagNumber(3)
  set createdAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get monthlyMaximum => $_getI64(3);
  @$pb.TagNumber(4)
  set monthlyMaximum($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMonthlyMaximum() => $_has(3);
  @$pb.TagNumber(4)
  void clearMonthlyMaximum() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get minimumValue => $_getI64(4);
  @$pb.TagNumber(5)
  set minimumValue($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinimumValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinimumValue() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get amountCredits => $_getI64(5);
  @$pb.TagNumber(6)
  set amountCredits($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmountCredits() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmountCredits() => clearField(6);
}

class UpdateUserInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  UpdateUserInfoRequest._() : super();
  factory UpdateUserInfoRequest({
    $core.String? email,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory UpdateUserInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserInfoRequest clone() => UpdateUserInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserInfoRequest copyWith(void Function(UpdateUserInfoRequest) updates) => super.copyWith((message) => updates(message as UpdateUserInfoRequest)) as UpdateUserInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserInfoRequest create() => UpdateUserInfoRequest._();
  UpdateUserInfoRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserInfoRequest> createRepeated() => $pb.PbList<UpdateUserInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserInfoRequest>(create);
  static UpdateUserInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class UserPasswordChangeTicket extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserPasswordChangeTicket', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ticket')
    ..hasRequiredFields = false
  ;

  UserPasswordChangeTicket._() : super();
  factory UserPasswordChangeTicket({
    $core.String? ticket,
  }) {
    final _result = create();
    if (ticket != null) {
      _result.ticket = ticket;
    }
    return _result;
  }
  factory UserPasswordChangeTicket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserPasswordChangeTicket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserPasswordChangeTicket clone() => UserPasswordChangeTicket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserPasswordChangeTicket copyWith(void Function(UserPasswordChangeTicket) updates) => super.copyWith((message) => updates(message as UserPasswordChangeTicket)) as UserPasswordChangeTicket; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserPasswordChangeTicket create() => UserPasswordChangeTicket._();
  UserPasswordChangeTicket createEmptyInstance() => create();
  static $pb.PbList<UserPasswordChangeTicket> createRepeated() => $pb.PbList<UserPasswordChangeTicket>();
  @$core.pragma('dart2js:noInline')
  static UserPasswordChangeTicket getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPasswordChangeTicket>(create);
  static UserPasswordChangeTicket? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ticket => $_getSZ(0);
  @$pb.TagNumber(1)
  set ticket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTicket() => $_has(0);
  @$pb.TagNumber(1)
  void clearTicket() => clearField(1);
}


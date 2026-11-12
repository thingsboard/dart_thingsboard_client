// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_permission_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupPermissionInfo extends GroupPermissionInfo {
  @override
  final GroupPermissionId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final EntityGroupId? userGroupId;
  @override
  final RoleId roleId;
  @override
  final EntityGroupId? entityGroupId;
  @override
  final EntityType? entityGroupType;
  @override
  final Role? role;
  @override
  final String? entityGroupName;
  @override
  final EntityId? entityGroupOwnerId;
  @override
  final String? entityGroupOwnerName;
  @override
  final String? userGroupName;
  @override
  final EntityId? userGroupOwnerId;
  @override
  final String? userGroupOwnerName;
  @override
  final String? name;
  @override
  final bool? public;
  @override
  final bool? readOnly;

  factory _$GroupPermissionInfo([
    void Function(GroupPermissionInfoBuilder)? updates,
  ]) => (GroupPermissionInfoBuilder()..update(updates))._build();

  _$GroupPermissionInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.userGroupId,
    required this.roleId,
    this.entityGroupId,
    this.entityGroupType,
    this.role,
    this.entityGroupName,
    this.entityGroupOwnerId,
    this.entityGroupOwnerName,
    this.userGroupName,
    this.userGroupOwnerId,
    this.userGroupOwnerName,
    this.name,
    this.public,
    this.readOnly,
  }) : super._();
  @override
  GroupPermissionInfo rebuild(
    void Function(GroupPermissionInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GroupPermissionInfoBuilder toBuilder() =>
      GroupPermissionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupPermissionInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        userGroupId == other.userGroupId &&
        roleId == other.roleId &&
        entityGroupId == other.entityGroupId &&
        entityGroupType == other.entityGroupType &&
        role == other.role &&
        entityGroupName == other.entityGroupName &&
        entityGroupOwnerId == other.entityGroupOwnerId &&
        entityGroupOwnerName == other.entityGroupOwnerName &&
        userGroupName == other.userGroupName &&
        userGroupOwnerId == other.userGroupOwnerId &&
        userGroupOwnerName == other.userGroupOwnerName &&
        name == other.name &&
        public == other.public &&
        readOnly == other.readOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, userGroupId.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, entityGroupId.hashCode);
    _$hash = $jc(_$hash, entityGroupType.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, entityGroupName.hashCode);
    _$hash = $jc(_$hash, entityGroupOwnerId.hashCode);
    _$hash = $jc(_$hash, entityGroupOwnerName.hashCode);
    _$hash = $jc(_$hash, userGroupName.hashCode);
    _$hash = $jc(_$hash, userGroupOwnerId.hashCode);
    _$hash = $jc(_$hash, userGroupOwnerName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupPermissionInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('userGroupId', userGroupId)
          ..add('roleId', roleId)
          ..add('entityGroupId', entityGroupId)
          ..add('entityGroupType', entityGroupType)
          ..add('role', role)
          ..add('entityGroupName', entityGroupName)
          ..add('entityGroupOwnerId', entityGroupOwnerId)
          ..add('entityGroupOwnerName', entityGroupOwnerName)
          ..add('userGroupName', userGroupName)
          ..add('userGroupOwnerId', userGroupOwnerId)
          ..add('userGroupOwnerName', userGroupOwnerName)
          ..add('name', name)
          ..add('public', public)
          ..add('readOnly', readOnly))
        .toString();
  }
}

class GroupPermissionInfoBuilder
    implements Builder<GroupPermissionInfo, GroupPermissionInfoBuilder> {
  _$GroupPermissionInfo? _$v;

  GroupPermissionIdBuilder? _id;
  GroupPermissionIdBuilder get id => _$this._id ??= GroupPermissionIdBuilder();
  set id(GroupPermissionIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  EntityGroupIdBuilder? _userGroupId;
  EntityGroupIdBuilder get userGroupId =>
      _$this._userGroupId ??= EntityGroupIdBuilder();
  set userGroupId(EntityGroupIdBuilder? userGroupId) =>
      _$this._userGroupId = userGroupId;

  RoleIdBuilder? _roleId;
  RoleIdBuilder get roleId => _$this._roleId ??= RoleIdBuilder();
  set roleId(RoleIdBuilder? roleId) => _$this._roleId = roleId;

  EntityGroupIdBuilder? _entityGroupId;
  EntityGroupIdBuilder get entityGroupId =>
      _$this._entityGroupId ??= EntityGroupIdBuilder();
  set entityGroupId(EntityGroupIdBuilder? entityGroupId) =>
      _$this._entityGroupId = entityGroupId;

  EntityType? _entityGroupType;
  EntityType? get entityGroupType => _$this._entityGroupType;
  set entityGroupType(EntityType? entityGroupType) =>
      _$this._entityGroupType = entityGroupType;

  RoleBuilder? _role;
  RoleBuilder get role => _$this._role ??= RoleBuilder();
  set role(RoleBuilder? role) => _$this._role = role;

  String? _entityGroupName;
  String? get entityGroupName => _$this._entityGroupName;
  set entityGroupName(String? entityGroupName) =>
      _$this._entityGroupName = entityGroupName;

  EntityId? _entityGroupOwnerId;
  EntityId? get entityGroupOwnerId => _$this._entityGroupOwnerId;
  set entityGroupOwnerId(EntityId? entityGroupOwnerId) =>
      _$this._entityGroupOwnerId = entityGroupOwnerId;

  String? _entityGroupOwnerName;
  String? get entityGroupOwnerName => _$this._entityGroupOwnerName;
  set entityGroupOwnerName(String? entityGroupOwnerName) =>
      _$this._entityGroupOwnerName = entityGroupOwnerName;

  String? _userGroupName;
  String? get userGroupName => _$this._userGroupName;
  set userGroupName(String? userGroupName) =>
      _$this._userGroupName = userGroupName;

  EntityId? _userGroupOwnerId;
  EntityId? get userGroupOwnerId => _$this._userGroupOwnerId;
  set userGroupOwnerId(EntityId? userGroupOwnerId) =>
      _$this._userGroupOwnerId = userGroupOwnerId;

  String? _userGroupOwnerName;
  String? get userGroupOwnerName => _$this._userGroupOwnerName;
  set userGroupOwnerName(String? userGroupOwnerName) =>
      _$this._userGroupOwnerName = userGroupOwnerName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(bool? readOnly) => _$this._readOnly = readOnly;

  GroupPermissionInfoBuilder() {
    GroupPermissionInfo._defaults(this);
  }

  GroupPermissionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _userGroupId = $v.userGroupId?.toBuilder();
      _roleId = $v.roleId.toBuilder();
      _entityGroupId = $v.entityGroupId?.toBuilder();
      _entityGroupType = $v.entityGroupType;
      _role = $v.role?.toBuilder();
      _entityGroupName = $v.entityGroupName;
      _entityGroupOwnerId = $v.entityGroupOwnerId;
      _entityGroupOwnerName = $v.entityGroupOwnerName;
      _userGroupName = $v.userGroupName;
      _userGroupOwnerId = $v.userGroupOwnerId;
      _userGroupOwnerName = $v.userGroupOwnerName;
      _name = $v.name;
      _public = $v.public;
      _readOnly = $v.readOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupPermissionInfo other) {
    _$v = other as _$GroupPermissionInfo;
  }

  @override
  void update(void Function(GroupPermissionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupPermissionInfo build() => _build();

  _$GroupPermissionInfo _build() {
    _$GroupPermissionInfo _$result;
    try {
      _$result =
          _$v ??
          _$GroupPermissionInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            userGroupId: _userGroupId?.build(),
            roleId: roleId.build(),
            entityGroupId: _entityGroupId?.build(),
            entityGroupType: entityGroupType,
            role: _role?.build(),
            entityGroupName: entityGroupName,
            entityGroupOwnerId: entityGroupOwnerId,
            entityGroupOwnerName: entityGroupOwnerName,
            userGroupName: userGroupName,
            userGroupOwnerId: userGroupOwnerId,
            userGroupOwnerName: userGroupOwnerName,
            name: name,
            public: public,
            readOnly: readOnly,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'userGroupId';
        _userGroupId?.build();
        _$failedField = 'roleId';
        roleId.build();
        _$failedField = 'entityGroupId';
        _entityGroupId?.build();

        _$failedField = 'role';
        _role?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GroupPermissionInfo',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupPermission extends GroupPermission {
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
  final bool? isPublic;
  @override
  final String? name;
  @override
  final bool? public;

  factory _$GroupPermission([void Function(GroupPermissionBuilder)? updates]) =>
      (GroupPermissionBuilder()..update(updates))._build();

  _$GroupPermission._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.userGroupId,
    required this.roleId,
    this.entityGroupId,
    this.entityGroupType,
    this.isPublic,
    this.name,
    this.public,
  }) : super._();
  @override
  GroupPermission rebuild(void Function(GroupPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupPermissionBuilder toBuilder() => GroupPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupPermission &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        userGroupId == other.userGroupId &&
        roleId == other.roleId &&
        entityGroupId == other.entityGroupId &&
        entityGroupType == other.entityGroupType &&
        isPublic == other.isPublic &&
        name == other.name &&
        public == other.public;
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
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupPermission')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('userGroupId', userGroupId)
          ..add('roleId', roleId)
          ..add('entityGroupId', entityGroupId)
          ..add('entityGroupType', entityGroupType)
          ..add('isPublic', isPublic)
          ..add('name', name)
          ..add('public', public))
        .toString();
  }
}

class GroupPermissionBuilder
    implements Builder<GroupPermission, GroupPermissionBuilder> {
  _$GroupPermission? _$v;

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

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  GroupPermissionBuilder() {
    GroupPermission._defaults(this);
  }

  GroupPermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _userGroupId = $v.userGroupId?.toBuilder();
      _roleId = $v.roleId.toBuilder();
      _entityGroupId = $v.entityGroupId?.toBuilder();
      _entityGroupType = $v.entityGroupType;
      _isPublic = $v.isPublic;
      _name = $v.name;
      _public = $v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupPermission other) {
    _$v = other as _$GroupPermission;
  }

  @override
  void update(void Function(GroupPermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupPermission build() => _build();

  _$GroupPermission _build() {
    _$GroupPermission _$result;
    try {
      _$result =
          _$v ??
          _$GroupPermission._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            userGroupId: _userGroupId?.build(),
            roleId: roleId.build(),
            entityGroupId: _entityGroupId?.build(),
            entityGroupType: entityGroupType,
            isPublic: isPublic,
            name: name,
            public: public,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GroupPermission',
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

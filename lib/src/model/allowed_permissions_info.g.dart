// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allowed_permissions_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllowedPermissionsInfo extends AllowedPermissionsInfo {
  @override
  final BuiltMap<String, BuiltSet<Operation>>? operationsByResource;
  @override
  final BuiltSet<Operation>? allowedForGroupRoleOperations;
  @override
  final BuiltSet<Operation>? allowedForGroupOwnerOnlyOperations;
  @override
  final BuiltSet<Operation>? allowedForGroupOwnerOnlyGroupOperations;
  @override
  final BuiltSet<Resource>? allowedResources;
  @override
  final MergedUserPermissions? userPermissions;
  @override
  final EntityId? userOwnerId;

  factory _$AllowedPermissionsInfo([
    void Function(AllowedPermissionsInfoBuilder)? updates,
  ]) => (AllowedPermissionsInfoBuilder()..update(updates))._build();

  _$AllowedPermissionsInfo._({
    this.operationsByResource,
    this.allowedForGroupRoleOperations,
    this.allowedForGroupOwnerOnlyOperations,
    this.allowedForGroupOwnerOnlyGroupOperations,
    this.allowedResources,
    this.userPermissions,
    this.userOwnerId,
  }) : super._();
  @override
  AllowedPermissionsInfo rebuild(
    void Function(AllowedPermissionsInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AllowedPermissionsInfoBuilder toBuilder() =>
      AllowedPermissionsInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllowedPermissionsInfo &&
        operationsByResource == other.operationsByResource &&
        allowedForGroupRoleOperations == other.allowedForGroupRoleOperations &&
        allowedForGroupOwnerOnlyOperations ==
            other.allowedForGroupOwnerOnlyOperations &&
        allowedForGroupOwnerOnlyGroupOperations ==
            other.allowedForGroupOwnerOnlyGroupOperations &&
        allowedResources == other.allowedResources &&
        userPermissions == other.userPermissions &&
        userOwnerId == other.userOwnerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationsByResource.hashCode);
    _$hash = $jc(_$hash, allowedForGroupRoleOperations.hashCode);
    _$hash = $jc(_$hash, allowedForGroupOwnerOnlyOperations.hashCode);
    _$hash = $jc(_$hash, allowedForGroupOwnerOnlyGroupOperations.hashCode);
    _$hash = $jc(_$hash, allowedResources.hashCode);
    _$hash = $jc(_$hash, userPermissions.hashCode);
    _$hash = $jc(_$hash, userOwnerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllowedPermissionsInfo')
          ..add('operationsByResource', operationsByResource)
          ..add('allowedForGroupRoleOperations', allowedForGroupRoleOperations)
          ..add(
            'allowedForGroupOwnerOnlyOperations',
            allowedForGroupOwnerOnlyOperations,
          )
          ..add(
            'allowedForGroupOwnerOnlyGroupOperations',
            allowedForGroupOwnerOnlyGroupOperations,
          )
          ..add('allowedResources', allowedResources)
          ..add('userPermissions', userPermissions)
          ..add('userOwnerId', userOwnerId))
        .toString();
  }
}

class AllowedPermissionsInfoBuilder
    implements Builder<AllowedPermissionsInfo, AllowedPermissionsInfoBuilder> {
  _$AllowedPermissionsInfo? _$v;

  MapBuilder<String, BuiltSet<Operation>>? _operationsByResource;
  MapBuilder<String, BuiltSet<Operation>> get operationsByResource =>
      _$this._operationsByResource ??=
          MapBuilder<String, BuiltSet<Operation>>();
  set operationsByResource(
    MapBuilder<String, BuiltSet<Operation>>? operationsByResource,
  ) => _$this._operationsByResource = operationsByResource;

  SetBuilder<Operation>? _allowedForGroupRoleOperations;
  SetBuilder<Operation> get allowedForGroupRoleOperations =>
      _$this._allowedForGroupRoleOperations ??= SetBuilder<Operation>();
  set allowedForGroupRoleOperations(
    SetBuilder<Operation>? allowedForGroupRoleOperations,
  ) => _$this._allowedForGroupRoleOperations = allowedForGroupRoleOperations;

  SetBuilder<Operation>? _allowedForGroupOwnerOnlyOperations;
  SetBuilder<Operation> get allowedForGroupOwnerOnlyOperations =>
      _$this._allowedForGroupOwnerOnlyOperations ??= SetBuilder<Operation>();
  set allowedForGroupOwnerOnlyOperations(
    SetBuilder<Operation>? allowedForGroupOwnerOnlyOperations,
  ) => _$this._allowedForGroupOwnerOnlyOperations =
      allowedForGroupOwnerOnlyOperations;

  SetBuilder<Operation>? _allowedForGroupOwnerOnlyGroupOperations;
  SetBuilder<Operation> get allowedForGroupOwnerOnlyGroupOperations =>
      _$this._allowedForGroupOwnerOnlyGroupOperations ??=
          SetBuilder<Operation>();
  set allowedForGroupOwnerOnlyGroupOperations(
    SetBuilder<Operation>? allowedForGroupOwnerOnlyGroupOperations,
  ) => _$this._allowedForGroupOwnerOnlyGroupOperations =
      allowedForGroupOwnerOnlyGroupOperations;

  SetBuilder<Resource>? _allowedResources;
  SetBuilder<Resource> get allowedResources =>
      _$this._allowedResources ??= SetBuilder<Resource>();
  set allowedResources(SetBuilder<Resource>? allowedResources) =>
      _$this._allowedResources = allowedResources;

  MergedUserPermissionsBuilder? _userPermissions;
  MergedUserPermissionsBuilder get userPermissions =>
      _$this._userPermissions ??= MergedUserPermissionsBuilder();
  set userPermissions(MergedUserPermissionsBuilder? userPermissions) =>
      _$this._userPermissions = userPermissions;

  EntityId? _userOwnerId;
  EntityId? get userOwnerId => _$this._userOwnerId;
  set userOwnerId(EntityId? userOwnerId) => _$this._userOwnerId = userOwnerId;

  AllowedPermissionsInfoBuilder() {
    AllowedPermissionsInfo._defaults(this);
  }

  AllowedPermissionsInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationsByResource = $v.operationsByResource?.toBuilder();
      _allowedForGroupRoleOperations = $v.allowedForGroupRoleOperations
          ?.toBuilder();
      _allowedForGroupOwnerOnlyOperations = $v
          .allowedForGroupOwnerOnlyOperations
          ?.toBuilder();
      _allowedForGroupOwnerOnlyGroupOperations = $v
          .allowedForGroupOwnerOnlyGroupOperations
          ?.toBuilder();
      _allowedResources = $v.allowedResources?.toBuilder();
      _userPermissions = $v.userPermissions?.toBuilder();
      _userOwnerId = $v.userOwnerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllowedPermissionsInfo other) {
    _$v = other as _$AllowedPermissionsInfo;
  }

  @override
  void update(void Function(AllowedPermissionsInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllowedPermissionsInfo build() => _build();

  _$AllowedPermissionsInfo _build() {
    _$AllowedPermissionsInfo _$result;
    try {
      _$result =
          _$v ??
          _$AllowedPermissionsInfo._(
            operationsByResource: _operationsByResource?.build(),
            allowedForGroupRoleOperations: _allowedForGroupRoleOperations
                ?.build(),
            allowedForGroupOwnerOnlyOperations:
                _allowedForGroupOwnerOnlyOperations?.build(),
            allowedForGroupOwnerOnlyGroupOperations:
                _allowedForGroupOwnerOnlyGroupOperations?.build(),
            allowedResources: _allowedResources?.build(),
            userPermissions: _userPermissions?.build(),
            userOwnerId: userOwnerId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operationsByResource';
        _operationsByResource?.build();
        _$failedField = 'allowedForGroupRoleOperations';
        _allowedForGroupRoleOperations?.build();
        _$failedField = 'allowedForGroupOwnerOnlyOperations';
        _allowedForGroupOwnerOnlyOperations?.build();
        _$failedField = 'allowedForGroupOwnerOnlyGroupOperations';
        _allowedForGroupOwnerOnlyGroupOperations?.build();
        _$failedField = 'allowedResources';
        _allowedResources?.build();
        _$failedField = 'userPermissions';
        _userPermissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AllowedPermissionsInfo',
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

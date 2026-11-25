// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareGroupRequest extends ShareGroupRequest {
  @override
  final EntityId? ownerId;
  @override
  final bool allUserGroup;
  @override
  final EntityGroupId? userGroupId;
  @override
  final bool? readElseWrite;
  @override
  final BuiltList<RoleId>? roleIds;

  factory _$ShareGroupRequest([
    void Function(ShareGroupRequestBuilder)? updates,
  ]) => (ShareGroupRequestBuilder()..update(updates))._build();

  _$ShareGroupRequest._({
    this.ownerId,
    required this.allUserGroup,
    this.userGroupId,
    this.readElseWrite,
    this.roleIds,
  }) : super._();
  @override
  ShareGroupRequest rebuild(void Function(ShareGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareGroupRequestBuilder toBuilder() =>
      ShareGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareGroupRequest &&
        ownerId == other.ownerId &&
        allUserGroup == other.allUserGroup &&
        userGroupId == other.userGroupId &&
        readElseWrite == other.readElseWrite &&
        roleIds == other.roleIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, allUserGroup.hashCode);
    _$hash = $jc(_$hash, userGroupId.hashCode);
    _$hash = $jc(_$hash, readElseWrite.hashCode);
    _$hash = $jc(_$hash, roleIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareGroupRequest')
          ..add('ownerId', ownerId)
          ..add('allUserGroup', allUserGroup)
          ..add('userGroupId', userGroupId)
          ..add('readElseWrite', readElseWrite)
          ..add('roleIds', roleIds))
        .toString();
  }
}

class ShareGroupRequestBuilder
    implements Builder<ShareGroupRequest, ShareGroupRequestBuilder> {
  _$ShareGroupRequest? _$v;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  bool? _allUserGroup;
  bool? get allUserGroup => _$this._allUserGroup;
  set allUserGroup(bool? allUserGroup) => _$this._allUserGroup = allUserGroup;

  EntityGroupIdBuilder? _userGroupId;
  EntityGroupIdBuilder get userGroupId =>
      _$this._userGroupId ??= EntityGroupIdBuilder();
  set userGroupId(EntityGroupIdBuilder? userGroupId) =>
      _$this._userGroupId = userGroupId;

  bool? _readElseWrite;
  bool? get readElseWrite => _$this._readElseWrite;
  set readElseWrite(bool? readElseWrite) =>
      _$this._readElseWrite = readElseWrite;

  ListBuilder<RoleId>? _roleIds;
  ListBuilder<RoleId> get roleIds => _$this._roleIds ??= ListBuilder<RoleId>();
  set roleIds(ListBuilder<RoleId>? roleIds) => _$this._roleIds = roleIds;

  ShareGroupRequestBuilder() {
    ShareGroupRequest._defaults(this);
  }

  ShareGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _allUserGroup = $v.allUserGroup;
      _userGroupId = $v.userGroupId?.toBuilder();
      _readElseWrite = $v.readElseWrite;
      _roleIds = $v.roleIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareGroupRequest other) {
    _$v = other as _$ShareGroupRequest;
  }

  @override
  void update(void Function(ShareGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareGroupRequest build() => _build();

  _$ShareGroupRequest _build() {
    _$ShareGroupRequest _$result;
    try {
      _$result =
          _$v ??
          _$ShareGroupRequest._(
            ownerId: ownerId,
            allUserGroup: BuiltValueNullFieldError.checkNotNull(
              allUserGroup,
              r'ShareGroupRequest',
              'allUserGroup',
            ),
            userGroupId: _userGroupId?.build(),
            readElseWrite: readElseWrite,
            roleIds: _roleIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userGroupId';
        _userGroupId?.build();

        _$failedField = 'roleIds';
        _roleIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ShareGroupRequest',
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

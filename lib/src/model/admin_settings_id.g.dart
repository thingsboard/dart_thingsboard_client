// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_settings_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminSettingsId extends AdminSettingsId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AdminSettingsId([void Function(AdminSettingsIdBuilder)? updates]) =>
      (AdminSettingsIdBuilder()..update(updates))._build();

  _$AdminSettingsId._({required this.entityType, required this.id}) : super._();
  @override
  AdminSettingsId rebuild(void Function(AdminSettingsIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminSettingsIdBuilder toBuilder() => AdminSettingsIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminSettingsId &&
        entityType == other.entityType &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminSettingsId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AdminSettingsIdBuilder
    implements
        Builder<AdminSettingsId, AdminSettingsIdBuilder>,
        EntityIdBuilder {
  _$AdminSettingsId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AdminSettingsIdBuilder() {
    AdminSettingsId._defaults(this);
  }

  AdminSettingsIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AdminSettingsId other) {
    _$v = other as _$AdminSettingsId;
  }

  @override
  void update(void Function(AdminSettingsIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminSettingsId build() => _build();

  _$AdminSettingsId _build() {
    final _$result =
        _$v ??
        _$AdminSettingsId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AdminSettingsId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AdminSettingsId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardId extends DashboardId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$DashboardId([void Function(DashboardIdBuilder)? updates]) =>
      (DashboardIdBuilder()..update(updates))._build();

  _$DashboardId._({required this.entityType, required this.id}) : super._();
  @override
  DashboardId rebuild(void Function(DashboardIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardIdBuilder toBuilder() => DashboardIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardId &&
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
    return (newBuiltValueToStringHelper(r'DashboardId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class DashboardIdBuilder
    implements Builder<DashboardId, DashboardIdBuilder>, EntityIdBuilder {
  _$DashboardId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DashboardIdBuilder() {
    DashboardId._defaults(this);
  }

  DashboardIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DashboardId other) {
    _$v = other as _$DashboardId;
  }

  @override
  void update(void Function(DashboardIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardId build() => _build();

  _$DashboardId _build() {
    final _$result =
        _$v ??
        _$DashboardId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'DashboardId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'DashboardId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

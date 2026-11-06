// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exportable_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportableEntity extends ExportableEntity {
  @override
  final int? createdTime;
  @override
  final EntityId? id;
  @override
  final String? name;
  @override
  final TenantId? tenantId;

  factory _$ExportableEntity([
    void Function(ExportableEntityBuilder)? updates,
  ]) => (ExportableEntityBuilder()..update(updates))._build();

  _$ExportableEntity._({this.createdTime, this.id, this.name, this.tenantId})
    : super._();
  @override
  ExportableEntity rebuild(void Function(ExportableEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportableEntityBuilder toBuilder() =>
      ExportableEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportableEntity &&
        createdTime == other.createdTime &&
        id == other.id &&
        name == other.name &&
        tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportableEntity')
          ..add('createdTime', createdTime)
          ..add('id', id)
          ..add('name', name)
          ..add('tenantId', tenantId))
        .toString();
  }
}

class ExportableEntityBuilder
    implements Builder<ExportableEntity, ExportableEntityBuilder> {
  _$ExportableEntity? _$v;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  EntityId? _id;
  EntityId? get id => _$this._id;
  set id(EntityId? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  ExportableEntityBuilder() {
    ExportableEntity._defaults(this);
  }

  ExportableEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _id = $v.id;
      _name = $v.name;
      _tenantId = $v.tenantId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportableEntity other) {
    _$v = other as _$ExportableEntity;
  }

  @override
  void update(void Function(ExportableEntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportableEntity build() => _build();

  _$ExportableEntity _build() {
    _$ExportableEntity _$result;
    try {
      _$result =
          _$v ??
          _$ExportableEntity._(
            createdTime: createdTime,
            id: id,
            name: name,
            tenantId: _tenantId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExportableEntity',
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

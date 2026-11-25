// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminSettings extends AdminSettings {
  @override
  final AdminSettingsId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? key;
  @override
  final JsonObject? jsonValue;

  factory _$AdminSettings([void Function(AdminSettingsBuilder)? updates]) =>
      (AdminSettingsBuilder()..update(updates))._build();

  _$AdminSettings._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.key,
    this.jsonValue,
  }) : super._();
  @override
  AdminSettings rebuild(void Function(AdminSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminSettingsBuilder toBuilder() => AdminSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminSettings &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        key == other.key &&
        jsonValue == other.jsonValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, jsonValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminSettings')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('key', key)
          ..add('jsonValue', jsonValue))
        .toString();
  }
}

class AdminSettingsBuilder
    implements Builder<AdminSettings, AdminSettingsBuilder> {
  _$AdminSettings? _$v;

  AdminSettingsIdBuilder? _id;
  AdminSettingsIdBuilder get id => _$this._id ??= AdminSettingsIdBuilder();
  set id(AdminSettingsIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  JsonObject? _jsonValue;
  JsonObject? get jsonValue => _$this._jsonValue;
  set jsonValue(JsonObject? jsonValue) => _$this._jsonValue = jsonValue;

  AdminSettingsBuilder() {
    AdminSettings._defaults(this);
  }

  AdminSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _key = $v.key;
      _jsonValue = $v.jsonValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminSettings other) {
    _$v = other as _$AdminSettings;
  }

  @override
  void update(void Function(AdminSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminSettings build() => _build();

  _$AdminSettings _build() {
    _$AdminSettings _$result;
    try {
      _$result =
          _$v ??
          _$AdminSettings._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            key: key,
            jsonValue: jsonValue,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AdminSettings',
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

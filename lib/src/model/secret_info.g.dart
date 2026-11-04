// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecretInfo extends SecretInfo {
  @override
  final SecretId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final SecretType type;
  @override
  final String? description;

  factory _$SecretInfo([void Function(SecretInfoBuilder)? updates]) =>
      (SecretInfoBuilder()..update(updates))._build();

  _$SecretInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    required this.type,
    this.description,
  }) : super._();
  @override
  SecretInfo rebuild(void Function(SecretInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecretInfoBuilder toBuilder() => SecretInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecretInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        type == other.type &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SecretInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('type', type)
          ..add('description', description))
        .toString();
  }
}

class SecretInfoBuilder implements Builder<SecretInfo, SecretInfoBuilder> {
  _$SecretInfo? _$v;

  SecretIdBuilder? _id;
  SecretIdBuilder get id => _$this._id ??= SecretIdBuilder();
  set id(SecretIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SecretType? _type;
  SecretType? get type => _$this._type;
  set type(SecretType? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SecretInfoBuilder() {
    SecretInfo._defaults(this);
  }

  SecretInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecretInfo other) {
    _$v = other as _$SecretInfo;
  }

  @override
  void update(void Function(SecretInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecretInfo build() => _build();

  _$SecretInfo _build() {
    _$SecretInfo _$result;
    try {
      _$result =
          _$v ??
          _$SecretInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'SecretInfo',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SecretInfo',
              'type',
            ),
            description: description,
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
          r'SecretInfo',
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

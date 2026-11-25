// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Secret extends Secret {
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
  @override
  final String? value;
  @override
  final String? encryptedValue;

  factory _$Secret([void Function(SecretBuilder)? updates]) =>
      (SecretBuilder()..update(updates))._build();

  _$Secret._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    required this.type,
    this.description,
    this.value,
    this.encryptedValue,
  }) : super._();
  @override
  Secret rebuild(void Function(SecretBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecretBuilder toBuilder() => SecretBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Secret &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        type == other.type &&
        description == other.description &&
        value == other.value &&
        encryptedValue == other.encryptedValue;
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
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, encryptedValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Secret')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('type', type)
          ..add('description', description)
          ..add('value', value)
          ..add('encryptedValue', encryptedValue))
        .toString();
  }
}

class SecretBuilder implements Builder<Secret, SecretBuilder> {
  _$Secret? _$v;

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

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _encryptedValue;
  String? get encryptedValue => _$this._encryptedValue;
  set encryptedValue(String? encryptedValue) =>
      _$this._encryptedValue = encryptedValue;

  SecretBuilder() {
    Secret._defaults(this);
  }

  SecretBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _description = $v.description;
      _value = $v.value;
      _encryptedValue = $v.encryptedValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Secret other) {
    _$v = other as _$Secret;
  }

  @override
  void update(void Function(SecretBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Secret build() => _build();

  _$Secret _build() {
    _$Secret _$result;
    try {
      _$result =
          _$v ??
          _$Secret._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Secret',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Secret',
              'type',
            ),
            description: description,
            value: value,
            encryptedValue: encryptedValue,
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
          r'Secret',
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

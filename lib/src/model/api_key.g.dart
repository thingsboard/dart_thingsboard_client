// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKey extends ApiKey {
  @override
  final ApiKeyId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final UserId? userId;
  @override
  final int? expirationTime;
  @override
  final String description;
  @override
  final bool? enabled;
  @override
  final String value;
  @override
  final bool? expired;

  factory _$ApiKey([void Function(ApiKeyBuilder)? updates]) =>
      (ApiKeyBuilder()..update(updates))._build();

  _$ApiKey._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.userId,
    this.expirationTime,
    required this.description,
    this.enabled,
    required this.value,
    this.expired,
  }) : super._();
  @override
  ApiKey rebuild(void Function(ApiKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyBuilder toBuilder() => ApiKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKey &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        userId == other.userId &&
        expirationTime == other.expirationTime &&
        description == other.description &&
        enabled == other.enabled &&
        value == other.value &&
        expired == other.expired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, expirationTime.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, expired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiKey')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('userId', userId)
          ..add('expirationTime', expirationTime)
          ..add('description', description)
          ..add('enabled', enabled)
          ..add('value', value)
          ..add('expired', expired))
        .toString();
  }
}

class ApiKeyBuilder implements Builder<ApiKey, ApiKeyBuilder> {
  _$ApiKey? _$v;

  ApiKeyIdBuilder? _id;
  ApiKeyIdBuilder get id => _$this._id ??= ApiKeyIdBuilder();
  set id(ApiKeyIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  UserIdBuilder? _userId;
  UserIdBuilder get userId => _$this._userId ??= UserIdBuilder();
  set userId(UserIdBuilder? userId) => _$this._userId = userId;

  int? _expirationTime;
  int? get expirationTime => _$this._expirationTime;
  set expirationTime(int? expirationTime) =>
      _$this._expirationTime = expirationTime;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _expired;
  bool? get expired => _$this._expired;
  set expired(bool? expired) => _$this._expired = expired;

  ApiKeyBuilder() {
    ApiKey._defaults(this);
  }

  ApiKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _userId = $v.userId?.toBuilder();
      _expirationTime = $v.expirationTime;
      _description = $v.description;
      _enabled = $v.enabled;
      _value = $v.value;
      _expired = $v.expired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiKey other) {
    _$v = other as _$ApiKey;
  }

  @override
  void update(void Function(ApiKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKey build() => _build();

  _$ApiKey _build() {
    _$ApiKey _$result;
    try {
      _$result =
          _$v ??
          _$ApiKey._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            userId: _userId?.build(),
            expirationTime: expirationTime,
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'ApiKey',
              'description',
            ),
            enabled: enabled,
            value: BuiltValueNullFieldError.checkNotNull(
              value,
              r'ApiKey',
              'value',
            ),
            expired: expired,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'userId';
        _userId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiKey',
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

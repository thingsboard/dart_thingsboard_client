// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKeyId extends ApiKeyId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$ApiKeyId([void Function(ApiKeyIdBuilder)? updates]) =>
      (ApiKeyIdBuilder()..update(updates))._build();

  _$ApiKeyId._({required this.entityType, required this.id}) : super._();
  @override
  ApiKeyId rebuild(void Function(ApiKeyIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyIdBuilder toBuilder() => ApiKeyIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKeyId &&
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
    return (newBuiltValueToStringHelper(r'ApiKeyId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class ApiKeyIdBuilder
    implements Builder<ApiKeyId, ApiKeyIdBuilder>, EntityIdBuilder {
  _$ApiKeyId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  ApiKeyIdBuilder() {
    ApiKeyId._defaults(this);
  }

  ApiKeyIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ApiKeyId other) {
    _$v = other as _$ApiKeyId;
  }

  @override
  void update(void Function(ApiKeyIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKeyId build() => _build();

  _$ApiKeyId _build() {
    final _$result =
        _$v ??
        _$ApiKeyId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'ApiKeyId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'ApiKeyId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

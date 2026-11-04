// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage_state_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiUsageStateId extends ApiUsageStateId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$ApiUsageStateId([void Function(ApiUsageStateIdBuilder)? updates]) =>
      (ApiUsageStateIdBuilder()..update(updates))._build();

  _$ApiUsageStateId._({required this.entityType, required this.id}) : super._();
  @override
  ApiUsageStateId rebuild(void Function(ApiUsageStateIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiUsageStateIdBuilder toBuilder() => ApiUsageStateIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiUsageStateId &&
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
    return (newBuiltValueToStringHelper(r'ApiUsageStateId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class ApiUsageStateIdBuilder
    implements
        Builder<ApiUsageStateId, ApiUsageStateIdBuilder>,
        EntityIdBuilder {
  _$ApiUsageStateId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  ApiUsageStateIdBuilder() {
    ApiUsageStateId._defaults(this);
  }

  ApiUsageStateIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ApiUsageStateId other) {
    _$v = other as _$ApiUsageStateId;
  }

  @override
  void update(void Function(ApiUsageStateIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiUsageStateId build() => _build();

  _$ApiUsageStateId _build() {
    final _$result =
        _$v ??
        _$ApiUsageStateId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'ApiUsageStateId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'ApiUsageStateId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

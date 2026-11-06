// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_client_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2ClientId extends OAuth2ClientId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$OAuth2ClientId([void Function(OAuth2ClientIdBuilder)? updates]) =>
      (OAuth2ClientIdBuilder()..update(updates))._build();

  _$OAuth2ClientId._({required this.entityType, required this.id}) : super._();
  @override
  OAuth2ClientId rebuild(void Function(OAuth2ClientIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OAuth2ClientIdBuilder toBuilder() => OAuth2ClientIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2ClientId &&
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
    return (newBuiltValueToStringHelper(r'OAuth2ClientId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class OAuth2ClientIdBuilder
    implements Builder<OAuth2ClientId, OAuth2ClientIdBuilder>, EntityIdBuilder {
  _$OAuth2ClientId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  OAuth2ClientIdBuilder() {
    OAuth2ClientId._defaults(this);
  }

  OAuth2ClientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant OAuth2ClientId other) {
    _$v = other as _$OAuth2ClientId;
  }

  @override
  void update(void Function(OAuth2ClientIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2ClientId build() => _build();

  _$OAuth2ClientId _build() {
    final _$result =
        _$v ??
        _$OAuth2ClientId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'OAuth2ClientId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'OAuth2ClientId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

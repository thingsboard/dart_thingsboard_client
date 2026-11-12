// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RpcId extends RpcId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$RpcId([void Function(RpcIdBuilder)? updates]) =>
      (RpcIdBuilder()..update(updates))._build();

  _$RpcId._({required this.entityType, required this.id}) : super._();
  @override
  RpcId rebuild(void Function(RpcIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RpcIdBuilder toBuilder() => RpcIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RpcId && entityType == other.entityType && id == other.id;
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
    return (newBuiltValueToStringHelper(r'RpcId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class RpcIdBuilder implements Builder<RpcId, RpcIdBuilder>, EntityIdBuilder {
  _$RpcId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  RpcIdBuilder() {
    RpcId._defaults(this);
  }

  RpcIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RpcId other) {
    _$v = other as _$RpcId;
  }

  @override
  void update(void Function(RpcIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RpcId build() => _build();

  _$RpcId _build() {
    final _$result =
        _$v ??
        _$RpcId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'RpcId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'RpcId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChainId extends RuleChainId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$RuleChainId([void Function(RuleChainIdBuilder)? updates]) =>
      (RuleChainIdBuilder()..update(updates))._build();

  _$RuleChainId._({required this.entityType, required this.id}) : super._();
  @override
  RuleChainId rebuild(void Function(RuleChainIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleChainIdBuilder toBuilder() => RuleChainIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainId &&
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
    return (newBuiltValueToStringHelper(r'RuleChainId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class RuleChainIdBuilder
    implements Builder<RuleChainId, RuleChainIdBuilder>, EntityIdBuilder {
  _$RuleChainId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  RuleChainIdBuilder() {
    RuleChainId._defaults(this);
  }

  RuleChainIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RuleChainId other) {
    _$v = other as _$RuleChainId;
  }

  @override
  void update(void Function(RuleChainIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainId build() => _build();

  _$RuleChainId _build() {
    final _$result =
        _$v ??
        _$RuleChainId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'RuleChainId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'RuleChainId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

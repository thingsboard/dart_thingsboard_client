// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueId extends QueueId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$QueueId([void Function(QueueIdBuilder)? updates]) =>
      (QueueIdBuilder()..update(updates))._build();

  _$QueueId._({required this.entityType, required this.id}) : super._();
  @override
  QueueId rebuild(void Function(QueueIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueIdBuilder toBuilder() => QueueIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueueId && entityType == other.entityType && id == other.id;
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
    return (newBuiltValueToStringHelper(r'QueueId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class QueueIdBuilder
    implements Builder<QueueId, QueueIdBuilder>, EntityIdBuilder {
  _$QueueId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  QueueIdBuilder() {
    QueueId._defaults(this);
  }

  QueueIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant QueueId other) {
    _$v = other as _$QueueId;
  }

  @override
  void update(void Function(QueueIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueueId build() => _build();

  _$QueueId _build() {
    final _$result =
        _$v ??
        _$QueueId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'QueueId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'QueueId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_stats_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueStatsId extends QueueStatsId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$QueueStatsId([void Function(QueueStatsIdBuilder)? updates]) =>
      (QueueStatsIdBuilder()..update(updates))._build();

  _$QueueStatsId._({required this.entityType, required this.id}) : super._();
  @override
  QueueStatsId rebuild(void Function(QueueStatsIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueStatsIdBuilder toBuilder() => QueueStatsIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueueStatsId &&
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
    return (newBuiltValueToStringHelper(r'QueueStatsId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class QueueStatsIdBuilder
    implements Builder<QueueStatsId, QueueStatsIdBuilder>, EntityIdBuilder {
  _$QueueStatsId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  QueueStatsIdBuilder() {
    QueueStatsId._defaults(this);
  }

  QueueStatsIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant QueueStatsId other) {
    _$v = other as _$QueueStatsId;
  }

  @override
  void update(void Function(QueueStatsIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueueStatsId build() => _build();

  _$QueueStatsId _build() {
    final _$result =
        _$v ??
        _$QueueStatsId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'QueueStatsId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'QueueStatsId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

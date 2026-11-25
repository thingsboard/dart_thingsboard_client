// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_target_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationTargetId extends NotificationTargetId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$NotificationTargetId([
    void Function(NotificationTargetIdBuilder)? updates,
  ]) => (NotificationTargetIdBuilder()..update(updates))._build();

  _$NotificationTargetId._({required this.entityType, required this.id})
    : super._();
  @override
  NotificationTargetId rebuild(
    void Function(NotificationTargetIdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationTargetIdBuilder toBuilder() =>
      NotificationTargetIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationTargetId &&
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
    return (newBuiltValueToStringHelper(r'NotificationTargetId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class NotificationTargetIdBuilder
    implements
        Builder<NotificationTargetId, NotificationTargetIdBuilder>,
        EntityIdBuilder {
  _$NotificationTargetId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  NotificationTargetIdBuilder() {
    NotificationTargetId._defaults(this);
  }

  NotificationTargetIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NotificationTargetId other) {
    _$v = other as _$NotificationTargetId;
  }

  @override
  void update(void Function(NotificationTargetIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationTargetId build() => _build();

  _$NotificationTargetId _build() {
    final _$result =
        _$v ??
        _$NotificationTargetId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'NotificationTargetId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'NotificationTargetId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

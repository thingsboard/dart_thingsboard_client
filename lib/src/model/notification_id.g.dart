// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationId extends NotificationId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$NotificationId([void Function(NotificationIdBuilder)? updates]) =>
      (NotificationIdBuilder()..update(updates))._build();

  _$NotificationId._({required this.entityType, required this.id}) : super._();
  @override
  NotificationId rebuild(void Function(NotificationIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationIdBuilder toBuilder() => NotificationIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationId &&
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
    return (newBuiltValueToStringHelper(r'NotificationId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class NotificationIdBuilder
    implements Builder<NotificationId, NotificationIdBuilder>, EntityIdBuilder {
  _$NotificationId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  NotificationIdBuilder() {
    NotificationId._defaults(this);
  }

  NotificationIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NotificationId other) {
    _$v = other as _$NotificationId;
  }

  @override
  void update(void Function(NotificationIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationId build() => _build();

  _$NotificationId _build() {
    final _$result =
        _$v ??
        _$NotificationId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'NotificationId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'NotificationId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

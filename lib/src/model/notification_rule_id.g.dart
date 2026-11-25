// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_rule_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRuleId extends NotificationRuleId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$NotificationRuleId([
    void Function(NotificationRuleIdBuilder)? updates,
  ]) => (NotificationRuleIdBuilder()..update(updates))._build();

  _$NotificationRuleId._({required this.entityType, required this.id})
    : super._();
  @override
  NotificationRuleId rebuild(
    void Function(NotificationRuleIdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationRuleIdBuilder toBuilder() =>
      NotificationRuleIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRuleId &&
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
    return (newBuiltValueToStringHelper(r'NotificationRuleId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class NotificationRuleIdBuilder
    implements
        Builder<NotificationRuleId, NotificationRuleIdBuilder>,
        EntityIdBuilder {
  _$NotificationRuleId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  NotificationRuleIdBuilder() {
    NotificationRuleId._defaults(this);
  }

  NotificationRuleIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NotificationRuleId other) {
    _$v = other as _$NotificationRuleId;
  }

  @override
  void update(void Function(NotificationRuleIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRuleId build() => _build();

  _$NotificationRuleId _build() {
    final _$result =
        _$v ??
        _$NotificationRuleId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'NotificationRuleId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'NotificationRuleId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

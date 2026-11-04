// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmId extends AlarmId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AlarmId([void Function(AlarmIdBuilder)? updates]) =>
      (AlarmIdBuilder()..update(updates))._build();

  _$AlarmId._({required this.entityType, required this.id}) : super._();
  @override
  AlarmId rebuild(void Function(AlarmIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmIdBuilder toBuilder() => AlarmIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmId && entityType == other.entityType && id == other.id;
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
    return (newBuiltValueToStringHelper(r'AlarmId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AlarmIdBuilder
    implements Builder<AlarmId, AlarmIdBuilder>, EntityIdBuilder {
  _$AlarmId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AlarmIdBuilder() {
    AlarmId._defaults(this);
  }

  AlarmIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmId other) {
    _$v = other as _$AlarmId;
  }

  @override
  void update(void Function(AlarmIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmId build() => _build();

  _$AlarmId _build() {
    final _$result =
        _$v ??
        _$AlarmId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AlarmId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'AlarmId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

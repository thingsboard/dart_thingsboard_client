// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_type_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetTypeId extends WidgetTypeId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$WidgetTypeId([void Function(WidgetTypeIdBuilder)? updates]) =>
      (WidgetTypeIdBuilder()..update(updates))._build();

  _$WidgetTypeId._({required this.entityType, required this.id}) : super._();
  @override
  WidgetTypeId rebuild(void Function(WidgetTypeIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetTypeIdBuilder toBuilder() => WidgetTypeIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetTypeId &&
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
    return (newBuiltValueToStringHelper(r'WidgetTypeId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class WidgetTypeIdBuilder
    implements Builder<WidgetTypeId, WidgetTypeIdBuilder>, EntityIdBuilder {
  _$WidgetTypeId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  WidgetTypeIdBuilder() {
    WidgetTypeId._defaults(this);
  }

  WidgetTypeIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant WidgetTypeId other) {
    _$v = other as _$WidgetTypeId;
  }

  @override
  void update(void Function(WidgetTypeIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WidgetTypeId build() => _build();

  _$WidgetTypeId _build() {
    final _$result =
        _$v ??
        _$WidgetTypeId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'WidgetTypeId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'WidgetTypeId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

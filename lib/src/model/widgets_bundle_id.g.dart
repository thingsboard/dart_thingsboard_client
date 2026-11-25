// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widgets_bundle_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetsBundleId extends WidgetsBundleId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$WidgetsBundleId([void Function(WidgetsBundleIdBuilder)? updates]) =>
      (WidgetsBundleIdBuilder()..update(updates))._build();

  _$WidgetsBundleId._({required this.entityType, required this.id}) : super._();
  @override
  WidgetsBundleId rebuild(void Function(WidgetsBundleIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetsBundleIdBuilder toBuilder() => WidgetsBundleIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetsBundleId &&
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
    return (newBuiltValueToStringHelper(r'WidgetsBundleId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class WidgetsBundleIdBuilder
    implements
        Builder<WidgetsBundleId, WidgetsBundleIdBuilder>,
        EntityIdBuilder {
  _$WidgetsBundleId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  WidgetsBundleIdBuilder() {
    WidgetsBundleId._defaults(this);
  }

  WidgetsBundleIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant WidgetsBundleId other) {
    _$v = other as _$WidgetsBundleId;
  }

  @override
  void update(void Function(WidgetsBundleIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WidgetsBundleId build() => _build();

  _$WidgetsBundleId _build() {
    final _$result =
        _$v ??
        _$WidgetsBundleId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'WidgetsBundleId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'WidgetsBundleId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_entity_keys_v2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailableEntityKeysV2 extends AvailableEntityKeysV2 {
  @override
  final int totalEntities;
  @override
  final BuiltSet<EntityType> entityTypes;
  @override
  final BuiltList<KeyInfo>? timeseries;
  @override
  final BuiltMap<String, BuiltList<KeyInfo>>? attributes;

  factory _$AvailableEntityKeysV2([
    void Function(AvailableEntityKeysV2Builder)? updates,
  ]) => (AvailableEntityKeysV2Builder()..update(updates))._build();

  _$AvailableEntityKeysV2._({
    required this.totalEntities,
    required this.entityTypes,
    this.timeseries,
    this.attributes,
  }) : super._();
  @override
  AvailableEntityKeysV2 rebuild(
    void Function(AvailableEntityKeysV2Builder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AvailableEntityKeysV2Builder toBuilder() =>
      AvailableEntityKeysV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailableEntityKeysV2 &&
        totalEntities == other.totalEntities &&
        entityTypes == other.entityTypes &&
        timeseries == other.timeseries &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalEntities.hashCode);
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jc(_$hash, timeseries.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailableEntityKeysV2')
          ..add('totalEntities', totalEntities)
          ..add('entityTypes', entityTypes)
          ..add('timeseries', timeseries)
          ..add('attributes', attributes))
        .toString();
  }
}

class AvailableEntityKeysV2Builder
    implements Builder<AvailableEntityKeysV2, AvailableEntityKeysV2Builder> {
  _$AvailableEntityKeysV2? _$v;

  int? _totalEntities;
  int? get totalEntities => _$this._totalEntities;
  set totalEntities(int? totalEntities) =>
      _$this._totalEntities = totalEntities;

  SetBuilder<EntityType>? _entityTypes;
  SetBuilder<EntityType> get entityTypes =>
      _$this._entityTypes ??= SetBuilder<EntityType>();
  set entityTypes(SetBuilder<EntityType>? entityTypes) =>
      _$this._entityTypes = entityTypes;

  ListBuilder<KeyInfo>? _timeseries;
  ListBuilder<KeyInfo> get timeseries =>
      _$this._timeseries ??= ListBuilder<KeyInfo>();
  set timeseries(ListBuilder<KeyInfo>? timeseries) =>
      _$this._timeseries = timeseries;

  MapBuilder<String, BuiltList<KeyInfo>>? _attributes;
  MapBuilder<String, BuiltList<KeyInfo>> get attributes =>
      _$this._attributes ??= MapBuilder<String, BuiltList<KeyInfo>>();
  set attributes(MapBuilder<String, BuiltList<KeyInfo>>? attributes) =>
      _$this._attributes = attributes;

  AvailableEntityKeysV2Builder() {
    AvailableEntityKeysV2._defaults(this);
  }

  AvailableEntityKeysV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalEntities = $v.totalEntities;
      _entityTypes = $v.entityTypes.toBuilder();
      _timeseries = $v.timeseries?.toBuilder();
      _attributes = $v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailableEntityKeysV2 other) {
    _$v = other as _$AvailableEntityKeysV2;
  }

  @override
  void update(void Function(AvailableEntityKeysV2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailableEntityKeysV2 build() => _build();

  _$AvailableEntityKeysV2 _build() {
    _$AvailableEntityKeysV2 _$result;
    try {
      _$result =
          _$v ??
          _$AvailableEntityKeysV2._(
            totalEntities: BuiltValueNullFieldError.checkNotNull(
              totalEntities,
              r'AvailableEntityKeysV2',
              'totalEntities',
            ),
            entityTypes: entityTypes.build(),
            timeseries: _timeseries?.build(),
            attributes: _attributes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityTypes';
        entityTypes.build();
        _$failedField = 'timeseries';
        _timeseries?.build();
        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AvailableEntityKeysV2',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

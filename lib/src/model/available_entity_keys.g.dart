// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_entity_keys.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailableEntityKeys extends AvailableEntityKeys {
  @override
  final BuiltSet<EntityType> entityTypes;
  @override
  final BuiltSet<String> timeseries;
  @override
  final BuiltSet<String> attribute;

  factory _$AvailableEntityKeys([
    void Function(AvailableEntityKeysBuilder)? updates,
  ]) => (AvailableEntityKeysBuilder()..update(updates))._build();

  _$AvailableEntityKeys._({
    required this.entityTypes,
    required this.timeseries,
    required this.attribute,
  }) : super._();
  @override
  AvailableEntityKeys rebuild(
    void Function(AvailableEntityKeysBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AvailableEntityKeysBuilder toBuilder() =>
      AvailableEntityKeysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailableEntityKeys &&
        entityTypes == other.entityTypes &&
        timeseries == other.timeseries &&
        attribute == other.attribute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jc(_$hash, timeseries.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailableEntityKeys')
          ..add('entityTypes', entityTypes)
          ..add('timeseries', timeseries)
          ..add('attribute', attribute))
        .toString();
  }
}

class AvailableEntityKeysBuilder
    implements Builder<AvailableEntityKeys, AvailableEntityKeysBuilder> {
  _$AvailableEntityKeys? _$v;

  SetBuilder<EntityType>? _entityTypes;
  SetBuilder<EntityType> get entityTypes =>
      _$this._entityTypes ??= SetBuilder<EntityType>();
  set entityTypes(SetBuilder<EntityType>? entityTypes) =>
      _$this._entityTypes = entityTypes;

  SetBuilder<String>? _timeseries;
  SetBuilder<String> get timeseries =>
      _$this._timeseries ??= SetBuilder<String>();
  set timeseries(SetBuilder<String>? timeseries) =>
      _$this._timeseries = timeseries;

  SetBuilder<String>? _attribute;
  SetBuilder<String> get attribute =>
      _$this._attribute ??= SetBuilder<String>();
  set attribute(SetBuilder<String>? attribute) => _$this._attribute = attribute;

  AvailableEntityKeysBuilder() {
    AvailableEntityKeys._defaults(this);
  }

  AvailableEntityKeysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityTypes = $v.entityTypes.toBuilder();
      _timeseries = $v.timeseries.toBuilder();
      _attribute = $v.attribute.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailableEntityKeys other) {
    _$v = other as _$AvailableEntityKeys;
  }

  @override
  void update(void Function(AvailableEntityKeysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailableEntityKeys build() => _build();

  _$AvailableEntityKeys _build() {
    _$AvailableEntityKeys _$result;
    try {
      _$result =
          _$v ??
          _$AvailableEntityKeys._(
            entityTypes: entityTypes.build(),
            timeseries: timeseries.build(),
            attribute: attribute.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityTypes';
        entityTypes.build();
        _$failedField = 'timeseries';
        timeseries.build();
        _$failedField = 'attribute';
        attribute.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AvailableEntityKeys',
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

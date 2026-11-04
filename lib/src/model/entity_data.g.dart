// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityData extends EntityData {
  @override
  final EntityId? entityId;
  @override
  final bool? readAttrs;
  @override
  final bool? readTs;
  @override
  final BuiltMap<String, BuiltMap<String, TsValue>>? latest;
  @override
  final BuiltMap<String, BuiltList<TsValue>>? timeseries;
  @override
  final BuiltMap<String, ComparisonTsValue>? aggLatest;

  factory _$EntityData([void Function(EntityDataBuilder)? updates]) =>
      (EntityDataBuilder()..update(updates))._build();

  _$EntityData._({
    this.entityId,
    this.readAttrs,
    this.readTs,
    this.latest,
    this.timeseries,
    this.aggLatest,
  }) : super._();
  @override
  EntityData rebuild(void Function(EntityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityDataBuilder toBuilder() => EntityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityData &&
        entityId == other.entityId &&
        readAttrs == other.readAttrs &&
        readTs == other.readTs &&
        latest == other.latest &&
        timeseries == other.timeseries &&
        aggLatest == other.aggLatest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, readAttrs.hashCode);
    _$hash = $jc(_$hash, readTs.hashCode);
    _$hash = $jc(_$hash, latest.hashCode);
    _$hash = $jc(_$hash, timeseries.hashCode);
    _$hash = $jc(_$hash, aggLatest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityData')
          ..add('entityId', entityId)
          ..add('readAttrs', readAttrs)
          ..add('readTs', readTs)
          ..add('latest', latest)
          ..add('timeseries', timeseries)
          ..add('aggLatest', aggLatest))
        .toString();
  }
}

class EntityDataBuilder implements Builder<EntityData, EntityDataBuilder> {
  _$EntityData? _$v;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(EntityId? entityId) => _$this._entityId = entityId;

  bool? _readAttrs;
  bool? get readAttrs => _$this._readAttrs;
  set readAttrs(bool? readAttrs) => _$this._readAttrs = readAttrs;

  bool? _readTs;
  bool? get readTs => _$this._readTs;
  set readTs(bool? readTs) => _$this._readTs = readTs;

  MapBuilder<String, BuiltMap<String, TsValue>>? _latest;
  MapBuilder<String, BuiltMap<String, TsValue>> get latest =>
      _$this._latest ??= MapBuilder<String, BuiltMap<String, TsValue>>();
  set latest(MapBuilder<String, BuiltMap<String, TsValue>>? latest) =>
      _$this._latest = latest;

  MapBuilder<String, BuiltList<TsValue>>? _timeseries;
  MapBuilder<String, BuiltList<TsValue>> get timeseries =>
      _$this._timeseries ??= MapBuilder<String, BuiltList<TsValue>>();
  set timeseries(MapBuilder<String, BuiltList<TsValue>>? timeseries) =>
      _$this._timeseries = timeseries;

  MapBuilder<String, ComparisonTsValue>? _aggLatest;
  MapBuilder<String, ComparisonTsValue> get aggLatest =>
      _$this._aggLatest ??= MapBuilder<String, ComparisonTsValue>();
  set aggLatest(MapBuilder<String, ComparisonTsValue>? aggLatest) =>
      _$this._aggLatest = aggLatest;

  EntityDataBuilder() {
    EntityData._defaults(this);
  }

  EntityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityId = $v.entityId;
      _readAttrs = $v.readAttrs;
      _readTs = $v.readTs;
      _latest = $v.latest?.toBuilder();
      _timeseries = $v.timeseries?.toBuilder();
      _aggLatest = $v.aggLatest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityData other) {
    _$v = other as _$EntityData;
  }

  @override
  void update(void Function(EntityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityData build() => _build();

  _$EntityData _build() {
    _$EntityData _$result;
    try {
      _$result =
          _$v ??
          _$EntityData._(
            entityId: entityId,
            readAttrs: readAttrs,
            readTs: readTs,
            latest: _latest?.build(),
            timeseries: _timeseries?.build(),
            aggLatest: _aggLatest?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'latest';
        _latest?.build();
        _$failedField = 'timeseries';
        _timeseries?.build();
        _$failedField = 'aggLatest';
        _aggLatest?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityData',
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

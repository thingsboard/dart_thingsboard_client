// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DataSource extends DataSource {
  @override
  final DataSourceType? type;
  @override
  final String? deviceId;
  @override
  final String? entityAliasId;
  @override
  final String? filterId;
  @override
  final BuiltList<DataKey>? dataKeys;
  @override
  final BuiltList<DataKey>? latestDataKeys;
  @override
  final AlarmFilterConfig? alarmFilterConfig;

  factory _$DataSource([void Function(DataSourceBuilder)? updates]) =>
      (DataSourceBuilder()..update(updates))._build();

  _$DataSource._({
    this.type,
    this.deviceId,
    this.entityAliasId,
    this.filterId,
    this.dataKeys,
    this.latestDataKeys,
    this.alarmFilterConfig,
  }) : super._();
  @override
  DataSource rebuild(void Function(DataSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataSourceBuilder toBuilder() => DataSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSource &&
        type == other.type &&
        deviceId == other.deviceId &&
        entityAliasId == other.entityAliasId &&
        filterId == other.filterId &&
        dataKeys == other.dataKeys &&
        latestDataKeys == other.latestDataKeys &&
        alarmFilterConfig == other.alarmFilterConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, entityAliasId.hashCode);
    _$hash = $jc(_$hash, filterId.hashCode);
    _$hash = $jc(_$hash, dataKeys.hashCode);
    _$hash = $jc(_$hash, latestDataKeys.hashCode);
    _$hash = $jc(_$hash, alarmFilterConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataSource')
          ..add('type', type)
          ..add('deviceId', deviceId)
          ..add('entityAliasId', entityAliasId)
          ..add('filterId', filterId)
          ..add('dataKeys', dataKeys)
          ..add('latestDataKeys', latestDataKeys)
          ..add('alarmFilterConfig', alarmFilterConfig))
        .toString();
  }
}

class DataSourceBuilder implements Builder<DataSource, DataSourceBuilder> {
  _$DataSource? _$v;

  DataSourceType? _type;
  DataSourceType? get type => _$this._type;
  set type(DataSourceType? type) => _$this._type = type;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _entityAliasId;
  String? get entityAliasId => _$this._entityAliasId;
  set entityAliasId(String? entityAliasId) =>
      _$this._entityAliasId = entityAliasId;

  String? _filterId;
  String? get filterId => _$this._filterId;
  set filterId(String? filterId) => _$this._filterId = filterId;

  ListBuilder<DataKey>? _dataKeys;
  ListBuilder<DataKey> get dataKeys =>
      _$this._dataKeys ??= ListBuilder<DataKey>();
  set dataKeys(ListBuilder<DataKey>? dataKeys) => _$this._dataKeys = dataKeys;

  ListBuilder<DataKey>? _latestDataKeys;
  ListBuilder<DataKey> get latestDataKeys =>
      _$this._latestDataKeys ??= ListBuilder<DataKey>();
  set latestDataKeys(ListBuilder<DataKey>? latestDataKeys) =>
      _$this._latestDataKeys = latestDataKeys;

  AlarmFilterConfigBuilder? _alarmFilterConfig;
  AlarmFilterConfigBuilder get alarmFilterConfig =>
      _$this._alarmFilterConfig ??= AlarmFilterConfigBuilder();
  set alarmFilterConfig(AlarmFilterConfigBuilder? alarmFilterConfig) =>
      _$this._alarmFilterConfig = alarmFilterConfig;

  DataSourceBuilder() {
    DataSource._defaults(this);
  }

  DataSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _deviceId = $v.deviceId;
      _entityAliasId = $v.entityAliasId;
      _filterId = $v.filterId;
      _dataKeys = $v.dataKeys?.toBuilder();
      _latestDataKeys = $v.latestDataKeys?.toBuilder();
      _alarmFilterConfig = $v.alarmFilterConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSource other) {
    _$v = other as _$DataSource;
  }

  @override
  void update(void Function(DataSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataSource build() => _build();

  _$DataSource _build() {
    _$DataSource _$result;
    try {
      _$result =
          _$v ??
          _$DataSource._(
            type: type,
            deviceId: deviceId,
            entityAliasId: entityAliasId,
            filterId: filterId,
            dataKeys: _dataKeys?.build(),
            latestDataKeys: _latestDataKeys?.build(),
            alarmFilterConfig: _alarmFilterConfig?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataKeys';
        _dataKeys?.build();
        _$failedField = 'latestDataKeys';
        _latestDataKeys?.build();
        _$failedField = 'alarmFilterConfig';
        _alarmFilterConfig?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DataSource',
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

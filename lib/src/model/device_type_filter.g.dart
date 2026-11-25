// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_type_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceTypeFilter extends DeviceTypeFilter {
  @override
  final String? deviceType;
  @override
  final BuiltList<String>? deviceTypes;
  @override
  final String? deviceNameFilter;
  @override
  final String type;

  factory _$DeviceTypeFilter([
    void Function(DeviceTypeFilterBuilder)? updates,
  ]) => (DeviceTypeFilterBuilder()..update(updates))._build();

  _$DeviceTypeFilter._({
    this.deviceType,
    this.deviceTypes,
    this.deviceNameFilter,
    required this.type,
  }) : super._();
  @override
  DeviceTypeFilter rebuild(void Function(DeviceTypeFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceTypeFilterBuilder toBuilder() =>
      DeviceTypeFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceTypeFilter &&
        deviceType == other.deviceType &&
        deviceTypes == other.deviceTypes &&
        deviceNameFilter == other.deviceNameFilter &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, deviceTypes.hashCode);
    _$hash = $jc(_$hash, deviceNameFilter.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceTypeFilter')
          ..add('deviceType', deviceType)
          ..add('deviceTypes', deviceTypes)
          ..add('deviceNameFilter', deviceNameFilter)
          ..add('type', type))
        .toString();
  }
}

class DeviceTypeFilterBuilder
    implements
        Builder<DeviceTypeFilter, DeviceTypeFilterBuilder>,
        EntityFilterBuilder {
  _$DeviceTypeFilter? _$v;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(covariant String? deviceType) =>
      _$this._deviceType = deviceType;

  ListBuilder<String>? _deviceTypes;
  ListBuilder<String> get deviceTypes =>
      _$this._deviceTypes ??= ListBuilder<String>();
  set deviceTypes(covariant ListBuilder<String>? deviceTypes) =>
      _$this._deviceTypes = deviceTypes;

  String? _deviceNameFilter;
  String? get deviceNameFilter => _$this._deviceNameFilter;
  set deviceNameFilter(covariant String? deviceNameFilter) =>
      _$this._deviceNameFilter = deviceNameFilter;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DeviceTypeFilterBuilder() {
    DeviceTypeFilter._defaults(this);
  }

  DeviceTypeFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceType = $v.deviceType;
      _deviceTypes = $v.deviceTypes?.toBuilder();
      _deviceNameFilter = $v.deviceNameFilter;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DeviceTypeFilter other) {
    _$v = other as _$DeviceTypeFilter;
  }

  @override
  void update(void Function(DeviceTypeFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceTypeFilter build() => _build();

  _$DeviceTypeFilter _build() {
    _$DeviceTypeFilter _$result;
    try {
      _$result =
          _$v ??
          _$DeviceTypeFilter._(
            deviceType: deviceType,
            deviceTypes: _deviceTypes?.build(),
            deviceNameFilter: deviceNameFilter,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DeviceTypeFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceTypes';
        _deviceTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceTypeFilter',
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

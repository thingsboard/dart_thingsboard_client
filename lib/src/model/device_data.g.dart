// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceData extends DeviceData {
  @override
  final DeviceConfiguration? configuration;
  @override
  final DeviceTransportConfiguration? transportConfiguration;

  factory _$DeviceData([void Function(DeviceDataBuilder)? updates]) =>
      (DeviceDataBuilder()..update(updates))._build();

  _$DeviceData._({this.configuration, this.transportConfiguration}) : super._();
  @override
  DeviceData rebuild(void Function(DeviceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceDataBuilder toBuilder() => DeviceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceData &&
        configuration == other.configuration &&
        transportConfiguration == other.transportConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, transportConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceData')
          ..add('configuration', configuration)
          ..add('transportConfiguration', transportConfiguration))
        .toString();
  }
}

class DeviceDataBuilder implements Builder<DeviceData, DeviceDataBuilder> {
  _$DeviceData? _$v;

  DeviceConfiguration? _configuration;
  DeviceConfiguration? get configuration => _$this._configuration;
  set configuration(DeviceConfiguration? configuration) =>
      _$this._configuration = configuration;

  DeviceTransportConfiguration? _transportConfiguration;
  DeviceTransportConfiguration? get transportConfiguration =>
      _$this._transportConfiguration;
  set transportConfiguration(
    DeviceTransportConfiguration? transportConfiguration,
  ) => _$this._transportConfiguration = transportConfiguration;

  DeviceDataBuilder() {
    DeviceData._defaults(this);
  }

  DeviceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configuration = $v.configuration;
      _transportConfiguration = $v.transportConfiguration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceData other) {
    _$v = other as _$DeviceData;
  }

  @override
  void update(void Function(DeviceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceData build() => _build();

  _$DeviceData _build() {
    final _$result =
        _$v ??
        _$DeviceData._(
          configuration: configuration,
          transportConfiguration: transportConfiguration,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

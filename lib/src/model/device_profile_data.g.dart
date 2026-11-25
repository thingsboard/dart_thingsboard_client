// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceProfileData extends DeviceProfileData {
  @override
  final DeviceProfileConfiguration? configuration;
  @override
  final DeviceProfileTransportConfiguration? transportConfiguration;
  @override
  final DeviceProfileProvisionConfiguration? provisionConfiguration;

  factory _$DeviceProfileData([
    void Function(DeviceProfileDataBuilder)? updates,
  ]) => (DeviceProfileDataBuilder()..update(updates))._build();

  _$DeviceProfileData._({
    this.configuration,
    this.transportConfiguration,
    this.provisionConfiguration,
  }) : super._();
  @override
  DeviceProfileData rebuild(void Function(DeviceProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceProfileDataBuilder toBuilder() =>
      DeviceProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceProfileData &&
        configuration == other.configuration &&
        transportConfiguration == other.transportConfiguration &&
        provisionConfiguration == other.provisionConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, transportConfiguration.hashCode);
    _$hash = $jc(_$hash, provisionConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceProfileData')
          ..add('configuration', configuration)
          ..add('transportConfiguration', transportConfiguration)
          ..add('provisionConfiguration', provisionConfiguration))
        .toString();
  }
}

class DeviceProfileDataBuilder
    implements Builder<DeviceProfileData, DeviceProfileDataBuilder> {
  _$DeviceProfileData? _$v;

  DeviceProfileConfiguration? _configuration;
  DeviceProfileConfiguration? get configuration => _$this._configuration;
  set configuration(DeviceProfileConfiguration? configuration) =>
      _$this._configuration = configuration;

  DeviceProfileTransportConfiguration? _transportConfiguration;
  DeviceProfileTransportConfiguration? get transportConfiguration =>
      _$this._transportConfiguration;
  set transportConfiguration(
    DeviceProfileTransportConfiguration? transportConfiguration,
  ) => _$this._transportConfiguration = transportConfiguration;

  DeviceProfileProvisionConfiguration? _provisionConfiguration;
  DeviceProfileProvisionConfiguration? get provisionConfiguration =>
      _$this._provisionConfiguration;
  set provisionConfiguration(
    DeviceProfileProvisionConfiguration? provisionConfiguration,
  ) => _$this._provisionConfiguration = provisionConfiguration;

  DeviceProfileDataBuilder() {
    DeviceProfileData._defaults(this);
  }

  DeviceProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configuration = $v.configuration;
      _transportConfiguration = $v.transportConfiguration;
      _provisionConfiguration = $v.provisionConfiguration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceProfileData other) {
    _$v = other as _$DeviceProfileData;
  }

  @override
  void update(void Function(DeviceProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceProfileData build() => _build();

  _$DeviceProfileData _build() {
    final _$result =
        _$v ??
        _$DeviceProfileData._(
          configuration: configuration,
          transportConfiguration: transportConfiguration,
          provisionConfiguration: provisionConfiguration,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

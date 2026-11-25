// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snmp_device_profile_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnmpDeviceProfileTransportConfiguration
    extends SnmpDeviceProfileTransportConfiguration {
  @override
  final int? retries;
  @override
  final int? timeoutMs;
  @override
  final BuiltList<SnmpCommunicationConfig>? communicationConfigs;
  @override
  final String type;

  factory _$SnmpDeviceProfileTransportConfiguration([
    void Function(SnmpDeviceProfileTransportConfigurationBuilder)? updates,
  ]) => (SnmpDeviceProfileTransportConfigurationBuilder()..update(updates))
      ._build();

  _$SnmpDeviceProfileTransportConfiguration._({
    this.retries,
    this.timeoutMs,
    this.communicationConfigs,
    required this.type,
  }) : super._();
  @override
  SnmpDeviceProfileTransportConfiguration rebuild(
    void Function(SnmpDeviceProfileTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SnmpDeviceProfileTransportConfigurationBuilder toBuilder() =>
      SnmpDeviceProfileTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnmpDeviceProfileTransportConfiguration &&
        retries == other.retries &&
        timeoutMs == other.timeoutMs &&
        communicationConfigs == other.communicationConfigs &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, retries.hashCode);
    _$hash = $jc(_$hash, timeoutMs.hashCode);
    _$hash = $jc(_$hash, communicationConfigs.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SnmpDeviceProfileTransportConfiguration',
          )
          ..add('retries', retries)
          ..add('timeoutMs', timeoutMs)
          ..add('communicationConfigs', communicationConfigs)
          ..add('type', type))
        .toString();
  }
}

class SnmpDeviceProfileTransportConfigurationBuilder
    implements
        Builder<
          SnmpDeviceProfileTransportConfiguration,
          SnmpDeviceProfileTransportConfigurationBuilder
        >,
        DeviceProfileTransportConfigurationBuilder {
  _$SnmpDeviceProfileTransportConfiguration? _$v;

  int? _retries;
  int? get retries => _$this._retries;
  set retries(covariant int? retries) => _$this._retries = retries;

  int? _timeoutMs;
  int? get timeoutMs => _$this._timeoutMs;
  set timeoutMs(covariant int? timeoutMs) => _$this._timeoutMs = timeoutMs;

  ListBuilder<SnmpCommunicationConfig>? _communicationConfigs;
  ListBuilder<SnmpCommunicationConfig> get communicationConfigs =>
      _$this._communicationConfigs ??= ListBuilder<SnmpCommunicationConfig>();
  set communicationConfigs(
    covariant ListBuilder<SnmpCommunicationConfig>? communicationConfigs,
  ) => _$this._communicationConfigs = communicationConfigs;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SnmpDeviceProfileTransportConfigurationBuilder() {
    SnmpDeviceProfileTransportConfiguration._defaults(this);
  }

  SnmpDeviceProfileTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retries = $v.retries;
      _timeoutMs = $v.timeoutMs;
      _communicationConfigs = $v.communicationConfigs?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SnmpDeviceProfileTransportConfiguration other) {
    _$v = other as _$SnmpDeviceProfileTransportConfiguration;
  }

  @override
  void update(
    void Function(SnmpDeviceProfileTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SnmpDeviceProfileTransportConfiguration build() => _build();

  _$SnmpDeviceProfileTransportConfiguration _build() {
    _$SnmpDeviceProfileTransportConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$SnmpDeviceProfileTransportConfiguration._(
            retries: retries,
            timeoutMs: timeoutMs,
            communicationConfigs: _communicationConfigs?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SnmpDeviceProfileTransportConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'communicationConfigs';
        _communicationConfigs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SnmpDeviceProfileTransportConfiguration',
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

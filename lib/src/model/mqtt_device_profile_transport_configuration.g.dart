// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mqtt_device_profile_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MqttDeviceProfileTransportConfiguration
    extends MqttDeviceProfileTransportConfiguration {
  @override
  final TransportPayloadTypeConfiguration? transportPayloadTypeConfiguration;
  @override
  final bool? sparkplug;
  @override
  final String? deviceTelemetryTopic;
  @override
  final String? deviceAttributesTopic;
  @override
  final bool? sendAckOnValidationException;
  @override
  final BuiltSet<String>? sparkplugAttributesMetricNames;
  @override
  final String? deviceAttributesSubscribeTopic;
  @override
  final String type;

  factory _$MqttDeviceProfileTransportConfiguration([
    void Function(MqttDeviceProfileTransportConfigurationBuilder)? updates,
  ]) => (MqttDeviceProfileTransportConfigurationBuilder()..update(updates))
      ._build();

  _$MqttDeviceProfileTransportConfiguration._({
    this.transportPayloadTypeConfiguration,
    this.sparkplug,
    this.deviceTelemetryTopic,
    this.deviceAttributesTopic,
    this.sendAckOnValidationException,
    this.sparkplugAttributesMetricNames,
    this.deviceAttributesSubscribeTopic,
    required this.type,
  }) : super._();
  @override
  MqttDeviceProfileTransportConfiguration rebuild(
    void Function(MqttDeviceProfileTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MqttDeviceProfileTransportConfigurationBuilder toBuilder() =>
      MqttDeviceProfileTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MqttDeviceProfileTransportConfiguration &&
        transportPayloadTypeConfiguration ==
            other.transportPayloadTypeConfiguration &&
        sparkplug == other.sparkplug &&
        deviceTelemetryTopic == other.deviceTelemetryTopic &&
        deviceAttributesTopic == other.deviceAttributesTopic &&
        sendAckOnValidationException == other.sendAckOnValidationException &&
        sparkplugAttributesMetricNames ==
            other.sparkplugAttributesMetricNames &&
        deviceAttributesSubscribeTopic ==
            other.deviceAttributesSubscribeTopic &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transportPayloadTypeConfiguration.hashCode);
    _$hash = $jc(_$hash, sparkplug.hashCode);
    _$hash = $jc(_$hash, deviceTelemetryTopic.hashCode);
    _$hash = $jc(_$hash, deviceAttributesTopic.hashCode);
    _$hash = $jc(_$hash, sendAckOnValidationException.hashCode);
    _$hash = $jc(_$hash, sparkplugAttributesMetricNames.hashCode);
    _$hash = $jc(_$hash, deviceAttributesSubscribeTopic.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'MqttDeviceProfileTransportConfiguration',
          )
          ..add(
            'transportPayloadTypeConfiguration',
            transportPayloadTypeConfiguration,
          )
          ..add('sparkplug', sparkplug)
          ..add('deviceTelemetryTopic', deviceTelemetryTopic)
          ..add('deviceAttributesTopic', deviceAttributesTopic)
          ..add('sendAckOnValidationException', sendAckOnValidationException)
          ..add(
            'sparkplugAttributesMetricNames',
            sparkplugAttributesMetricNames,
          )
          ..add(
            'deviceAttributesSubscribeTopic',
            deviceAttributesSubscribeTopic,
          )
          ..add('type', type))
        .toString();
  }
}

class MqttDeviceProfileTransportConfigurationBuilder
    implements
        Builder<
          MqttDeviceProfileTransportConfiguration,
          MqttDeviceProfileTransportConfigurationBuilder
        >,
        DeviceProfileTransportConfigurationBuilder {
  _$MqttDeviceProfileTransportConfiguration? _$v;

  TransportPayloadTypeConfiguration? _transportPayloadTypeConfiguration;
  TransportPayloadTypeConfiguration? get transportPayloadTypeConfiguration =>
      _$this._transportPayloadTypeConfiguration;
  set transportPayloadTypeConfiguration(
    covariant TransportPayloadTypeConfiguration?
    transportPayloadTypeConfiguration,
  ) => _$this._transportPayloadTypeConfiguration =
      transportPayloadTypeConfiguration;

  bool? _sparkplug;
  bool? get sparkplug => _$this._sparkplug;
  set sparkplug(covariant bool? sparkplug) => _$this._sparkplug = sparkplug;

  String? _deviceTelemetryTopic;
  String? get deviceTelemetryTopic => _$this._deviceTelemetryTopic;
  set deviceTelemetryTopic(covariant String? deviceTelemetryTopic) =>
      _$this._deviceTelemetryTopic = deviceTelemetryTopic;

  String? _deviceAttributesTopic;
  String? get deviceAttributesTopic => _$this._deviceAttributesTopic;
  set deviceAttributesTopic(covariant String? deviceAttributesTopic) =>
      _$this._deviceAttributesTopic = deviceAttributesTopic;

  bool? _sendAckOnValidationException;
  bool? get sendAckOnValidationException =>
      _$this._sendAckOnValidationException;
  set sendAckOnValidationException(
    covariant bool? sendAckOnValidationException,
  ) => _$this._sendAckOnValidationException = sendAckOnValidationException;

  SetBuilder<String>? _sparkplugAttributesMetricNames;
  SetBuilder<String> get sparkplugAttributesMetricNames =>
      _$this._sparkplugAttributesMetricNames ??= SetBuilder<String>();
  set sparkplugAttributesMetricNames(
    covariant SetBuilder<String>? sparkplugAttributesMetricNames,
  ) => _$this._sparkplugAttributesMetricNames = sparkplugAttributesMetricNames;

  String? _deviceAttributesSubscribeTopic;
  String? get deviceAttributesSubscribeTopic =>
      _$this._deviceAttributesSubscribeTopic;
  set deviceAttributesSubscribeTopic(
    covariant String? deviceAttributesSubscribeTopic,
  ) => _$this._deviceAttributesSubscribeTopic = deviceAttributesSubscribeTopic;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  MqttDeviceProfileTransportConfigurationBuilder() {
    MqttDeviceProfileTransportConfiguration._defaults(this);
  }

  MqttDeviceProfileTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transportPayloadTypeConfiguration = $v.transportPayloadTypeConfiguration;
      _sparkplug = $v.sparkplug;
      _deviceTelemetryTopic = $v.deviceTelemetryTopic;
      _deviceAttributesTopic = $v.deviceAttributesTopic;
      _sendAckOnValidationException = $v.sendAckOnValidationException;
      _sparkplugAttributesMetricNames = $v.sparkplugAttributesMetricNames
          ?.toBuilder();
      _deviceAttributesSubscribeTopic = $v.deviceAttributesSubscribeTopic;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MqttDeviceProfileTransportConfiguration other) {
    _$v = other as _$MqttDeviceProfileTransportConfiguration;
  }

  @override
  void update(
    void Function(MqttDeviceProfileTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MqttDeviceProfileTransportConfiguration build() => _build();

  _$MqttDeviceProfileTransportConfiguration _build() {
    _$MqttDeviceProfileTransportConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$MqttDeviceProfileTransportConfiguration._(
            transportPayloadTypeConfiguration:
                transportPayloadTypeConfiguration,
            sparkplug: sparkplug,
            deviceTelemetryTopic: deviceTelemetryTopic,
            deviceAttributesTopic: deviceAttributesTopic,
            sendAckOnValidationException: sendAckOnValidationException,
            sparkplugAttributesMetricNames: _sparkplugAttributesMetricNames
                ?.build(),
            deviceAttributesSubscribeTopic: deviceAttributesSubscribeTopic,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'MqttDeviceProfileTransportConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sparkplugAttributesMetricNames';
        _sparkplugAttributesMetricNames?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MqttDeviceProfileTransportConfiguration',
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

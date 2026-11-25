// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mqtt_device_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MqttDeviceTransportConfiguration
    extends MqttDeviceTransportConfiguration {
  @override
  final String type;

  factory _$MqttDeviceTransportConfiguration([
    void Function(MqttDeviceTransportConfigurationBuilder)? updates,
  ]) => (MqttDeviceTransportConfigurationBuilder()..update(updates))._build();

  _$MqttDeviceTransportConfiguration._({required this.type}) : super._();
  @override
  MqttDeviceTransportConfiguration rebuild(
    void Function(MqttDeviceTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MqttDeviceTransportConfigurationBuilder toBuilder() =>
      MqttDeviceTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MqttDeviceTransportConfiguration && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'MqttDeviceTransportConfiguration',
    )..add('type', type)).toString();
  }
}

class MqttDeviceTransportConfigurationBuilder
    implements
        Builder<
          MqttDeviceTransportConfiguration,
          MqttDeviceTransportConfigurationBuilder
        >,
        DeviceTransportConfigurationBuilder {
  _$MqttDeviceTransportConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  MqttDeviceTransportConfigurationBuilder() {
    MqttDeviceTransportConfiguration._defaults(this);
  }

  MqttDeviceTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MqttDeviceTransportConfiguration other) {
    _$v = other as _$MqttDeviceTransportConfiguration;
  }

  @override
  void update(void Function(MqttDeviceTransportConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MqttDeviceTransportConfiguration build() => _build();

  _$MqttDeviceTransportConfiguration _build() {
    final _$result =
        _$v ??
        _$MqttDeviceTransportConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'MqttDeviceTransportConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

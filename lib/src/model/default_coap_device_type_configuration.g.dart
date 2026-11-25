// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_coap_device_type_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultCoapDeviceTypeConfiguration
    extends DefaultCoapDeviceTypeConfiguration {
  @override
  final TransportPayloadTypeConfiguration? transportPayloadTypeConfiguration;
  @override
  final String coapDeviceType;

  factory _$DefaultCoapDeviceTypeConfiguration([
    void Function(DefaultCoapDeviceTypeConfigurationBuilder)? updates,
  ]) => (DefaultCoapDeviceTypeConfigurationBuilder()..update(updates))._build();

  _$DefaultCoapDeviceTypeConfiguration._({
    this.transportPayloadTypeConfiguration,
    required this.coapDeviceType,
  }) : super._();
  @override
  DefaultCoapDeviceTypeConfiguration rebuild(
    void Function(DefaultCoapDeviceTypeConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultCoapDeviceTypeConfigurationBuilder toBuilder() =>
      DefaultCoapDeviceTypeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultCoapDeviceTypeConfiguration &&
        transportPayloadTypeConfiguration ==
            other.transportPayloadTypeConfiguration &&
        coapDeviceType == other.coapDeviceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transportPayloadTypeConfiguration.hashCode);
    _$hash = $jc(_$hash, coapDeviceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefaultCoapDeviceTypeConfiguration')
          ..add(
            'transportPayloadTypeConfiguration',
            transportPayloadTypeConfiguration,
          )
          ..add('coapDeviceType', coapDeviceType))
        .toString();
  }
}

class DefaultCoapDeviceTypeConfigurationBuilder
    implements
        Builder<
          DefaultCoapDeviceTypeConfiguration,
          DefaultCoapDeviceTypeConfigurationBuilder
        >,
        CoapDeviceTypeConfigurationBuilder {
  _$DefaultCoapDeviceTypeConfiguration? _$v;

  TransportPayloadTypeConfiguration? _transportPayloadTypeConfiguration;
  TransportPayloadTypeConfiguration? get transportPayloadTypeConfiguration =>
      _$this._transportPayloadTypeConfiguration;
  set transportPayloadTypeConfiguration(
    covariant TransportPayloadTypeConfiguration?
    transportPayloadTypeConfiguration,
  ) => _$this._transportPayloadTypeConfiguration =
      transportPayloadTypeConfiguration;

  String? _coapDeviceType;
  String? get coapDeviceType => _$this._coapDeviceType;
  set coapDeviceType(covariant String? coapDeviceType) =>
      _$this._coapDeviceType = coapDeviceType;

  DefaultCoapDeviceTypeConfigurationBuilder() {
    DefaultCoapDeviceTypeConfiguration._defaults(this);
  }

  DefaultCoapDeviceTypeConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transportPayloadTypeConfiguration = $v.transportPayloadTypeConfiguration;
      _coapDeviceType = $v.coapDeviceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultCoapDeviceTypeConfiguration other) {
    _$v = other as _$DefaultCoapDeviceTypeConfiguration;
  }

  @override
  void update(
    void Function(DefaultCoapDeviceTypeConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DefaultCoapDeviceTypeConfiguration build() => _build();

  _$DefaultCoapDeviceTypeConfiguration _build() {
    final _$result =
        _$v ??
        _$DefaultCoapDeviceTypeConfiguration._(
          transportPayloadTypeConfiguration: transportPayloadTypeConfiguration,
          coapDeviceType: BuiltValueNullFieldError.checkNotNull(
            coapDeviceType,
            r'DefaultCoapDeviceTypeConfiguration',
            'coapDeviceType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

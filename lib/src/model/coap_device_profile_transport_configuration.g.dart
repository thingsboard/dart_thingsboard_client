// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coap_device_profile_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoapDeviceProfileTransportConfiguration
    extends CoapDeviceProfileTransportConfiguration {
  @override
  final CoapDeviceTypeConfiguration? coapDeviceTypeConfiguration;
  @override
  final PowerSavingConfiguration? clientSettings;
  @override
  final String type;

  factory _$CoapDeviceProfileTransportConfiguration([
    void Function(CoapDeviceProfileTransportConfigurationBuilder)? updates,
  ]) => (CoapDeviceProfileTransportConfigurationBuilder()..update(updates))
      ._build();

  _$CoapDeviceProfileTransportConfiguration._({
    this.coapDeviceTypeConfiguration,
    this.clientSettings,
    required this.type,
  }) : super._();
  @override
  CoapDeviceProfileTransportConfiguration rebuild(
    void Function(CoapDeviceProfileTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CoapDeviceProfileTransportConfigurationBuilder toBuilder() =>
      CoapDeviceProfileTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoapDeviceProfileTransportConfiguration &&
        coapDeviceTypeConfiguration == other.coapDeviceTypeConfiguration &&
        clientSettings == other.clientSettings &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coapDeviceTypeConfiguration.hashCode);
    _$hash = $jc(_$hash, clientSettings.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CoapDeviceProfileTransportConfiguration',
          )
          ..add('coapDeviceTypeConfiguration', coapDeviceTypeConfiguration)
          ..add('clientSettings', clientSettings)
          ..add('type', type))
        .toString();
  }
}

class CoapDeviceProfileTransportConfigurationBuilder
    implements
        Builder<
          CoapDeviceProfileTransportConfiguration,
          CoapDeviceProfileTransportConfigurationBuilder
        >,
        DeviceProfileTransportConfigurationBuilder {
  _$CoapDeviceProfileTransportConfiguration? _$v;

  CoapDeviceTypeConfiguration? _coapDeviceTypeConfiguration;
  CoapDeviceTypeConfiguration? get coapDeviceTypeConfiguration =>
      _$this._coapDeviceTypeConfiguration;
  set coapDeviceTypeConfiguration(
    covariant CoapDeviceTypeConfiguration? coapDeviceTypeConfiguration,
  ) => _$this._coapDeviceTypeConfiguration = coapDeviceTypeConfiguration;

  PowerSavingConfigurationBuilder? _clientSettings;
  PowerSavingConfigurationBuilder get clientSettings =>
      _$this._clientSettings ??= PowerSavingConfigurationBuilder();
  set clientSettings(
    covariant PowerSavingConfigurationBuilder? clientSettings,
  ) => _$this._clientSettings = clientSettings;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  CoapDeviceProfileTransportConfigurationBuilder() {
    CoapDeviceProfileTransportConfiguration._defaults(this);
  }

  CoapDeviceProfileTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coapDeviceTypeConfiguration = $v.coapDeviceTypeConfiguration;
      _clientSettings = $v.clientSettings?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CoapDeviceProfileTransportConfiguration other) {
    _$v = other as _$CoapDeviceProfileTransportConfiguration;
  }

  @override
  void update(
    void Function(CoapDeviceProfileTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CoapDeviceProfileTransportConfiguration build() => _build();

  _$CoapDeviceProfileTransportConfiguration _build() {
    _$CoapDeviceProfileTransportConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$CoapDeviceProfileTransportConfiguration._(
            coapDeviceTypeConfiguration: coapDeviceTypeConfiguration,
            clientSettings: _clientSettings?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'CoapDeviceProfileTransportConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientSettings';
        _clientSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CoapDeviceProfileTransportConfiguration',
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lwm2m_device_profile_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Lwm2mDeviceProfileTransportConfiguration
    extends Lwm2mDeviceProfileTransportConfiguration {
  @override
  final TelemetryMappingConfiguration? observeAttr;
  @override
  final bool? bootstrapServerUpdateEnable;
  @override
  final BuiltList<LwM2MBootstrapServerCredential>? bootstrap;
  @override
  final OtherConfiguration? clientLwM2mSettings;
  @override
  final String type;

  factory _$Lwm2mDeviceProfileTransportConfiguration([
    void Function(Lwm2mDeviceProfileTransportConfigurationBuilder)? updates,
  ]) => (Lwm2mDeviceProfileTransportConfigurationBuilder()..update(updates))
      ._build();

  _$Lwm2mDeviceProfileTransportConfiguration._({
    this.observeAttr,
    this.bootstrapServerUpdateEnable,
    this.bootstrap,
    this.clientLwM2mSettings,
    required this.type,
  }) : super._();
  @override
  Lwm2mDeviceProfileTransportConfiguration rebuild(
    void Function(Lwm2mDeviceProfileTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  Lwm2mDeviceProfileTransportConfigurationBuilder toBuilder() =>
      Lwm2mDeviceProfileTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lwm2mDeviceProfileTransportConfiguration &&
        observeAttr == other.observeAttr &&
        bootstrapServerUpdateEnable == other.bootstrapServerUpdateEnable &&
        bootstrap == other.bootstrap &&
        clientLwM2mSettings == other.clientLwM2mSettings &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, observeAttr.hashCode);
    _$hash = $jc(_$hash, bootstrapServerUpdateEnable.hashCode);
    _$hash = $jc(_$hash, bootstrap.hashCode);
    _$hash = $jc(_$hash, clientLwM2mSettings.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Lwm2mDeviceProfileTransportConfiguration',
          )
          ..add('observeAttr', observeAttr)
          ..add('bootstrapServerUpdateEnable', bootstrapServerUpdateEnable)
          ..add('bootstrap', bootstrap)
          ..add('clientLwM2mSettings', clientLwM2mSettings)
          ..add('type', type))
        .toString();
  }
}

class Lwm2mDeviceProfileTransportConfigurationBuilder
    implements
        Builder<
          Lwm2mDeviceProfileTransportConfiguration,
          Lwm2mDeviceProfileTransportConfigurationBuilder
        >,
        DeviceProfileTransportConfigurationBuilder {
  _$Lwm2mDeviceProfileTransportConfiguration? _$v;

  TelemetryMappingConfigurationBuilder? _observeAttr;
  TelemetryMappingConfigurationBuilder get observeAttr =>
      _$this._observeAttr ??= TelemetryMappingConfigurationBuilder();
  set observeAttr(
    covariant TelemetryMappingConfigurationBuilder? observeAttr,
  ) => _$this._observeAttr = observeAttr;

  bool? _bootstrapServerUpdateEnable;
  bool? get bootstrapServerUpdateEnable => _$this._bootstrapServerUpdateEnable;
  set bootstrapServerUpdateEnable(
    covariant bool? bootstrapServerUpdateEnable,
  ) => _$this._bootstrapServerUpdateEnable = bootstrapServerUpdateEnable;

  ListBuilder<LwM2MBootstrapServerCredential>? _bootstrap;
  ListBuilder<LwM2MBootstrapServerCredential> get bootstrap =>
      _$this._bootstrap ??= ListBuilder<LwM2MBootstrapServerCredential>();
  set bootstrap(
    covariant ListBuilder<LwM2MBootstrapServerCredential>? bootstrap,
  ) => _$this._bootstrap = bootstrap;

  OtherConfigurationBuilder? _clientLwM2mSettings;
  OtherConfigurationBuilder get clientLwM2mSettings =>
      _$this._clientLwM2mSettings ??= OtherConfigurationBuilder();
  set clientLwM2mSettings(
    covariant OtherConfigurationBuilder? clientLwM2mSettings,
  ) => _$this._clientLwM2mSettings = clientLwM2mSettings;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  Lwm2mDeviceProfileTransportConfigurationBuilder() {
    Lwm2mDeviceProfileTransportConfiguration._defaults(this);
  }

  Lwm2mDeviceProfileTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _observeAttr = $v.observeAttr?.toBuilder();
      _bootstrapServerUpdateEnable = $v.bootstrapServerUpdateEnable;
      _bootstrap = $v.bootstrap?.toBuilder();
      _clientLwM2mSettings = $v.clientLwM2mSettings?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Lwm2mDeviceProfileTransportConfiguration other) {
    _$v = other as _$Lwm2mDeviceProfileTransportConfiguration;
  }

  @override
  void update(
    void Function(Lwm2mDeviceProfileTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  Lwm2mDeviceProfileTransportConfiguration build() => _build();

  _$Lwm2mDeviceProfileTransportConfiguration _build() {
    _$Lwm2mDeviceProfileTransportConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$Lwm2mDeviceProfileTransportConfiguration._(
            observeAttr: _observeAttr?.build(),
            bootstrapServerUpdateEnable: bootstrapServerUpdateEnable,
            bootstrap: _bootstrap?.build(),
            clientLwM2mSettings: _clientLwM2mSettings?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Lwm2mDeviceProfileTransportConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'observeAttr';
        _observeAttr?.build();

        _$failedField = 'bootstrap';
        _bootstrap?.build();
        _$failedField = 'clientLwM2mSettings';
        _clientLwM2mSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Lwm2mDeviceProfileTransportConfiguration',
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lwm2m_device_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Lwm2mDeviceTransportConfiguration
    extends Lwm2mDeviceTransportConfiguration {
  @override
  final int? pagingTransmissionWindow;
  @override
  final int? psmActivityTimer;
  @override
  final PowerMode? powerMode;
  @override
  final int? edrxCycle;
  @override
  final String type;

  factory _$Lwm2mDeviceTransportConfiguration([
    void Function(Lwm2mDeviceTransportConfigurationBuilder)? updates,
  ]) => (Lwm2mDeviceTransportConfigurationBuilder()..update(updates))._build();

  _$Lwm2mDeviceTransportConfiguration._({
    this.pagingTransmissionWindow,
    this.psmActivityTimer,
    this.powerMode,
    this.edrxCycle,
    required this.type,
  }) : super._();
  @override
  Lwm2mDeviceTransportConfiguration rebuild(
    void Function(Lwm2mDeviceTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  Lwm2mDeviceTransportConfigurationBuilder toBuilder() =>
      Lwm2mDeviceTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lwm2mDeviceTransportConfiguration &&
        pagingTransmissionWindow == other.pagingTransmissionWindow &&
        psmActivityTimer == other.psmActivityTimer &&
        powerMode == other.powerMode &&
        edrxCycle == other.edrxCycle &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pagingTransmissionWindow.hashCode);
    _$hash = $jc(_$hash, psmActivityTimer.hashCode);
    _$hash = $jc(_$hash, powerMode.hashCode);
    _$hash = $jc(_$hash, edrxCycle.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Lwm2mDeviceTransportConfiguration')
          ..add('pagingTransmissionWindow', pagingTransmissionWindow)
          ..add('psmActivityTimer', psmActivityTimer)
          ..add('powerMode', powerMode)
          ..add('edrxCycle', edrxCycle)
          ..add('type', type))
        .toString();
  }
}

class Lwm2mDeviceTransportConfigurationBuilder
    implements
        Builder<
          Lwm2mDeviceTransportConfiguration,
          Lwm2mDeviceTransportConfigurationBuilder
        >,
        DeviceTransportConfigurationBuilder {
  _$Lwm2mDeviceTransportConfiguration? _$v;

  int? _pagingTransmissionWindow;
  int? get pagingTransmissionWindow => _$this._pagingTransmissionWindow;
  set pagingTransmissionWindow(covariant int? pagingTransmissionWindow) =>
      _$this._pagingTransmissionWindow = pagingTransmissionWindow;

  int? _psmActivityTimer;
  int? get psmActivityTimer => _$this._psmActivityTimer;
  set psmActivityTimer(covariant int? psmActivityTimer) =>
      _$this._psmActivityTimer = psmActivityTimer;

  PowerMode? _powerMode;
  PowerMode? get powerMode => _$this._powerMode;
  set powerMode(covariant PowerMode? powerMode) =>
      _$this._powerMode = powerMode;

  int? _edrxCycle;
  int? get edrxCycle => _$this._edrxCycle;
  set edrxCycle(covariant int? edrxCycle) => _$this._edrxCycle = edrxCycle;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  Lwm2mDeviceTransportConfigurationBuilder() {
    Lwm2mDeviceTransportConfiguration._defaults(this);
  }

  Lwm2mDeviceTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pagingTransmissionWindow = $v.pagingTransmissionWindow;
      _psmActivityTimer = $v.psmActivityTimer;
      _powerMode = $v.powerMode;
      _edrxCycle = $v.edrxCycle;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Lwm2mDeviceTransportConfiguration other) {
    _$v = other as _$Lwm2mDeviceTransportConfiguration;
  }

  @override
  void update(
    void Function(Lwm2mDeviceTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  Lwm2mDeviceTransportConfiguration build() => _build();

  _$Lwm2mDeviceTransportConfiguration _build() {
    final _$result =
        _$v ??
        _$Lwm2mDeviceTransportConfiguration._(
          pagingTransmissionWindow: pagingTransmissionWindow,
          psmActivityTimer: psmActivityTimer,
          powerMode: powerMode,
          edrxCycle: edrxCycle,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'Lwm2mDeviceTransportConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

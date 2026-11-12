// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_saving_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PowerSavingConfiguration extends PowerSavingConfiguration {
  @override
  final PowerMode? powerMode;
  @override
  final int? psmActivityTimer;
  @override
  final int? edrxCycle;
  @override
  final int? pagingTransmissionWindow;

  factory _$PowerSavingConfiguration([
    void Function(PowerSavingConfigurationBuilder)? updates,
  ]) => (PowerSavingConfigurationBuilder()..update(updates))._build();

  _$PowerSavingConfiguration._({
    this.powerMode,
    this.psmActivityTimer,
    this.edrxCycle,
    this.pagingTransmissionWindow,
  }) : super._();
  @override
  PowerSavingConfiguration rebuild(
    void Function(PowerSavingConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PowerSavingConfigurationBuilder toBuilder() =>
      PowerSavingConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PowerSavingConfiguration &&
        powerMode == other.powerMode &&
        psmActivityTimer == other.psmActivityTimer &&
        edrxCycle == other.edrxCycle &&
        pagingTransmissionWindow == other.pagingTransmissionWindow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, powerMode.hashCode);
    _$hash = $jc(_$hash, psmActivityTimer.hashCode);
    _$hash = $jc(_$hash, edrxCycle.hashCode);
    _$hash = $jc(_$hash, pagingTransmissionWindow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PowerSavingConfiguration')
          ..add('powerMode', powerMode)
          ..add('psmActivityTimer', psmActivityTimer)
          ..add('edrxCycle', edrxCycle)
          ..add('pagingTransmissionWindow', pagingTransmissionWindow))
        .toString();
  }
}

class PowerSavingConfigurationBuilder
    implements
        Builder<PowerSavingConfiguration, PowerSavingConfigurationBuilder> {
  _$PowerSavingConfiguration? _$v;

  PowerMode? _powerMode;
  PowerMode? get powerMode => _$this._powerMode;
  set powerMode(PowerMode? powerMode) => _$this._powerMode = powerMode;

  int? _psmActivityTimer;
  int? get psmActivityTimer => _$this._psmActivityTimer;
  set psmActivityTimer(int? psmActivityTimer) =>
      _$this._psmActivityTimer = psmActivityTimer;

  int? _edrxCycle;
  int? get edrxCycle => _$this._edrxCycle;
  set edrxCycle(int? edrxCycle) => _$this._edrxCycle = edrxCycle;

  int? _pagingTransmissionWindow;
  int? get pagingTransmissionWindow => _$this._pagingTransmissionWindow;
  set pagingTransmissionWindow(int? pagingTransmissionWindow) =>
      _$this._pagingTransmissionWindow = pagingTransmissionWindow;

  PowerSavingConfigurationBuilder() {
    PowerSavingConfiguration._defaults(this);
  }

  PowerSavingConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _powerMode = $v.powerMode;
      _psmActivityTimer = $v.psmActivityTimer;
      _edrxCycle = $v.edrxCycle;
      _pagingTransmissionWindow = $v.pagingTransmissionWindow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PowerSavingConfiguration other) {
    _$v = other as _$PowerSavingConfiguration;
  }

  @override
  void update(void Function(PowerSavingConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PowerSavingConfiguration build() => _build();

  _$PowerSavingConfiguration _build() {
    final _$result =
        _$v ??
        _$PowerSavingConfiguration._(
          powerMode: powerMode,
          psmActivityTimer: psmActivityTimer,
          edrxCycle: edrxCycle,
          pagingTransmissionWindow: pagingTransmissionWindow,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

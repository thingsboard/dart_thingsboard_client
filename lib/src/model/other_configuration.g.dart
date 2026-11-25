// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OtherConfiguration extends OtherConfiguration {
  @override
  final PowerMode? powerMode;
  @override
  final int? psmActivityTimer;
  @override
  final int? edrxCycle;
  @override
  final int? pagingTransmissionWindow;
  @override
  final bool? useObject19ForOtaInfo;
  @override
  final int? fwUpdateStrategy;
  @override
  final int? swUpdateStrategy;
  @override
  final int? clientOnlyObserveAfterConnect;
  @override
  final String? fwUpdateResource;
  @override
  final String? swUpdateResource;
  @override
  final String? defaultObjectIDVer;

  factory _$OtherConfiguration([
    void Function(OtherConfigurationBuilder)? updates,
  ]) => (OtherConfigurationBuilder()..update(updates))._build();

  _$OtherConfiguration._({
    this.powerMode,
    this.psmActivityTimer,
    this.edrxCycle,
    this.pagingTransmissionWindow,
    this.useObject19ForOtaInfo,
    this.fwUpdateStrategy,
    this.swUpdateStrategy,
    this.clientOnlyObserveAfterConnect,
    this.fwUpdateResource,
    this.swUpdateResource,
    this.defaultObjectIDVer,
  }) : super._();
  @override
  OtherConfiguration rebuild(
    void Function(OtherConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OtherConfigurationBuilder toBuilder() =>
      OtherConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtherConfiguration &&
        powerMode == other.powerMode &&
        psmActivityTimer == other.psmActivityTimer &&
        edrxCycle == other.edrxCycle &&
        pagingTransmissionWindow == other.pagingTransmissionWindow &&
        useObject19ForOtaInfo == other.useObject19ForOtaInfo &&
        fwUpdateStrategy == other.fwUpdateStrategy &&
        swUpdateStrategy == other.swUpdateStrategy &&
        clientOnlyObserveAfterConnect == other.clientOnlyObserveAfterConnect &&
        fwUpdateResource == other.fwUpdateResource &&
        swUpdateResource == other.swUpdateResource &&
        defaultObjectIDVer == other.defaultObjectIDVer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, powerMode.hashCode);
    _$hash = $jc(_$hash, psmActivityTimer.hashCode);
    _$hash = $jc(_$hash, edrxCycle.hashCode);
    _$hash = $jc(_$hash, pagingTransmissionWindow.hashCode);
    _$hash = $jc(_$hash, useObject19ForOtaInfo.hashCode);
    _$hash = $jc(_$hash, fwUpdateStrategy.hashCode);
    _$hash = $jc(_$hash, swUpdateStrategy.hashCode);
    _$hash = $jc(_$hash, clientOnlyObserveAfterConnect.hashCode);
    _$hash = $jc(_$hash, fwUpdateResource.hashCode);
    _$hash = $jc(_$hash, swUpdateResource.hashCode);
    _$hash = $jc(_$hash, defaultObjectIDVer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OtherConfiguration')
          ..add('powerMode', powerMode)
          ..add('psmActivityTimer', psmActivityTimer)
          ..add('edrxCycle', edrxCycle)
          ..add('pagingTransmissionWindow', pagingTransmissionWindow)
          ..add('useObject19ForOtaInfo', useObject19ForOtaInfo)
          ..add('fwUpdateStrategy', fwUpdateStrategy)
          ..add('swUpdateStrategy', swUpdateStrategy)
          ..add('clientOnlyObserveAfterConnect', clientOnlyObserveAfterConnect)
          ..add('fwUpdateResource', fwUpdateResource)
          ..add('swUpdateResource', swUpdateResource)
          ..add('defaultObjectIDVer', defaultObjectIDVer))
        .toString();
  }
}

class OtherConfigurationBuilder
    implements Builder<OtherConfiguration, OtherConfigurationBuilder> {
  _$OtherConfiguration? _$v;

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

  bool? _useObject19ForOtaInfo;
  bool? get useObject19ForOtaInfo => _$this._useObject19ForOtaInfo;
  set useObject19ForOtaInfo(bool? useObject19ForOtaInfo) =>
      _$this._useObject19ForOtaInfo = useObject19ForOtaInfo;

  int? _fwUpdateStrategy;
  int? get fwUpdateStrategy => _$this._fwUpdateStrategy;
  set fwUpdateStrategy(int? fwUpdateStrategy) =>
      _$this._fwUpdateStrategy = fwUpdateStrategy;

  int? _swUpdateStrategy;
  int? get swUpdateStrategy => _$this._swUpdateStrategy;
  set swUpdateStrategy(int? swUpdateStrategy) =>
      _$this._swUpdateStrategy = swUpdateStrategy;

  int? _clientOnlyObserveAfterConnect;
  int? get clientOnlyObserveAfterConnect =>
      _$this._clientOnlyObserveAfterConnect;
  set clientOnlyObserveAfterConnect(int? clientOnlyObserveAfterConnect) =>
      _$this._clientOnlyObserveAfterConnect = clientOnlyObserveAfterConnect;

  String? _fwUpdateResource;
  String? get fwUpdateResource => _$this._fwUpdateResource;
  set fwUpdateResource(String? fwUpdateResource) =>
      _$this._fwUpdateResource = fwUpdateResource;

  String? _swUpdateResource;
  String? get swUpdateResource => _$this._swUpdateResource;
  set swUpdateResource(String? swUpdateResource) =>
      _$this._swUpdateResource = swUpdateResource;

  String? _defaultObjectIDVer;
  String? get defaultObjectIDVer => _$this._defaultObjectIDVer;
  set defaultObjectIDVer(String? defaultObjectIDVer) =>
      _$this._defaultObjectIDVer = defaultObjectIDVer;

  OtherConfigurationBuilder() {
    OtherConfiguration._defaults(this);
  }

  OtherConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _powerMode = $v.powerMode;
      _psmActivityTimer = $v.psmActivityTimer;
      _edrxCycle = $v.edrxCycle;
      _pagingTransmissionWindow = $v.pagingTransmissionWindow;
      _useObject19ForOtaInfo = $v.useObject19ForOtaInfo;
      _fwUpdateStrategy = $v.fwUpdateStrategy;
      _swUpdateStrategy = $v.swUpdateStrategy;
      _clientOnlyObserveAfterConnect = $v.clientOnlyObserveAfterConnect;
      _fwUpdateResource = $v.fwUpdateResource;
      _swUpdateResource = $v.swUpdateResource;
      _defaultObjectIDVer = $v.defaultObjectIDVer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtherConfiguration other) {
    _$v = other as _$OtherConfiguration;
  }

  @override
  void update(void Function(OtherConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OtherConfiguration build() => _build();

  _$OtherConfiguration _build() {
    final _$result =
        _$v ??
        _$OtherConfiguration._(
          powerMode: powerMode,
          psmActivityTimer: psmActivityTimer,
          edrxCycle: edrxCycle,
          pagingTransmissionWindow: pagingTransmissionWindow,
          useObject19ForOtaInfo: useObject19ForOtaInfo,
          fwUpdateStrategy: fwUpdateStrategy,
          swUpdateStrategy: swUpdateStrategy,
          clientOnlyObserveAfterConnect: clientOnlyObserveAfterConnect,
          fwUpdateResource: fwUpdateResource,
          swUpdateResource: swUpdateResource,
          defaultObjectIDVer: defaultObjectIDVer,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

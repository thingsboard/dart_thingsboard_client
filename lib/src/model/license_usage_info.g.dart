// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_usage_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseUsageInfo extends LicenseUsageInfo {
  @override
  final int? maxDevices;
  @override
  final int? maxAssets;
  @override
  final int? maxEdges;
  @override
  final int? maxAgents;
  @override
  final bool? whiteLabelingEnabled;
  @override
  final bool? development;
  @override
  final String? plan;
  @override
  final int? devicesCount;
  @override
  final int? assetsCount;
  @override
  final int? edgesCount;
  @override
  final int? dashboardsCount;
  @override
  final int? integrationsCount;

  factory _$LicenseUsageInfo([
    void Function(LicenseUsageInfoBuilder)? updates,
  ]) => (LicenseUsageInfoBuilder()..update(updates))._build();

  _$LicenseUsageInfo._({
    this.maxDevices,
    this.maxAssets,
    this.maxEdges,
    this.maxAgents,
    this.whiteLabelingEnabled,
    this.development,
    this.plan,
    this.devicesCount,
    this.assetsCount,
    this.edgesCount,
    this.dashboardsCount,
    this.integrationsCount,
  }) : super._();
  @override
  LicenseUsageInfo rebuild(void Function(LicenseUsageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseUsageInfoBuilder toBuilder() =>
      LicenseUsageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseUsageInfo &&
        maxDevices == other.maxDevices &&
        maxAssets == other.maxAssets &&
        maxEdges == other.maxEdges &&
        maxAgents == other.maxAgents &&
        whiteLabelingEnabled == other.whiteLabelingEnabled &&
        development == other.development &&
        plan == other.plan &&
        devicesCount == other.devicesCount &&
        assetsCount == other.assetsCount &&
        edgesCount == other.edgesCount &&
        dashboardsCount == other.dashboardsCount &&
        integrationsCount == other.integrationsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxDevices.hashCode);
    _$hash = $jc(_$hash, maxAssets.hashCode);
    _$hash = $jc(_$hash, maxEdges.hashCode);
    _$hash = $jc(_$hash, maxAgents.hashCode);
    _$hash = $jc(_$hash, whiteLabelingEnabled.hashCode);
    _$hash = $jc(_$hash, development.hashCode);
    _$hash = $jc(_$hash, plan.hashCode);
    _$hash = $jc(_$hash, devicesCount.hashCode);
    _$hash = $jc(_$hash, assetsCount.hashCode);
    _$hash = $jc(_$hash, edgesCount.hashCode);
    _$hash = $jc(_$hash, dashboardsCount.hashCode);
    _$hash = $jc(_$hash, integrationsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicenseUsageInfo')
          ..add('maxDevices', maxDevices)
          ..add('maxAssets', maxAssets)
          ..add('maxEdges', maxEdges)
          ..add('maxAgents', maxAgents)
          ..add('whiteLabelingEnabled', whiteLabelingEnabled)
          ..add('development', development)
          ..add('plan', plan)
          ..add('devicesCount', devicesCount)
          ..add('assetsCount', assetsCount)
          ..add('edgesCount', edgesCount)
          ..add('dashboardsCount', dashboardsCount)
          ..add('integrationsCount', integrationsCount))
        .toString();
  }
}

class LicenseUsageInfoBuilder
    implements Builder<LicenseUsageInfo, LicenseUsageInfoBuilder> {
  _$LicenseUsageInfo? _$v;

  int? _maxDevices;
  int? get maxDevices => _$this._maxDevices;
  set maxDevices(int? maxDevices) => _$this._maxDevices = maxDevices;

  int? _maxAssets;
  int? get maxAssets => _$this._maxAssets;
  set maxAssets(int? maxAssets) => _$this._maxAssets = maxAssets;

  int? _maxEdges;
  int? get maxEdges => _$this._maxEdges;
  set maxEdges(int? maxEdges) => _$this._maxEdges = maxEdges;

  int? _maxAgents;
  int? get maxAgents => _$this._maxAgents;
  set maxAgents(int? maxAgents) => _$this._maxAgents = maxAgents;

  bool? _whiteLabelingEnabled;
  bool? get whiteLabelingEnabled => _$this._whiteLabelingEnabled;
  set whiteLabelingEnabled(bool? whiteLabelingEnabled) =>
      _$this._whiteLabelingEnabled = whiteLabelingEnabled;

  bool? _development;
  bool? get development => _$this._development;
  set development(bool? development) => _$this._development = development;

  String? _plan;
  String? get plan => _$this._plan;
  set plan(String? plan) => _$this._plan = plan;

  int? _devicesCount;
  int? get devicesCount => _$this._devicesCount;
  set devicesCount(int? devicesCount) => _$this._devicesCount = devicesCount;

  int? _assetsCount;
  int? get assetsCount => _$this._assetsCount;
  set assetsCount(int? assetsCount) => _$this._assetsCount = assetsCount;

  int? _edgesCount;
  int? get edgesCount => _$this._edgesCount;
  set edgesCount(int? edgesCount) => _$this._edgesCount = edgesCount;

  int? _dashboardsCount;
  int? get dashboardsCount => _$this._dashboardsCount;
  set dashboardsCount(int? dashboardsCount) =>
      _$this._dashboardsCount = dashboardsCount;

  int? _integrationsCount;
  int? get integrationsCount => _$this._integrationsCount;
  set integrationsCount(int? integrationsCount) =>
      _$this._integrationsCount = integrationsCount;

  LicenseUsageInfoBuilder() {
    LicenseUsageInfo._defaults(this);
  }

  LicenseUsageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxDevices = $v.maxDevices;
      _maxAssets = $v.maxAssets;
      _maxEdges = $v.maxEdges;
      _maxAgents = $v.maxAgents;
      _whiteLabelingEnabled = $v.whiteLabelingEnabled;
      _development = $v.development;
      _plan = $v.plan;
      _devicesCount = $v.devicesCount;
      _assetsCount = $v.assetsCount;
      _edgesCount = $v.edgesCount;
      _dashboardsCount = $v.dashboardsCount;
      _integrationsCount = $v.integrationsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseUsageInfo other) {
    _$v = other as _$LicenseUsageInfo;
  }

  @override
  void update(void Function(LicenseUsageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseUsageInfo build() => _build();

  _$LicenseUsageInfo _build() {
    final _$result =
        _$v ??
        _$LicenseUsageInfo._(
          maxDevices: maxDevices,
          maxAssets: maxAssets,
          maxEdges: maxEdges,
          maxAgents: maxAgents,
          whiteLabelingEnabled: whiteLabelingEnabled,
          development: development,
          plan: plan,
          devicesCount: devicesCount,
          assetsCount: assetsCount,
          edgesCount: edgesCount,
          dashboardsCount: dashboardsCount,
          integrationsCount: integrationsCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

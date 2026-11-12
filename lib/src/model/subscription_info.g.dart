// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionInfo extends SubscriptionInfo {
  @override
  final String? subscriptionId;
  @override
  final String? subscriptionPlanName;
  @override
  final String? planUiType;
  @override
  final int? currentPeriodStartTs;
  @override
  final int? currentPeriodEndTs;
  @override
  final int? endTs;
  @override
  final int? upcomingInvoiceDate;
  @override
  final int? upcomingInvoiceAmountDue;
  @override
  final bool? planExtraDeviceEnabled;
  @override
  final bool? planEdgeEnabled;
  @override
  final bool? planExtraEdgeEnabled;
  @override
  final bool? planTrendzEnabled;
  @override
  final bool? planExtraAiCreditsEnabled;
  @override
  final bool? planExtraInstanceEnabled;
  @override
  final bool? planExtraAgentEnabled;
  @override
  final int? dataTs;
  @override
  final String? licenseServerEndpoint;
  @override
  final int? maxDevices;
  @override
  final int? maxAssets;
  @override
  final int? maxEdges;
  @override
  final int? maxAgents;
  @override
  final int? maxInstances;
  @override
  final int? maxAiCredits;
  @override
  final bool? whiteLabelingEnabled;
  @override
  final bool? edgeEnabled;
  @override
  final bool? trendzEnabled;
  @override
  final bool? development;
  @override
  final bool? nonProduction;
  @override
  final int? devicesCount;
  @override
  final int? assetsCount;
  @override
  final int? edgesCount;
  @override
  final int? agentsCount;
  @override
  final int? instancesCount;
  @override
  final int? usedAiCredits;
  @override
  final bool? communityGrantLicense;
  @override
  final bool? offline;
  @override
  final bool? perpetual;

  factory _$SubscriptionInfo([
    void Function(SubscriptionInfoBuilder)? updates,
  ]) => (SubscriptionInfoBuilder()..update(updates))._build();

  _$SubscriptionInfo._({
    this.subscriptionId,
    this.subscriptionPlanName,
    this.planUiType,
    this.currentPeriodStartTs,
    this.currentPeriodEndTs,
    this.endTs,
    this.upcomingInvoiceDate,
    this.upcomingInvoiceAmountDue,
    this.planExtraDeviceEnabled,
    this.planEdgeEnabled,
    this.planExtraEdgeEnabled,
    this.planTrendzEnabled,
    this.planExtraAiCreditsEnabled,
    this.planExtraInstanceEnabled,
    this.planExtraAgentEnabled,
    this.dataTs,
    this.licenseServerEndpoint,
    this.maxDevices,
    this.maxAssets,
    this.maxEdges,
    this.maxAgents,
    this.maxInstances,
    this.maxAiCredits,
    this.whiteLabelingEnabled,
    this.edgeEnabled,
    this.trendzEnabled,
    this.development,
    this.nonProduction,
    this.devicesCount,
    this.assetsCount,
    this.edgesCount,
    this.agentsCount,
    this.instancesCount,
    this.usedAiCredits,
    this.communityGrantLicense,
    this.offline,
    this.perpetual,
  }) : super._();
  @override
  SubscriptionInfo rebuild(void Function(SubscriptionInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionInfoBuilder toBuilder() =>
      SubscriptionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionInfo &&
        subscriptionId == other.subscriptionId &&
        subscriptionPlanName == other.subscriptionPlanName &&
        planUiType == other.planUiType &&
        currentPeriodStartTs == other.currentPeriodStartTs &&
        currentPeriodEndTs == other.currentPeriodEndTs &&
        endTs == other.endTs &&
        upcomingInvoiceDate == other.upcomingInvoiceDate &&
        upcomingInvoiceAmountDue == other.upcomingInvoiceAmountDue &&
        planExtraDeviceEnabled == other.planExtraDeviceEnabled &&
        planEdgeEnabled == other.planEdgeEnabled &&
        planExtraEdgeEnabled == other.planExtraEdgeEnabled &&
        planTrendzEnabled == other.planTrendzEnabled &&
        planExtraAiCreditsEnabled == other.planExtraAiCreditsEnabled &&
        planExtraInstanceEnabled == other.planExtraInstanceEnabled &&
        planExtraAgentEnabled == other.planExtraAgentEnabled &&
        dataTs == other.dataTs &&
        licenseServerEndpoint == other.licenseServerEndpoint &&
        maxDevices == other.maxDevices &&
        maxAssets == other.maxAssets &&
        maxEdges == other.maxEdges &&
        maxAgents == other.maxAgents &&
        maxInstances == other.maxInstances &&
        maxAiCredits == other.maxAiCredits &&
        whiteLabelingEnabled == other.whiteLabelingEnabled &&
        edgeEnabled == other.edgeEnabled &&
        trendzEnabled == other.trendzEnabled &&
        development == other.development &&
        nonProduction == other.nonProduction &&
        devicesCount == other.devicesCount &&
        assetsCount == other.assetsCount &&
        edgesCount == other.edgesCount &&
        agentsCount == other.agentsCount &&
        instancesCount == other.instancesCount &&
        usedAiCredits == other.usedAiCredits &&
        communityGrantLicense == other.communityGrantLicense &&
        offline == other.offline &&
        perpetual == other.perpetual;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subscriptionId.hashCode);
    _$hash = $jc(_$hash, subscriptionPlanName.hashCode);
    _$hash = $jc(_$hash, planUiType.hashCode);
    _$hash = $jc(_$hash, currentPeriodStartTs.hashCode);
    _$hash = $jc(_$hash, currentPeriodEndTs.hashCode);
    _$hash = $jc(_$hash, endTs.hashCode);
    _$hash = $jc(_$hash, upcomingInvoiceDate.hashCode);
    _$hash = $jc(_$hash, upcomingInvoiceAmountDue.hashCode);
    _$hash = $jc(_$hash, planExtraDeviceEnabled.hashCode);
    _$hash = $jc(_$hash, planEdgeEnabled.hashCode);
    _$hash = $jc(_$hash, planExtraEdgeEnabled.hashCode);
    _$hash = $jc(_$hash, planTrendzEnabled.hashCode);
    _$hash = $jc(_$hash, planExtraAiCreditsEnabled.hashCode);
    _$hash = $jc(_$hash, planExtraInstanceEnabled.hashCode);
    _$hash = $jc(_$hash, planExtraAgentEnabled.hashCode);
    _$hash = $jc(_$hash, dataTs.hashCode);
    _$hash = $jc(_$hash, licenseServerEndpoint.hashCode);
    _$hash = $jc(_$hash, maxDevices.hashCode);
    _$hash = $jc(_$hash, maxAssets.hashCode);
    _$hash = $jc(_$hash, maxEdges.hashCode);
    _$hash = $jc(_$hash, maxAgents.hashCode);
    _$hash = $jc(_$hash, maxInstances.hashCode);
    _$hash = $jc(_$hash, maxAiCredits.hashCode);
    _$hash = $jc(_$hash, whiteLabelingEnabled.hashCode);
    _$hash = $jc(_$hash, edgeEnabled.hashCode);
    _$hash = $jc(_$hash, trendzEnabled.hashCode);
    _$hash = $jc(_$hash, development.hashCode);
    _$hash = $jc(_$hash, nonProduction.hashCode);
    _$hash = $jc(_$hash, devicesCount.hashCode);
    _$hash = $jc(_$hash, assetsCount.hashCode);
    _$hash = $jc(_$hash, edgesCount.hashCode);
    _$hash = $jc(_$hash, agentsCount.hashCode);
    _$hash = $jc(_$hash, instancesCount.hashCode);
    _$hash = $jc(_$hash, usedAiCredits.hashCode);
    _$hash = $jc(_$hash, communityGrantLicense.hashCode);
    _$hash = $jc(_$hash, offline.hashCode);
    _$hash = $jc(_$hash, perpetual.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionInfo')
          ..add('subscriptionId', subscriptionId)
          ..add('subscriptionPlanName', subscriptionPlanName)
          ..add('planUiType', planUiType)
          ..add('currentPeriodStartTs', currentPeriodStartTs)
          ..add('currentPeriodEndTs', currentPeriodEndTs)
          ..add('endTs', endTs)
          ..add('upcomingInvoiceDate', upcomingInvoiceDate)
          ..add('upcomingInvoiceAmountDue', upcomingInvoiceAmountDue)
          ..add('planExtraDeviceEnabled', planExtraDeviceEnabled)
          ..add('planEdgeEnabled', planEdgeEnabled)
          ..add('planExtraEdgeEnabled', planExtraEdgeEnabled)
          ..add('planTrendzEnabled', planTrendzEnabled)
          ..add('planExtraAiCreditsEnabled', planExtraAiCreditsEnabled)
          ..add('planExtraInstanceEnabled', planExtraInstanceEnabled)
          ..add('planExtraAgentEnabled', planExtraAgentEnabled)
          ..add('dataTs', dataTs)
          ..add('licenseServerEndpoint', licenseServerEndpoint)
          ..add('maxDevices', maxDevices)
          ..add('maxAssets', maxAssets)
          ..add('maxEdges', maxEdges)
          ..add('maxAgents', maxAgents)
          ..add('maxInstances', maxInstances)
          ..add('maxAiCredits', maxAiCredits)
          ..add('whiteLabelingEnabled', whiteLabelingEnabled)
          ..add('edgeEnabled', edgeEnabled)
          ..add('trendzEnabled', trendzEnabled)
          ..add('development', development)
          ..add('nonProduction', nonProduction)
          ..add('devicesCount', devicesCount)
          ..add('assetsCount', assetsCount)
          ..add('edgesCount', edgesCount)
          ..add('agentsCount', agentsCount)
          ..add('instancesCount', instancesCount)
          ..add('usedAiCredits', usedAiCredits)
          ..add('communityGrantLicense', communityGrantLicense)
          ..add('offline', offline)
          ..add('perpetual', perpetual))
        .toString();
  }
}

class SubscriptionInfoBuilder
    implements Builder<SubscriptionInfo, SubscriptionInfoBuilder> {
  _$SubscriptionInfo? _$v;

  String? _subscriptionId;
  String? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(String? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  String? _subscriptionPlanName;
  String? get subscriptionPlanName => _$this._subscriptionPlanName;
  set subscriptionPlanName(String? subscriptionPlanName) =>
      _$this._subscriptionPlanName = subscriptionPlanName;

  String? _planUiType;
  String? get planUiType => _$this._planUiType;
  set planUiType(String? planUiType) => _$this._planUiType = planUiType;

  int? _currentPeriodStartTs;
  int? get currentPeriodStartTs => _$this._currentPeriodStartTs;
  set currentPeriodStartTs(int? currentPeriodStartTs) =>
      _$this._currentPeriodStartTs = currentPeriodStartTs;

  int? _currentPeriodEndTs;
  int? get currentPeriodEndTs => _$this._currentPeriodEndTs;
  set currentPeriodEndTs(int? currentPeriodEndTs) =>
      _$this._currentPeriodEndTs = currentPeriodEndTs;

  int? _endTs;
  int? get endTs => _$this._endTs;
  set endTs(int? endTs) => _$this._endTs = endTs;

  int? _upcomingInvoiceDate;
  int? get upcomingInvoiceDate => _$this._upcomingInvoiceDate;
  set upcomingInvoiceDate(int? upcomingInvoiceDate) =>
      _$this._upcomingInvoiceDate = upcomingInvoiceDate;

  int? _upcomingInvoiceAmountDue;
  int? get upcomingInvoiceAmountDue => _$this._upcomingInvoiceAmountDue;
  set upcomingInvoiceAmountDue(int? upcomingInvoiceAmountDue) =>
      _$this._upcomingInvoiceAmountDue = upcomingInvoiceAmountDue;

  bool? _planExtraDeviceEnabled;
  bool? get planExtraDeviceEnabled => _$this._planExtraDeviceEnabled;
  set planExtraDeviceEnabled(bool? planExtraDeviceEnabled) =>
      _$this._planExtraDeviceEnabled = planExtraDeviceEnabled;

  bool? _planEdgeEnabled;
  bool? get planEdgeEnabled => _$this._planEdgeEnabled;
  set planEdgeEnabled(bool? planEdgeEnabled) =>
      _$this._planEdgeEnabled = planEdgeEnabled;

  bool? _planExtraEdgeEnabled;
  bool? get planExtraEdgeEnabled => _$this._planExtraEdgeEnabled;
  set planExtraEdgeEnabled(bool? planExtraEdgeEnabled) =>
      _$this._planExtraEdgeEnabled = planExtraEdgeEnabled;

  bool? _planTrendzEnabled;
  bool? get planTrendzEnabled => _$this._planTrendzEnabled;
  set planTrendzEnabled(bool? planTrendzEnabled) =>
      _$this._planTrendzEnabled = planTrendzEnabled;

  bool? _planExtraAiCreditsEnabled;
  bool? get planExtraAiCreditsEnabled => _$this._planExtraAiCreditsEnabled;
  set planExtraAiCreditsEnabled(bool? planExtraAiCreditsEnabled) =>
      _$this._planExtraAiCreditsEnabled = planExtraAiCreditsEnabled;

  bool? _planExtraInstanceEnabled;
  bool? get planExtraInstanceEnabled => _$this._planExtraInstanceEnabled;
  set planExtraInstanceEnabled(bool? planExtraInstanceEnabled) =>
      _$this._planExtraInstanceEnabled = planExtraInstanceEnabled;

  bool? _planExtraAgentEnabled;
  bool? get planExtraAgentEnabled => _$this._planExtraAgentEnabled;
  set planExtraAgentEnabled(bool? planExtraAgentEnabled) =>
      _$this._planExtraAgentEnabled = planExtraAgentEnabled;

  int? _dataTs;
  int? get dataTs => _$this._dataTs;
  set dataTs(int? dataTs) => _$this._dataTs = dataTs;

  String? _licenseServerEndpoint;
  String? get licenseServerEndpoint => _$this._licenseServerEndpoint;
  set licenseServerEndpoint(String? licenseServerEndpoint) =>
      _$this._licenseServerEndpoint = licenseServerEndpoint;

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

  int? _maxInstances;
  int? get maxInstances => _$this._maxInstances;
  set maxInstances(int? maxInstances) => _$this._maxInstances = maxInstances;

  int? _maxAiCredits;
  int? get maxAiCredits => _$this._maxAiCredits;
  set maxAiCredits(int? maxAiCredits) => _$this._maxAiCredits = maxAiCredits;

  bool? _whiteLabelingEnabled;
  bool? get whiteLabelingEnabled => _$this._whiteLabelingEnabled;
  set whiteLabelingEnabled(bool? whiteLabelingEnabled) =>
      _$this._whiteLabelingEnabled = whiteLabelingEnabled;

  bool? _edgeEnabled;
  bool? get edgeEnabled => _$this._edgeEnabled;
  set edgeEnabled(bool? edgeEnabled) => _$this._edgeEnabled = edgeEnabled;

  bool? _trendzEnabled;
  bool? get trendzEnabled => _$this._trendzEnabled;
  set trendzEnabled(bool? trendzEnabled) =>
      _$this._trendzEnabled = trendzEnabled;

  bool? _development;
  bool? get development => _$this._development;
  set development(bool? development) => _$this._development = development;

  bool? _nonProduction;
  bool? get nonProduction => _$this._nonProduction;
  set nonProduction(bool? nonProduction) =>
      _$this._nonProduction = nonProduction;

  int? _devicesCount;
  int? get devicesCount => _$this._devicesCount;
  set devicesCount(int? devicesCount) => _$this._devicesCount = devicesCount;

  int? _assetsCount;
  int? get assetsCount => _$this._assetsCount;
  set assetsCount(int? assetsCount) => _$this._assetsCount = assetsCount;

  int? _edgesCount;
  int? get edgesCount => _$this._edgesCount;
  set edgesCount(int? edgesCount) => _$this._edgesCount = edgesCount;

  int? _agentsCount;
  int? get agentsCount => _$this._agentsCount;
  set agentsCount(int? agentsCount) => _$this._agentsCount = agentsCount;

  int? _instancesCount;
  int? get instancesCount => _$this._instancesCount;
  set instancesCount(int? instancesCount) =>
      _$this._instancesCount = instancesCount;

  int? _usedAiCredits;
  int? get usedAiCredits => _$this._usedAiCredits;
  set usedAiCredits(int? usedAiCredits) =>
      _$this._usedAiCredits = usedAiCredits;

  bool? _communityGrantLicense;
  bool? get communityGrantLicense => _$this._communityGrantLicense;
  set communityGrantLicense(bool? communityGrantLicense) =>
      _$this._communityGrantLicense = communityGrantLicense;

  bool? _offline;
  bool? get offline => _$this._offline;
  set offline(bool? offline) => _$this._offline = offline;

  bool? _perpetual;
  bool? get perpetual => _$this._perpetual;
  set perpetual(bool? perpetual) => _$this._perpetual = perpetual;

  SubscriptionInfoBuilder() {
    SubscriptionInfo._defaults(this);
  }

  SubscriptionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscriptionId = $v.subscriptionId;
      _subscriptionPlanName = $v.subscriptionPlanName;
      _planUiType = $v.planUiType;
      _currentPeriodStartTs = $v.currentPeriodStartTs;
      _currentPeriodEndTs = $v.currentPeriodEndTs;
      _endTs = $v.endTs;
      _upcomingInvoiceDate = $v.upcomingInvoiceDate;
      _upcomingInvoiceAmountDue = $v.upcomingInvoiceAmountDue;
      _planExtraDeviceEnabled = $v.planExtraDeviceEnabled;
      _planEdgeEnabled = $v.planEdgeEnabled;
      _planExtraEdgeEnabled = $v.planExtraEdgeEnabled;
      _planTrendzEnabled = $v.planTrendzEnabled;
      _planExtraAiCreditsEnabled = $v.planExtraAiCreditsEnabled;
      _planExtraInstanceEnabled = $v.planExtraInstanceEnabled;
      _planExtraAgentEnabled = $v.planExtraAgentEnabled;
      _dataTs = $v.dataTs;
      _licenseServerEndpoint = $v.licenseServerEndpoint;
      _maxDevices = $v.maxDevices;
      _maxAssets = $v.maxAssets;
      _maxEdges = $v.maxEdges;
      _maxAgents = $v.maxAgents;
      _maxInstances = $v.maxInstances;
      _maxAiCredits = $v.maxAiCredits;
      _whiteLabelingEnabled = $v.whiteLabelingEnabled;
      _edgeEnabled = $v.edgeEnabled;
      _trendzEnabled = $v.trendzEnabled;
      _development = $v.development;
      _nonProduction = $v.nonProduction;
      _devicesCount = $v.devicesCount;
      _assetsCount = $v.assetsCount;
      _edgesCount = $v.edgesCount;
      _agentsCount = $v.agentsCount;
      _instancesCount = $v.instancesCount;
      _usedAiCredits = $v.usedAiCredits;
      _communityGrantLicense = $v.communityGrantLicense;
      _offline = $v.offline;
      _perpetual = $v.perpetual;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionInfo other) {
    _$v = other as _$SubscriptionInfo;
  }

  @override
  void update(void Function(SubscriptionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionInfo build() => _build();

  _$SubscriptionInfo _build() {
    final _$result =
        _$v ??
        _$SubscriptionInfo._(
          subscriptionId: subscriptionId,
          subscriptionPlanName: subscriptionPlanName,
          planUiType: planUiType,
          currentPeriodStartTs: currentPeriodStartTs,
          currentPeriodEndTs: currentPeriodEndTs,
          endTs: endTs,
          upcomingInvoiceDate: upcomingInvoiceDate,
          upcomingInvoiceAmountDue: upcomingInvoiceAmountDue,
          planExtraDeviceEnabled: planExtraDeviceEnabled,
          planEdgeEnabled: planEdgeEnabled,
          planExtraEdgeEnabled: planExtraEdgeEnabled,
          planTrendzEnabled: planTrendzEnabled,
          planExtraAiCreditsEnabled: planExtraAiCreditsEnabled,
          planExtraInstanceEnabled: planExtraInstanceEnabled,
          planExtraAgentEnabled: planExtraAgentEnabled,
          dataTs: dataTs,
          licenseServerEndpoint: licenseServerEndpoint,
          maxDevices: maxDevices,
          maxAssets: maxAssets,
          maxEdges: maxEdges,
          maxAgents: maxAgents,
          maxInstances: maxInstances,
          maxAiCredits: maxAiCredits,
          whiteLabelingEnabled: whiteLabelingEnabled,
          edgeEnabled: edgeEnabled,
          trendzEnabled: trendzEnabled,
          development: development,
          nonProduction: nonProduction,
          devicesCount: devicesCount,
          assetsCount: assetsCount,
          edgesCount: edgesCount,
          agentsCount: agentsCount,
          instancesCount: instancesCount,
          usedAiCredits: usedAiCredits,
          communityGrantLicense: communityGrantLicense,
          offline: offline,
          perpetual: perpetual,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

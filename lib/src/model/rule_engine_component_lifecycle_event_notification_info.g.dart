// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_engine_component_lifecycle_event_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleEngineComponentLifecycleEventNotificationInfo
    extends RuleEngineComponentLifecycleEventNotificationInfo {
  @override
  final EntityId? componentId;
  @override
  final UserId? affectedUserId;
  @override
  final String? action;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final String? componentName;
  @override
  final ComponentLifecycleEvent? eventType;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? error;
  @override
  final String? ruleChainName;
  @override
  final RuleChainId? ruleChainId;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$RuleEngineComponentLifecycleEventNotificationInfo([
    void Function(RuleEngineComponentLifecycleEventNotificationInfoBuilder)?
    updates,
  ]) =>
      (RuleEngineComponentLifecycleEventNotificationInfoBuilder()
            ..update(updates))
          ._build();

  _$RuleEngineComponentLifecycleEventNotificationInfo._({
    this.componentId,
    this.affectedUserId,
    this.action,
    this.affectedCustomerId,
    this.componentName,
    this.eventType,
    this.affectedTenantId,
    this.error,
    this.ruleChainName,
    this.ruleChainId,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  RuleEngineComponentLifecycleEventNotificationInfo rebuild(
    void Function(RuleEngineComponentLifecycleEventNotificationInfoBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleEngineComponentLifecycleEventNotificationInfoBuilder toBuilder() =>
      RuleEngineComponentLifecycleEventNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleEngineComponentLifecycleEventNotificationInfo &&
        componentId == other.componentId &&
        affectedUserId == other.affectedUserId &&
        action == other.action &&
        affectedCustomerId == other.affectedCustomerId &&
        componentName == other.componentName &&
        eventType == other.eventType &&
        affectedTenantId == other.affectedTenantId &&
        error == other.error &&
        ruleChainName == other.ruleChainName &&
        ruleChainId == other.ruleChainId &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, componentId.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, componentName.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, ruleChainName.hashCode);
    _$hash = $jc(_$hash, ruleChainId.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RuleEngineComponentLifecycleEventNotificationInfo',
          )
          ..add('componentId', componentId)
          ..add('affectedUserId', affectedUserId)
          ..add('action', action)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('componentName', componentName)
          ..add('eventType', eventType)
          ..add('affectedTenantId', affectedTenantId)
          ..add('error', error)
          ..add('ruleChainName', ruleChainName)
          ..add('ruleChainId', ruleChainId)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class RuleEngineComponentLifecycleEventNotificationInfoBuilder
    implements
        Builder<
          RuleEngineComponentLifecycleEventNotificationInfo,
          RuleEngineComponentLifecycleEventNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$RuleEngineComponentLifecycleEventNotificationInfo? _$v;

  EntityId? _componentId;
  EntityId? get componentId => _$this._componentId;
  set componentId(covariant EntityId? componentId) =>
      _$this._componentId = componentId;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  String? _action;
  String? get action => _$this._action;
  set action(covariant String? action) => _$this._action = action;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  String? _componentName;
  String? get componentName => _$this._componentName;
  set componentName(covariant String? componentName) =>
      _$this._componentName = componentName;

  ComponentLifecycleEvent? _eventType;
  ComponentLifecycleEvent? get eventType => _$this._eventType;
  set eventType(covariant ComponentLifecycleEvent? eventType) =>
      _$this._eventType = eventType;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  String? _error;
  String? get error => _$this._error;
  set error(covariant String? error) => _$this._error = error;

  String? _ruleChainName;
  String? get ruleChainName => _$this._ruleChainName;
  set ruleChainName(covariant String? ruleChainName) =>
      _$this._ruleChainName = ruleChainName;

  RuleChainIdBuilder? _ruleChainId;
  RuleChainIdBuilder get ruleChainId =>
      _$this._ruleChainId ??= RuleChainIdBuilder();
  set ruleChainId(covariant RuleChainIdBuilder? ruleChainId) =>
      _$this._ruleChainId = ruleChainId;

  DashboardIdBuilder? _dashboardId;
  DashboardIdBuilder get dashboardId =>
      _$this._dashboardId ??= DashboardIdBuilder();
  set dashboardId(covariant DashboardIdBuilder? dashboardId) =>
      _$this._dashboardId = dashboardId;

  EntityId? _stateEntityId;
  EntityId? get stateEntityId => _$this._stateEntityId;
  set stateEntityId(covariant EntityId? stateEntityId) =>
      _$this._stateEntityId = stateEntityId;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  RuleEngineComponentLifecycleEventNotificationInfoBuilder() {
    RuleEngineComponentLifecycleEventNotificationInfo._defaults(this);
  }

  RuleEngineComponentLifecycleEventNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _componentId = $v.componentId;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _action = $v.action;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _componentName = $v.componentName;
      _eventType = $v.eventType;
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _error = $v.error;
      _ruleChainName = $v.ruleChainName;
      _ruleChainId = $v.ruleChainId?.toBuilder();
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant RuleEngineComponentLifecycleEventNotificationInfo other,
  ) {
    _$v = other as _$RuleEngineComponentLifecycleEventNotificationInfo;
  }

  @override
  void update(
    void Function(RuleEngineComponentLifecycleEventNotificationInfoBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RuleEngineComponentLifecycleEventNotificationInfo build() => _build();

  _$RuleEngineComponentLifecycleEventNotificationInfo _build() {
    _$RuleEngineComponentLifecycleEventNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$RuleEngineComponentLifecycleEventNotificationInfo._(
            componentId: componentId,
            affectedUserId: _affectedUserId?.build(),
            action: action,
            affectedCustomerId: _affectedCustomerId?.build(),
            componentName: componentName,
            eventType: eventType,
            affectedTenantId: _affectedTenantId?.build(),
            error: error,
            ruleChainName: ruleChainName,
            ruleChainId: _ruleChainId?.build(),
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RuleEngineComponentLifecycleEventNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();

        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'ruleChainId';
        _ruleChainId?.build();
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleEngineComponentLifecycleEventNotificationInfo',
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

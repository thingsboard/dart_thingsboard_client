// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_lifecycle_event_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationLifecycleEventNotificationInfo
    extends IntegrationLifecycleEventNotificationInfo {
  @override
  final String? integrationType;
  @override
  final String? integrationName;
  @override
  final UserId? affectedUserId;
  @override
  final IntegrationId? integrationId;
  @override
  final String? action;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final ComponentLifecycleEvent? eventType;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? error;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$IntegrationLifecycleEventNotificationInfo([
    void Function(IntegrationLifecycleEventNotificationInfoBuilder)? updates,
  ]) => (IntegrationLifecycleEventNotificationInfoBuilder()..update(updates))
      ._build();

  _$IntegrationLifecycleEventNotificationInfo._({
    this.integrationType,
    this.integrationName,
    this.affectedUserId,
    this.integrationId,
    this.action,
    this.affectedCustomerId,
    this.eventType,
    this.affectedTenantId,
    this.error,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  IntegrationLifecycleEventNotificationInfo rebuild(
    void Function(IntegrationLifecycleEventNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntegrationLifecycleEventNotificationInfoBuilder toBuilder() =>
      IntegrationLifecycleEventNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationLifecycleEventNotificationInfo &&
        integrationType == other.integrationType &&
        integrationName == other.integrationName &&
        affectedUserId == other.affectedUserId &&
        integrationId == other.integrationId &&
        action == other.action &&
        affectedCustomerId == other.affectedCustomerId &&
        eventType == other.eventType &&
        affectedTenantId == other.affectedTenantId &&
        error == other.error &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, integrationType.hashCode);
    _$hash = $jc(_$hash, integrationName.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, integrationId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'IntegrationLifecycleEventNotificationInfo',
          )
          ..add('integrationType', integrationType)
          ..add('integrationName', integrationName)
          ..add('affectedUserId', affectedUserId)
          ..add('integrationId', integrationId)
          ..add('action', action)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('eventType', eventType)
          ..add('affectedTenantId', affectedTenantId)
          ..add('error', error)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class IntegrationLifecycleEventNotificationInfoBuilder
    implements
        Builder<
          IntegrationLifecycleEventNotificationInfo,
          IntegrationLifecycleEventNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$IntegrationLifecycleEventNotificationInfo? _$v;

  String? _integrationType;
  String? get integrationType => _$this._integrationType;
  set integrationType(covariant String? integrationType) =>
      _$this._integrationType = integrationType;

  String? _integrationName;
  String? get integrationName => _$this._integrationName;
  set integrationName(covariant String? integrationName) =>
      _$this._integrationName = integrationName;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  IntegrationIdBuilder? _integrationId;
  IntegrationIdBuilder get integrationId =>
      _$this._integrationId ??= IntegrationIdBuilder();
  set integrationId(covariant IntegrationIdBuilder? integrationId) =>
      _$this._integrationId = integrationId;

  String? _action;
  String? get action => _$this._action;
  set action(covariant String? action) => _$this._action = action;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

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

  IntegrationLifecycleEventNotificationInfoBuilder() {
    IntegrationLifecycleEventNotificationInfo._defaults(this);
  }

  IntegrationLifecycleEventNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integrationType = $v.integrationType;
      _integrationName = $v.integrationName;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _integrationId = $v.integrationId?.toBuilder();
      _action = $v.action;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _eventType = $v.eventType;
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _error = $v.error;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IntegrationLifecycleEventNotificationInfo other) {
    _$v = other as _$IntegrationLifecycleEventNotificationInfo;
  }

  @override
  void update(
    void Function(IntegrationLifecycleEventNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationLifecycleEventNotificationInfo build() => _build();

  _$IntegrationLifecycleEventNotificationInfo _build() {
    _$IntegrationLifecycleEventNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$IntegrationLifecycleEventNotificationInfo._(
            integrationType: integrationType,
            integrationName: integrationName,
            affectedUserId: _affectedUserId?.build(),
            integrationId: _integrationId?.build(),
            action: action,
            affectedCustomerId: _affectedCustomerId?.build(),
            eventType: eventType,
            affectedTenantId: _affectedTenantId?.build(),
            error: error,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'IntegrationLifecycleEventNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();
        _$failedField = 'integrationId';
        _integrationId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();

        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntegrationLifecycleEventNotificationInfo',
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

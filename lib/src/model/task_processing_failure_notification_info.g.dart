// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_processing_failure_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskProcessingFailureNotificationInfo
    extends TaskProcessingFailureNotificationInfo {
  @override
  final HousekeeperTaskType? taskType;
  @override
  final UserId? affectedUserId;
  @override
  final String? taskDescription;
  @override
  final TenantId? tenantId;
  @override
  final EntityId? entityId;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? error;
  @override
  final int? attempt;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$TaskProcessingFailureNotificationInfo([
    void Function(TaskProcessingFailureNotificationInfoBuilder)? updates,
  ]) => (TaskProcessingFailureNotificationInfoBuilder()..update(updates))
      ._build();

  _$TaskProcessingFailureNotificationInfo._({
    this.taskType,
    this.affectedUserId,
    this.taskDescription,
    this.tenantId,
    this.entityId,
    this.affectedCustomerId,
    this.affectedTenantId,
    this.error,
    this.attempt,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  TaskProcessingFailureNotificationInfo rebuild(
    void Function(TaskProcessingFailureNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TaskProcessingFailureNotificationInfoBuilder toBuilder() =>
      TaskProcessingFailureNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskProcessingFailureNotificationInfo &&
        taskType == other.taskType &&
        affectedUserId == other.affectedUserId &&
        taskDescription == other.taskDescription &&
        tenantId == other.tenantId &&
        entityId == other.entityId &&
        affectedCustomerId == other.affectedCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        error == other.error &&
        attempt == other.attempt &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, taskType.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, taskDescription.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, attempt.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TaskProcessingFailureNotificationInfo',
          )
          ..add('taskType', taskType)
          ..add('affectedUserId', affectedUserId)
          ..add('taskDescription', taskDescription)
          ..add('tenantId', tenantId)
          ..add('entityId', entityId)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('error', error)
          ..add('attempt', attempt)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class TaskProcessingFailureNotificationInfoBuilder
    implements
        Builder<
          TaskProcessingFailureNotificationInfo,
          TaskProcessingFailureNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$TaskProcessingFailureNotificationInfo? _$v;

  HousekeeperTaskType? _taskType;
  HousekeeperTaskType? get taskType => _$this._taskType;
  set taskType(covariant HousekeeperTaskType? taskType) =>
      _$this._taskType = taskType;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  String? _taskDescription;
  String? get taskDescription => _$this._taskDescription;
  set taskDescription(covariant String? taskDescription) =>
      _$this._taskDescription = taskDescription;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(covariant TenantIdBuilder? tenantId) =>
      _$this._tenantId = tenantId;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(covariant EntityId? entityId) => _$this._entityId = entityId;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  String? _error;
  String? get error => _$this._error;
  set error(covariant String? error) => _$this._error = error;

  int? _attempt;
  int? get attempt => _$this._attempt;
  set attempt(covariant int? attempt) => _$this._attempt = attempt;

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

  TaskProcessingFailureNotificationInfoBuilder() {
    TaskProcessingFailureNotificationInfo._defaults(this);
  }

  TaskProcessingFailureNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _taskType = $v.taskType;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _taskDescription = $v.taskDescription;
      _tenantId = $v.tenantId?.toBuilder();
      _entityId = $v.entityId;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _error = $v.error;
      _attempt = $v.attempt;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TaskProcessingFailureNotificationInfo other) {
    _$v = other as _$TaskProcessingFailureNotificationInfo;
  }

  @override
  void update(
    void Function(TaskProcessingFailureNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TaskProcessingFailureNotificationInfo build() => _build();

  _$TaskProcessingFailureNotificationInfo _build() {
    _$TaskProcessingFailureNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$TaskProcessingFailureNotificationInfo._(
            taskType: taskType,
            affectedUserId: _affectedUserId?.build(),
            taskDescription: taskDescription,
            tenantId: _tenantId?.build(),
            entityId: entityId,
            affectedCustomerId: _affectedCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            error: error,
            attempt: attempt,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'TaskProcessingFailureNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();
        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TaskProcessingFailureNotificationInfo',
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

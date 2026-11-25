// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuditLog extends AuditLog {
  @override
  final AuditLogId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final EntityId? entityId;
  @override
  final String? entityName;
  @override
  final UserId? userId;
  @override
  final String? userName;
  @override
  final ActionType? actionType;
  @override
  final JsonObject? actionData;
  @override
  final ActionStatus? actionStatus;
  @override
  final String? actionFailureDetails;

  factory _$AuditLog([void Function(AuditLogBuilder)? updates]) =>
      (AuditLogBuilder()..update(updates))._build();

  _$AuditLog._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    this.entityId,
    this.entityName,
    this.userId,
    this.userName,
    this.actionType,
    this.actionData,
    this.actionStatus,
    this.actionFailureDetails,
  }) : super._();
  @override
  AuditLog rebuild(void Function(AuditLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuditLogBuilder toBuilder() => AuditLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuditLog &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        entityId == other.entityId &&
        entityName == other.entityName &&
        userId == other.userId &&
        userName == other.userName &&
        actionType == other.actionType &&
        actionData == other.actionData &&
        actionStatus == other.actionStatus &&
        actionFailureDetails == other.actionFailureDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, entityName.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, actionData.hashCode);
    _$hash = $jc(_$hash, actionStatus.hashCode);
    _$hash = $jc(_$hash, actionFailureDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuditLog')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('entityId', entityId)
          ..add('entityName', entityName)
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('actionType', actionType)
          ..add('actionData', actionData)
          ..add('actionStatus', actionStatus)
          ..add('actionFailureDetails', actionFailureDetails))
        .toString();
  }
}

class AuditLogBuilder implements Builder<AuditLog, AuditLogBuilder> {
  _$AuditLog? _$v;

  AuditLogIdBuilder? _id;
  AuditLogIdBuilder get id => _$this._id ??= AuditLogIdBuilder();
  set id(AuditLogIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(EntityId? entityId) => _$this._entityId = entityId;

  String? _entityName;
  String? get entityName => _$this._entityName;
  set entityName(String? entityName) => _$this._entityName = entityName;

  UserIdBuilder? _userId;
  UserIdBuilder get userId => _$this._userId ??= UserIdBuilder();
  set userId(UserIdBuilder? userId) => _$this._userId = userId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  ActionType? _actionType;
  ActionType? get actionType => _$this._actionType;
  set actionType(ActionType? actionType) => _$this._actionType = actionType;

  JsonObject? _actionData;
  JsonObject? get actionData => _$this._actionData;
  set actionData(JsonObject? actionData) => _$this._actionData = actionData;

  ActionStatus? _actionStatus;
  ActionStatus? get actionStatus => _$this._actionStatus;
  set actionStatus(ActionStatus? actionStatus) =>
      _$this._actionStatus = actionStatus;

  String? _actionFailureDetails;
  String? get actionFailureDetails => _$this._actionFailureDetails;
  set actionFailureDetails(String? actionFailureDetails) =>
      _$this._actionFailureDetails = actionFailureDetails;

  AuditLogBuilder() {
    AuditLog._defaults(this);
  }

  AuditLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _entityId = $v.entityId;
      _entityName = $v.entityName;
      _userId = $v.userId?.toBuilder();
      _userName = $v.userName;
      _actionType = $v.actionType;
      _actionData = $v.actionData;
      _actionStatus = $v.actionStatus;
      _actionFailureDetails = $v.actionFailureDetails;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuditLog other) {
    _$v = other as _$AuditLog;
  }

  @override
  void update(void Function(AuditLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuditLog build() => _build();

  _$AuditLog _build() {
    _$AuditLog _$result;
    try {
      _$result =
          _$v ??
          _$AuditLog._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            entityId: entityId,
            entityName: entityName,
            userId: _userId?.build(),
            userName: userName,
            actionType: actionType,
            actionData: actionData,
            actionStatus: actionStatus,
            actionFailureDetails: actionFailureDetails,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'userId';
        _userId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AuditLog',
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

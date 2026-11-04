// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_action_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityActionNotificationInfo extends EntityActionNotificationInfo {
  @override
  final ActionType? actionType;
  @override
  final String? userTitle;
  @override
  final UserId? affectedUserId;
  @override
  final String? entityName;
  @override
  final String? userLastName;
  @override
  final CustomerId? customerId;
  @override
  final EntityId? entityId;
  @override
  final String? userEmail;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final String? userFirstName;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? userId;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$EntityActionNotificationInfo([
    void Function(EntityActionNotificationInfoBuilder)? updates,
  ]) => (EntityActionNotificationInfoBuilder()..update(updates))._build();

  _$EntityActionNotificationInfo._({
    this.actionType,
    this.userTitle,
    this.affectedUserId,
    this.entityName,
    this.userLastName,
    this.customerId,
    this.entityId,
    this.userEmail,
    this.affectedCustomerId,
    this.userFirstName,
    this.affectedTenantId,
    this.userId,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  EntityActionNotificationInfo rebuild(
    void Function(EntityActionNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityActionNotificationInfoBuilder toBuilder() =>
      EntityActionNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityActionNotificationInfo &&
        actionType == other.actionType &&
        userTitle == other.userTitle &&
        affectedUserId == other.affectedUserId &&
        entityName == other.entityName &&
        userLastName == other.userLastName &&
        customerId == other.customerId &&
        entityId == other.entityId &&
        userEmail == other.userEmail &&
        affectedCustomerId == other.affectedCustomerId &&
        userFirstName == other.userFirstName &&
        affectedTenantId == other.affectedTenantId &&
        userId == other.userId &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, userTitle.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, entityName.hashCode);
    _$hash = $jc(_$hash, userLastName.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, userFirstName.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityActionNotificationInfo')
          ..add('actionType', actionType)
          ..add('userTitle', userTitle)
          ..add('affectedUserId', affectedUserId)
          ..add('entityName', entityName)
          ..add('userLastName', userLastName)
          ..add('customerId', customerId)
          ..add('entityId', entityId)
          ..add('userEmail', userEmail)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('userFirstName', userFirstName)
          ..add('affectedTenantId', affectedTenantId)
          ..add('userId', userId)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class EntityActionNotificationInfoBuilder
    implements
        Builder<
          EntityActionNotificationInfo,
          EntityActionNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$EntityActionNotificationInfo? _$v;

  ActionType? _actionType;
  ActionType? get actionType => _$this._actionType;
  set actionType(covariant ActionType? actionType) =>
      _$this._actionType = actionType;

  String? _userTitle;
  String? get userTitle => _$this._userTitle;
  set userTitle(covariant String? userTitle) => _$this._userTitle = userTitle;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  String? _entityName;
  String? get entityName => _$this._entityName;
  set entityName(covariant String? entityName) =>
      _$this._entityName = entityName;

  String? _userLastName;
  String? get userLastName => _$this._userLastName;
  set userLastName(covariant String? userLastName) =>
      _$this._userLastName = userLastName;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(covariant CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(covariant EntityId? entityId) => _$this._entityId = entityId;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(covariant String? userEmail) => _$this._userEmail = userEmail;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  String? _userFirstName;
  String? get userFirstName => _$this._userFirstName;
  set userFirstName(covariant String? userFirstName) =>
      _$this._userFirstName = userFirstName;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(covariant String? userId) => _$this._userId = userId;

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

  EntityActionNotificationInfoBuilder() {
    EntityActionNotificationInfo._defaults(this);
  }

  EntityActionNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionType = $v.actionType;
      _userTitle = $v.userTitle;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _entityName = $v.entityName;
      _userLastName = $v.userLastName;
      _customerId = $v.customerId?.toBuilder();
      _entityId = $v.entityId;
      _userEmail = $v.userEmail;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _userFirstName = $v.userFirstName;
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _userId = $v.userId;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityActionNotificationInfo other) {
    _$v = other as _$EntityActionNotificationInfo;
  }

  @override
  void update(void Function(EntityActionNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityActionNotificationInfo build() => _build();

  _$EntityActionNotificationInfo _build() {
    _$EntityActionNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$EntityActionNotificationInfo._(
            actionType: actionType,
            userTitle: userTitle,
            affectedUserId: _affectedUserId?.build(),
            entityName: entityName,
            userLastName: userLastName,
            customerId: _customerId?.build(),
            entityId: entityId,
            userEmail: userEmail,
            affectedCustomerId: _affectedCustomerId?.build(),
            userFirstName: userFirstName,
            affectedTenantId: _affectedTenantId?.build(),
            userId: userId,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityActionNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();

        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();

        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityActionNotificationInfo',
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

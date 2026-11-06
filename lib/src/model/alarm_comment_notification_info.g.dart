// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_comment_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmCommentNotificationInfo extends AlarmCommentNotificationInfo {
  @override
  final AlarmSeverity? alarmSeverity;
  @override
  final CustomerId? alarmCustomerId;
  @override
  final UserId? affectedUserId;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final String? userFirstName;
  @override
  final String? alarmOriginatorLabel;
  @override
  final String? alarmType;
  @override
  final AlarmStatus? alarmStatus;
  @override
  final EntityId? alarmOriginator;
  @override
  final String? userLastName;
  @override
  final String? alarmId;
  @override
  final String? action;
  @override
  final String? comment;
  @override
  final String? userEmail;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? alarmOriginatorName;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$AlarmCommentNotificationInfo([
    void Function(AlarmCommentNotificationInfoBuilder)? updates,
  ]) => (AlarmCommentNotificationInfoBuilder()..update(updates))._build();

  _$AlarmCommentNotificationInfo._({
    this.alarmSeverity,
    this.alarmCustomerId,
    this.affectedUserId,
    this.affectedCustomerId,
    this.userFirstName,
    this.alarmOriginatorLabel,
    this.alarmType,
    this.alarmStatus,
    this.alarmOriginator,
    this.userLastName,
    this.alarmId,
    this.action,
    this.comment,
    this.userEmail,
    this.affectedTenantId,
    this.alarmOriginatorName,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  AlarmCommentNotificationInfo rebuild(
    void Function(AlarmCommentNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmCommentNotificationInfoBuilder toBuilder() =>
      AlarmCommentNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmCommentNotificationInfo &&
        alarmSeverity == other.alarmSeverity &&
        alarmCustomerId == other.alarmCustomerId &&
        affectedUserId == other.affectedUserId &&
        affectedCustomerId == other.affectedCustomerId &&
        userFirstName == other.userFirstName &&
        alarmOriginatorLabel == other.alarmOriginatorLabel &&
        alarmType == other.alarmType &&
        alarmStatus == other.alarmStatus &&
        alarmOriginator == other.alarmOriginator &&
        userLastName == other.userLastName &&
        alarmId == other.alarmId &&
        action == other.action &&
        comment == other.comment &&
        userEmail == other.userEmail &&
        affectedTenantId == other.affectedTenantId &&
        alarmOriginatorName == other.alarmOriginatorName &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alarmSeverity.hashCode);
    _$hash = $jc(_$hash, alarmCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, userFirstName.hashCode);
    _$hash = $jc(_$hash, alarmOriginatorLabel.hashCode);
    _$hash = $jc(_$hash, alarmType.hashCode);
    _$hash = $jc(_$hash, alarmStatus.hashCode);
    _$hash = $jc(_$hash, alarmOriginator.hashCode);
    _$hash = $jc(_$hash, userLastName.hashCode);
    _$hash = $jc(_$hash, alarmId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, alarmOriginatorName.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmCommentNotificationInfo')
          ..add('alarmSeverity', alarmSeverity)
          ..add('alarmCustomerId', alarmCustomerId)
          ..add('affectedUserId', affectedUserId)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('userFirstName', userFirstName)
          ..add('alarmOriginatorLabel', alarmOriginatorLabel)
          ..add('alarmType', alarmType)
          ..add('alarmStatus', alarmStatus)
          ..add('alarmOriginator', alarmOriginator)
          ..add('userLastName', userLastName)
          ..add('alarmId', alarmId)
          ..add('action', action)
          ..add('comment', comment)
          ..add('userEmail', userEmail)
          ..add('affectedTenantId', affectedTenantId)
          ..add('alarmOriginatorName', alarmOriginatorName)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class AlarmCommentNotificationInfoBuilder
    implements
        Builder<
          AlarmCommentNotificationInfo,
          AlarmCommentNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$AlarmCommentNotificationInfo? _$v;

  AlarmSeverity? _alarmSeverity;
  AlarmSeverity? get alarmSeverity => _$this._alarmSeverity;
  set alarmSeverity(covariant AlarmSeverity? alarmSeverity) =>
      _$this._alarmSeverity = alarmSeverity;

  CustomerIdBuilder? _alarmCustomerId;
  CustomerIdBuilder get alarmCustomerId =>
      _$this._alarmCustomerId ??= CustomerIdBuilder();
  set alarmCustomerId(covariant CustomerIdBuilder? alarmCustomerId) =>
      _$this._alarmCustomerId = alarmCustomerId;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  String? _userFirstName;
  String? get userFirstName => _$this._userFirstName;
  set userFirstName(covariant String? userFirstName) =>
      _$this._userFirstName = userFirstName;

  String? _alarmOriginatorLabel;
  String? get alarmOriginatorLabel => _$this._alarmOriginatorLabel;
  set alarmOriginatorLabel(covariant String? alarmOriginatorLabel) =>
      _$this._alarmOriginatorLabel = alarmOriginatorLabel;

  String? _alarmType;
  String? get alarmType => _$this._alarmType;
  set alarmType(covariant String? alarmType) => _$this._alarmType = alarmType;

  AlarmStatus? _alarmStatus;
  AlarmStatus? get alarmStatus => _$this._alarmStatus;
  set alarmStatus(covariant AlarmStatus? alarmStatus) =>
      _$this._alarmStatus = alarmStatus;

  EntityId? _alarmOriginator;
  EntityId? get alarmOriginator => _$this._alarmOriginator;
  set alarmOriginator(covariant EntityId? alarmOriginator) =>
      _$this._alarmOriginator = alarmOriginator;

  String? _userLastName;
  String? get userLastName => _$this._userLastName;
  set userLastName(covariant String? userLastName) =>
      _$this._userLastName = userLastName;

  String? _alarmId;
  String? get alarmId => _$this._alarmId;
  set alarmId(covariant String? alarmId) => _$this._alarmId = alarmId;

  String? _action;
  String? get action => _$this._action;
  set action(covariant String? action) => _$this._action = action;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(covariant String? comment) => _$this._comment = comment;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(covariant String? userEmail) => _$this._userEmail = userEmail;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  String? _alarmOriginatorName;
  String? get alarmOriginatorName => _$this._alarmOriginatorName;
  set alarmOriginatorName(covariant String? alarmOriginatorName) =>
      _$this._alarmOriginatorName = alarmOriginatorName;

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

  AlarmCommentNotificationInfoBuilder() {
    AlarmCommentNotificationInfo._defaults(this);
  }

  AlarmCommentNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alarmSeverity = $v.alarmSeverity;
      _alarmCustomerId = $v.alarmCustomerId?.toBuilder();
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _userFirstName = $v.userFirstName;
      _alarmOriginatorLabel = $v.alarmOriginatorLabel;
      _alarmType = $v.alarmType;
      _alarmStatus = $v.alarmStatus;
      _alarmOriginator = $v.alarmOriginator;
      _userLastName = $v.userLastName;
      _alarmId = $v.alarmId;
      _action = $v.action;
      _comment = $v.comment;
      _userEmail = $v.userEmail;
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _alarmOriginatorName = $v.alarmOriginatorName;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmCommentNotificationInfo other) {
    _$v = other as _$AlarmCommentNotificationInfo;
  }

  @override
  void update(void Function(AlarmCommentNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmCommentNotificationInfo build() => _build();

  _$AlarmCommentNotificationInfo _build() {
    _$AlarmCommentNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$AlarmCommentNotificationInfo._(
            alarmSeverity: alarmSeverity,
            alarmCustomerId: _alarmCustomerId?.build(),
            affectedUserId: _affectedUserId?.build(),
            affectedCustomerId: _affectedCustomerId?.build(),
            userFirstName: userFirstName,
            alarmOriginatorLabel: alarmOriginatorLabel,
            alarmType: alarmType,
            alarmStatus: alarmStatus,
            alarmOriginator: alarmOriginator,
            userLastName: userLastName,
            alarmId: alarmId,
            action: action,
            comment: comment,
            userEmail: userEmail,
            affectedTenantId: _affectedTenantId?.build(),
            alarmOriginatorName: alarmOriginatorName,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AlarmCommentNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alarmCustomerId';
        _alarmCustomerId?.build();
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();
        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();

        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmCommentNotificationInfo',
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

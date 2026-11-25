// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registered_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRegisteredNotificationInfo extends UserRegisteredNotificationInfo {
  @override
  final String? userFullName;
  @override
  final String? userEmail;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$UserRegisteredNotificationInfo([
    void Function(UserRegisteredNotificationInfoBuilder)? updates,
  ]) => (UserRegisteredNotificationInfoBuilder()..update(updates))._build();

  _$UserRegisteredNotificationInfo._({
    this.userFullName,
    this.userEmail,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  UserRegisteredNotificationInfo rebuild(
    void Function(UserRegisteredNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserRegisteredNotificationInfoBuilder toBuilder() =>
      UserRegisteredNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRegisteredNotificationInfo &&
        userFullName == other.userFullName &&
        userEmail == other.userEmail &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userFullName.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRegisteredNotificationInfo')
          ..add('userFullName', userFullName)
          ..add('userEmail', userEmail)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class UserRegisteredNotificationInfoBuilder
    implements
        Builder<
          UserRegisteredNotificationInfo,
          UserRegisteredNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$UserRegisteredNotificationInfo? _$v;

  String? _userFullName;
  String? get userFullName => _$this._userFullName;
  set userFullName(covariant String? userFullName) =>
      _$this._userFullName = userFullName;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(covariant String? userEmail) => _$this._userEmail = userEmail;

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

  UserRegisteredNotificationInfoBuilder() {
    UserRegisteredNotificationInfo._defaults(this);
  }

  UserRegisteredNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userFullName = $v.userFullName;
      _userEmail = $v.userEmail;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserRegisteredNotificationInfo other) {
    _$v = other as _$UserRegisteredNotificationInfo;
  }

  @override
  void update(void Function(UserRegisteredNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRegisteredNotificationInfo build() => _build();

  _$UserRegisteredNotificationInfo _build() {
    _$UserRegisteredNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$UserRegisteredNotificationInfo._(
            userFullName: userFullName,
            userEmail: userEmail,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'UserRegisteredNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserRegisteredNotificationInfo',
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

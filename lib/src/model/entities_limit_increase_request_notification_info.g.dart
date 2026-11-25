// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities_limit_increase_request_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntitiesLimitIncreaseRequestNotificationInfo
    extends EntitiesLimitIncreaseRequestNotificationInfo {
  @override
  final String? baseUrl;
  @override
  final String? increaseLimitActionLabel;
  @override
  final EntityType? entityType;
  @override
  final String? increaseLimitLink;
  @override
  final String? userEmail;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$EntitiesLimitIncreaseRequestNotificationInfo([
    void Function(EntitiesLimitIncreaseRequestNotificationInfoBuilder)? updates,
  ]) => (EntitiesLimitIncreaseRequestNotificationInfoBuilder()..update(updates))
      ._build();

  _$EntitiesLimitIncreaseRequestNotificationInfo._({
    this.baseUrl,
    this.increaseLimitActionLabel,
    this.entityType,
    this.increaseLimitLink,
    this.userEmail,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  EntitiesLimitIncreaseRequestNotificationInfo rebuild(
    void Function(EntitiesLimitIncreaseRequestNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntitiesLimitIncreaseRequestNotificationInfoBuilder toBuilder() =>
      EntitiesLimitIncreaseRequestNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntitiesLimitIncreaseRequestNotificationInfo &&
        baseUrl == other.baseUrl &&
        increaseLimitActionLabel == other.increaseLimitActionLabel &&
        entityType == other.entityType &&
        increaseLimitLink == other.increaseLimitLink &&
        userEmail == other.userEmail &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, increaseLimitActionLabel.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, increaseLimitLink.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EntitiesLimitIncreaseRequestNotificationInfo',
          )
          ..add('baseUrl', baseUrl)
          ..add('increaseLimitActionLabel', increaseLimitActionLabel)
          ..add('entityType', entityType)
          ..add('increaseLimitLink', increaseLimitLink)
          ..add('userEmail', userEmail)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class EntitiesLimitIncreaseRequestNotificationInfoBuilder
    implements
        Builder<
          EntitiesLimitIncreaseRequestNotificationInfo,
          EntitiesLimitIncreaseRequestNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$EntitiesLimitIncreaseRequestNotificationInfo? _$v;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(covariant String? baseUrl) => _$this._baseUrl = baseUrl;

  String? _increaseLimitActionLabel;
  String? get increaseLimitActionLabel => _$this._increaseLimitActionLabel;
  set increaseLimitActionLabel(covariant String? increaseLimitActionLabel) =>
      _$this._increaseLimitActionLabel = increaseLimitActionLabel;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _increaseLimitLink;
  String? get increaseLimitLink => _$this._increaseLimitLink;
  set increaseLimitLink(covariant String? increaseLimitLink) =>
      _$this._increaseLimitLink = increaseLimitLink;

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

  EntitiesLimitIncreaseRequestNotificationInfoBuilder() {
    EntitiesLimitIncreaseRequestNotificationInfo._defaults(this);
  }

  EntitiesLimitIncreaseRequestNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseUrl = $v.baseUrl;
      _increaseLimitActionLabel = $v.increaseLimitActionLabel;
      _entityType = $v.entityType;
      _increaseLimitLink = $v.increaseLimitLink;
      _userEmail = $v.userEmail;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntitiesLimitIncreaseRequestNotificationInfo other) {
    _$v = other as _$EntitiesLimitIncreaseRequestNotificationInfo;
  }

  @override
  void update(
    void Function(EntitiesLimitIncreaseRequestNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EntitiesLimitIncreaseRequestNotificationInfo build() => _build();

  _$EntitiesLimitIncreaseRequestNotificationInfo _build() {
    _$EntitiesLimitIncreaseRequestNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$EntitiesLimitIncreaseRequestNotificationInfo._(
            baseUrl: baseUrl,
            increaseLimitActionLabel: increaseLimitActionLabel,
            entityType: entityType,
            increaseLimitLink: increaseLimitLink,
            userEmail: userEmail,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntitiesLimitIncreaseRequestNotificationInfo',
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
          r'EntitiesLimitIncreaseRequestNotificationInfo',
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

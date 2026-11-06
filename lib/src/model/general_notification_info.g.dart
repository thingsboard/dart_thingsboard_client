// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeneralNotificationInfo extends GeneralNotificationInfo {
  @override
  final BuiltMap<String, String>? data;
  @override
  final UserId? affectedUserId;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$GeneralNotificationInfo([
    void Function(GeneralNotificationInfoBuilder)? updates,
  ]) => (GeneralNotificationInfoBuilder()..update(updates))._build();

  _$GeneralNotificationInfo._({
    this.data,
    this.affectedUserId,
    this.affectedCustomerId,
    this.affectedTenantId,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  GeneralNotificationInfo rebuild(
    void Function(GeneralNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GeneralNotificationInfoBuilder toBuilder() =>
      GeneralNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralNotificationInfo &&
        data == other.data &&
        affectedUserId == other.affectedUserId &&
        affectedCustomerId == other.affectedCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneralNotificationInfo')
          ..add('data', data)
          ..add('affectedUserId', affectedUserId)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class GeneralNotificationInfoBuilder
    implements
        Builder<GeneralNotificationInfo, GeneralNotificationInfoBuilder>,
        NotificationInfoBuilder {
  _$GeneralNotificationInfo? _$v;

  MapBuilder<String, String>? _data;
  MapBuilder<String, String> get data =>
      _$this._data ??= MapBuilder<String, String>();
  set data(covariant MapBuilder<String, String>? data) => _$this._data = data;

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

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

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

  GeneralNotificationInfoBuilder() {
    GeneralNotificationInfo._defaults(this);
  }

  GeneralNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GeneralNotificationInfo other) {
    _$v = other as _$GeneralNotificationInfo;
  }

  @override
  void update(void Function(GeneralNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneralNotificationInfo build() => _build();

  _$GeneralNotificationInfo _build() {
    _$GeneralNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$GeneralNotificationInfo._(
            data: _data?.build(),
            affectedUserId: _affectedUserId?.build(),
            affectedCustomerId: _affectedCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'GeneralNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
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
          r'GeneralNotificationInfo',
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

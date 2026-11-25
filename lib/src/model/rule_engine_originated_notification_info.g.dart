// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_engine_originated_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleEngineOriginatedNotificationInfo
    extends RuleEngineOriginatedNotificationInfo {
  @override
  final String? msgType;
  @override
  final UserId? affectedUserId;
  @override
  final CustomerId? msgCustomerId;
  @override
  final EntityId? msgOriginator;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final BuiltMap<String, String>? msgData;
  @override
  final TenantId? affectedTenantId;
  @override
  final BuiltMap<String, String>? msgMetadata;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$RuleEngineOriginatedNotificationInfo([
    void Function(RuleEngineOriginatedNotificationInfoBuilder)? updates,
  ]) =>
      (RuleEngineOriginatedNotificationInfoBuilder()..update(updates))._build();

  _$RuleEngineOriginatedNotificationInfo._({
    this.msgType,
    this.affectedUserId,
    this.msgCustomerId,
    this.msgOriginator,
    this.affectedCustomerId,
    this.msgData,
    this.affectedTenantId,
    this.msgMetadata,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  RuleEngineOriginatedNotificationInfo rebuild(
    void Function(RuleEngineOriginatedNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleEngineOriginatedNotificationInfoBuilder toBuilder() =>
      RuleEngineOriginatedNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleEngineOriginatedNotificationInfo &&
        msgType == other.msgType &&
        affectedUserId == other.affectedUserId &&
        msgCustomerId == other.msgCustomerId &&
        msgOriginator == other.msgOriginator &&
        affectedCustomerId == other.affectedCustomerId &&
        msgData == other.msgData &&
        affectedTenantId == other.affectedTenantId &&
        msgMetadata == other.msgMetadata &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, msgType.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, msgCustomerId.hashCode);
    _$hash = $jc(_$hash, msgOriginator.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, msgData.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, msgMetadata.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleEngineOriginatedNotificationInfo')
          ..add('msgType', msgType)
          ..add('affectedUserId', affectedUserId)
          ..add('msgCustomerId', msgCustomerId)
          ..add('msgOriginator', msgOriginator)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('msgData', msgData)
          ..add('affectedTenantId', affectedTenantId)
          ..add('msgMetadata', msgMetadata)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class RuleEngineOriginatedNotificationInfoBuilder
    implements
        Builder<
          RuleEngineOriginatedNotificationInfo,
          RuleEngineOriginatedNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$RuleEngineOriginatedNotificationInfo? _$v;

  String? _msgType;
  String? get msgType => _$this._msgType;
  set msgType(covariant String? msgType) => _$this._msgType = msgType;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  CustomerIdBuilder? _msgCustomerId;
  CustomerIdBuilder get msgCustomerId =>
      _$this._msgCustomerId ??= CustomerIdBuilder();
  set msgCustomerId(covariant CustomerIdBuilder? msgCustomerId) =>
      _$this._msgCustomerId = msgCustomerId;

  EntityId? _msgOriginator;
  EntityId? get msgOriginator => _$this._msgOriginator;
  set msgOriginator(covariant EntityId? msgOriginator) =>
      _$this._msgOriginator = msgOriginator;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  MapBuilder<String, String>? _msgData;
  MapBuilder<String, String> get msgData =>
      _$this._msgData ??= MapBuilder<String, String>();
  set msgData(covariant MapBuilder<String, String>? msgData) =>
      _$this._msgData = msgData;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  MapBuilder<String, String>? _msgMetadata;
  MapBuilder<String, String> get msgMetadata =>
      _$this._msgMetadata ??= MapBuilder<String, String>();
  set msgMetadata(covariant MapBuilder<String, String>? msgMetadata) =>
      _$this._msgMetadata = msgMetadata;

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

  RuleEngineOriginatedNotificationInfoBuilder() {
    RuleEngineOriginatedNotificationInfo._defaults(this);
  }

  RuleEngineOriginatedNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _msgType = $v.msgType;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _msgCustomerId = $v.msgCustomerId?.toBuilder();
      _msgOriginator = $v.msgOriginator;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _msgData = $v.msgData?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _msgMetadata = $v.msgMetadata?.toBuilder();
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RuleEngineOriginatedNotificationInfo other) {
    _$v = other as _$RuleEngineOriginatedNotificationInfo;
  }

  @override
  void update(
    void Function(RuleEngineOriginatedNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RuleEngineOriginatedNotificationInfo build() => _build();

  _$RuleEngineOriginatedNotificationInfo _build() {
    _$RuleEngineOriginatedNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$RuleEngineOriginatedNotificationInfo._(
            msgType: msgType,
            affectedUserId: _affectedUserId?.build(),
            msgCustomerId: _msgCustomerId?.build(),
            msgOriginator: msgOriginator,
            affectedCustomerId: _affectedCustomerId?.build(),
            msgData: _msgData?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            msgMetadata: _msgMetadata?.build(),
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RuleEngineOriginatedNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();
        _$failedField = 'msgCustomerId';
        _msgCustomerId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();
        _$failedField = 'msgData';
        _msgData?.build();
        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();
        _$failedField = 'msgMetadata';
        _msgMetadata?.build();
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleEngineOriginatedNotificationInfo',
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

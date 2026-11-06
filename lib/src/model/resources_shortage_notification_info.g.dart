// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_shortage_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourcesShortageNotificationInfo
    extends ResourcesShortageNotificationInfo {
  @override
  final String? serviceType;
  @override
  final String? resource;
  @override
  final UserId? affectedUserId;
  @override
  final int? usage;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? serviceId;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$ResourcesShortageNotificationInfo([
    void Function(ResourcesShortageNotificationInfoBuilder)? updates,
  ]) => (ResourcesShortageNotificationInfoBuilder()..update(updates))._build();

  _$ResourcesShortageNotificationInfo._({
    this.serviceType,
    this.resource,
    this.affectedUserId,
    this.usage,
    this.affectedCustomerId,
    this.affectedTenantId,
    this.serviceId,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  ResourcesShortageNotificationInfo rebuild(
    void Function(ResourcesShortageNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourcesShortageNotificationInfoBuilder toBuilder() =>
      ResourcesShortageNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourcesShortageNotificationInfo &&
        serviceType == other.serviceType &&
        resource == other.resource &&
        affectedUserId == other.affectedUserId &&
        usage == other.usage &&
        affectedCustomerId == other.affectedCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        serviceId == other.serviceId &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourcesShortageNotificationInfo')
          ..add('serviceType', serviceType)
          ..add('resource', resource)
          ..add('affectedUserId', affectedUserId)
          ..add('usage', usage)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('serviceId', serviceId)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class ResourcesShortageNotificationInfoBuilder
    implements
        Builder<
          ResourcesShortageNotificationInfo,
          ResourcesShortageNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$ResourcesShortageNotificationInfo? _$v;

  String? _serviceType;
  String? get serviceType => _$this._serviceType;
  set serviceType(covariant String? serviceType) =>
      _$this._serviceType = serviceType;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(covariant String? resource) => _$this._resource = resource;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  int? _usage;
  int? get usage => _$this._usage;
  set usage(covariant int? usage) => _$this._usage = usage;

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

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(covariant String? serviceId) => _$this._serviceId = serviceId;

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

  ResourcesShortageNotificationInfoBuilder() {
    ResourcesShortageNotificationInfo._defaults(this);
  }

  ResourcesShortageNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceType = $v.serviceType;
      _resource = $v.resource;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _usage = $v.usage;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _serviceId = $v.serviceId;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ResourcesShortageNotificationInfo other) {
    _$v = other as _$ResourcesShortageNotificationInfo;
  }

  @override
  void update(
    void Function(ResourcesShortageNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ResourcesShortageNotificationInfo build() => _build();

  _$ResourcesShortageNotificationInfo _build() {
    _$ResourcesShortageNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$ResourcesShortageNotificationInfo._(
            serviceType: serviceType,
            resource: resource,
            affectedUserId: _affectedUserId?.build(),
            usage: usage,
            affectedCustomerId: _affectedCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            serviceId: serviceId,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ResourcesShortageNotificationInfo',
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

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ResourcesShortageNotificationInfo',
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

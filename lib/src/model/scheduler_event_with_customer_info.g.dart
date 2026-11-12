// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_event_with_customer_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SchedulerEventWithCustomerInfo extends SchedulerEventWithCustomerInfo {
  @override
  final SchedulerEventId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final EntityId? originatorId;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final JsonObject? schedule;
  @override
  final bool? enabled;
  @override
  final int? version;
  @override
  final String? customerTitle;
  @override
  final bool? customerIsPublic;
  @override
  final BuiltList<int>? timestamps;
  @override
  final EntityId? ownerId;

  factory _$SchedulerEventWithCustomerInfo([
    void Function(SchedulerEventWithCustomerInfoBuilder)? updates,
  ]) => (SchedulerEventWithCustomerInfoBuilder()..update(updates))._build();

  _$SchedulerEventWithCustomerInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    this.originatorId,
    this.name,
    this.type,
    this.schedule,
    this.enabled,
    this.version,
    this.customerTitle,
    this.customerIsPublic,
    this.timestamps,
    this.ownerId,
  }) : super._();
  @override
  SchedulerEventWithCustomerInfo rebuild(
    void Function(SchedulerEventWithCustomerInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SchedulerEventWithCustomerInfoBuilder toBuilder() =>
      SchedulerEventWithCustomerInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulerEventWithCustomerInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        originatorId == other.originatorId &&
        name == other.name &&
        type == other.type &&
        schedule == other.schedule &&
        enabled == other.enabled &&
        version == other.version &&
        customerTitle == other.customerTitle &&
        customerIsPublic == other.customerIsPublic &&
        timestamps == other.timestamps &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, originatorId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, customerTitle.hashCode);
    _$hash = $jc(_$hash, customerIsPublic.hashCode);
    _$hash = $jc(_$hash, timestamps.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchedulerEventWithCustomerInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('originatorId', originatorId)
          ..add('name', name)
          ..add('type', type)
          ..add('schedule', schedule)
          ..add('enabled', enabled)
          ..add('version', version)
          ..add('customerTitle', customerTitle)
          ..add('customerIsPublic', customerIsPublic)
          ..add('timestamps', timestamps)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class SchedulerEventWithCustomerInfoBuilder
    implements
        Builder<
          SchedulerEventWithCustomerInfo,
          SchedulerEventWithCustomerInfoBuilder
        > {
  _$SchedulerEventWithCustomerInfo? _$v;

  SchedulerEventIdBuilder? _id;
  SchedulerEventIdBuilder get id => _$this._id ??= SchedulerEventIdBuilder();
  set id(SchedulerEventIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  EntityId? _originatorId;
  EntityId? get originatorId => _$this._originatorId;
  set originatorId(EntityId? originatorId) =>
      _$this._originatorId = originatorId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  JsonObject? _schedule;
  JsonObject? get schedule => _$this._schedule;
  set schedule(JsonObject? schedule) => _$this._schedule = schedule;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _customerTitle;
  String? get customerTitle => _$this._customerTitle;
  set customerTitle(String? customerTitle) =>
      _$this._customerTitle = customerTitle;

  bool? _customerIsPublic;
  bool? get customerIsPublic => _$this._customerIsPublic;
  set customerIsPublic(bool? customerIsPublic) =>
      _$this._customerIsPublic = customerIsPublic;

  ListBuilder<int>? _timestamps;
  ListBuilder<int> get timestamps => _$this._timestamps ??= ListBuilder<int>();
  set timestamps(ListBuilder<int>? timestamps) =>
      _$this._timestamps = timestamps;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  SchedulerEventWithCustomerInfoBuilder() {
    SchedulerEventWithCustomerInfo._defaults(this);
  }

  SchedulerEventWithCustomerInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _originatorId = $v.originatorId;
      _name = $v.name;
      _type = $v.type;
      _schedule = $v.schedule;
      _enabled = $v.enabled;
      _version = $v.version;
      _customerTitle = $v.customerTitle;
      _customerIsPublic = $v.customerIsPublic;
      _timestamps = $v.timestamps?.toBuilder();
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchedulerEventWithCustomerInfo other) {
    _$v = other as _$SchedulerEventWithCustomerInfo;
  }

  @override
  void update(void Function(SchedulerEventWithCustomerInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchedulerEventWithCustomerInfo build() => _build();

  _$SchedulerEventWithCustomerInfo _build() {
    _$SchedulerEventWithCustomerInfo _$result;
    try {
      _$result =
          _$v ??
          _$SchedulerEventWithCustomerInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            originatorId: originatorId,
            name: name,
            type: type,
            schedule: schedule,
            enabled: enabled,
            version: version,
            customerTitle: customerTitle,
            customerIsPublic: customerIsPublic,
            timestamps: _timestamps?.build(),
            ownerId: ownerId,
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

        _$failedField = 'timestamps';
        _timestamps?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SchedulerEventWithCustomerInfo',
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

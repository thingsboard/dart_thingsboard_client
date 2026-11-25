// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_event_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SchedulerEventInfo extends SchedulerEventInfo {
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
  final EntityId? ownerId;

  factory _$SchedulerEventInfo([
    void Function(SchedulerEventInfoBuilder)? updates,
  ]) => (SchedulerEventInfoBuilder()..update(updates))._build();

  _$SchedulerEventInfo._({
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
    this.ownerId,
  }) : super._();
  @override
  SchedulerEventInfo rebuild(
    void Function(SchedulerEventInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SchedulerEventInfoBuilder toBuilder() =>
      SchedulerEventInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulerEventInfo &&
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
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchedulerEventInfo')
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
          ..add('ownerId', ownerId))
        .toString();
  }
}

class SchedulerEventInfoBuilder
    implements Builder<SchedulerEventInfo, SchedulerEventInfoBuilder> {
  _$SchedulerEventInfo? _$v;

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

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  SchedulerEventInfoBuilder() {
    SchedulerEventInfo._defaults(this);
  }

  SchedulerEventInfoBuilder get _$this {
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
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchedulerEventInfo other) {
    _$v = other as _$SchedulerEventInfo;
  }

  @override
  void update(void Function(SchedulerEventInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchedulerEventInfo build() => _build();

  _$SchedulerEventInfo _build() {
    _$SchedulerEventInfo _$result;
    try {
      _$result =
          _$v ??
          _$SchedulerEventInfo._(
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SchedulerEventInfo',
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

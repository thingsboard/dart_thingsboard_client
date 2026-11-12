// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmInfo extends AlarmInfo {
  @override
  final AlarmId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String type;
  @override
  final EntityId originator;
  @override
  final AlarmSeverity severity;
  @override
  final bool acknowledged;
  @override
  final bool cleared;
  @override
  final UserId? assigneeId;
  @override
  final int? startTs;
  @override
  final int? endTs;
  @override
  final int? ackTs;
  @override
  final int? clearTs;
  @override
  final int? assignTs;
  @override
  final JsonObject? details;
  @override
  final bool? propagate;
  @override
  final bool? propagateToOwner;
  @override
  final bool? propagateToOwnerHierarchy;
  @override
  final bool? propagateToTenant;
  @override
  final BuiltList<String>? propagateRelationTypes;
  @override
  final String? originatorName;
  @override
  final String? originatorLabel;
  @override
  final String? originatorDisplayName;
  @override
  final AlarmAssignee? assignee;
  @override
  final String name;
  @override
  final AlarmStatus status;

  factory _$AlarmInfo([void Function(AlarmInfoBuilder)? updates]) =>
      (AlarmInfoBuilder()..update(updates))._build();

  _$AlarmInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    required this.type,
    required this.originator,
    required this.severity,
    required this.acknowledged,
    required this.cleared,
    this.assigneeId,
    this.startTs,
    this.endTs,
    this.ackTs,
    this.clearTs,
    this.assignTs,
    this.details,
    this.propagate,
    this.propagateToOwner,
    this.propagateToOwnerHierarchy,
    this.propagateToTenant,
    this.propagateRelationTypes,
    this.originatorName,
    this.originatorLabel,
    this.originatorDisplayName,
    this.assignee,
    required this.name,
    required this.status,
  }) : super._();
  @override
  AlarmInfo rebuild(void Function(AlarmInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmInfoBuilder toBuilder() => AlarmInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        type == other.type &&
        originator == other.originator &&
        severity == other.severity &&
        acknowledged == other.acknowledged &&
        cleared == other.cleared &&
        assigneeId == other.assigneeId &&
        startTs == other.startTs &&
        endTs == other.endTs &&
        ackTs == other.ackTs &&
        clearTs == other.clearTs &&
        assignTs == other.assignTs &&
        details == other.details &&
        propagate == other.propagate &&
        propagateToOwner == other.propagateToOwner &&
        propagateToOwnerHierarchy == other.propagateToOwnerHierarchy &&
        propagateToTenant == other.propagateToTenant &&
        propagateRelationTypes == other.propagateRelationTypes &&
        originatorName == other.originatorName &&
        originatorLabel == other.originatorLabel &&
        originatorDisplayName == other.originatorDisplayName &&
        assignee == other.assignee &&
        name == other.name &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, acknowledged.hashCode);
    _$hash = $jc(_$hash, cleared.hashCode);
    _$hash = $jc(_$hash, assigneeId.hashCode);
    _$hash = $jc(_$hash, startTs.hashCode);
    _$hash = $jc(_$hash, endTs.hashCode);
    _$hash = $jc(_$hash, ackTs.hashCode);
    _$hash = $jc(_$hash, clearTs.hashCode);
    _$hash = $jc(_$hash, assignTs.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, propagate.hashCode);
    _$hash = $jc(_$hash, propagateToOwner.hashCode);
    _$hash = $jc(_$hash, propagateToOwnerHierarchy.hashCode);
    _$hash = $jc(_$hash, propagateToTenant.hashCode);
    _$hash = $jc(_$hash, propagateRelationTypes.hashCode);
    _$hash = $jc(_$hash, originatorName.hashCode);
    _$hash = $jc(_$hash, originatorLabel.hashCode);
    _$hash = $jc(_$hash, originatorDisplayName.hashCode);
    _$hash = $jc(_$hash, assignee.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('type', type)
          ..add('originator', originator)
          ..add('severity', severity)
          ..add('acknowledged', acknowledged)
          ..add('cleared', cleared)
          ..add('assigneeId', assigneeId)
          ..add('startTs', startTs)
          ..add('endTs', endTs)
          ..add('ackTs', ackTs)
          ..add('clearTs', clearTs)
          ..add('assignTs', assignTs)
          ..add('details', details)
          ..add('propagate', propagate)
          ..add('propagateToOwner', propagateToOwner)
          ..add('propagateToOwnerHierarchy', propagateToOwnerHierarchy)
          ..add('propagateToTenant', propagateToTenant)
          ..add('propagateRelationTypes', propagateRelationTypes)
          ..add('originatorName', originatorName)
          ..add('originatorLabel', originatorLabel)
          ..add('originatorDisplayName', originatorDisplayName)
          ..add('assignee', assignee)
          ..add('name', name)
          ..add('status', status))
        .toString();
  }
}

class AlarmInfoBuilder implements Builder<AlarmInfo, AlarmInfoBuilder> {
  _$AlarmInfo? _$v;

  AlarmIdBuilder? _id;
  AlarmIdBuilder get id => _$this._id ??= AlarmIdBuilder();
  set id(AlarmIdBuilder? id) => _$this._id = id;

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

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  EntityId? _originator;
  EntityId? get originator => _$this._originator;
  set originator(EntityId? originator) => _$this._originator = originator;

  AlarmSeverity? _severity;
  AlarmSeverity? get severity => _$this._severity;
  set severity(AlarmSeverity? severity) => _$this._severity = severity;

  bool? _acknowledged;
  bool? get acknowledged => _$this._acknowledged;
  set acknowledged(bool? acknowledged) => _$this._acknowledged = acknowledged;

  bool? _cleared;
  bool? get cleared => _$this._cleared;
  set cleared(bool? cleared) => _$this._cleared = cleared;

  UserIdBuilder? _assigneeId;
  UserIdBuilder get assigneeId => _$this._assigneeId ??= UserIdBuilder();
  set assigneeId(UserIdBuilder? assigneeId) => _$this._assigneeId = assigneeId;

  int? _startTs;
  int? get startTs => _$this._startTs;
  set startTs(int? startTs) => _$this._startTs = startTs;

  int? _endTs;
  int? get endTs => _$this._endTs;
  set endTs(int? endTs) => _$this._endTs = endTs;

  int? _ackTs;
  int? get ackTs => _$this._ackTs;
  set ackTs(int? ackTs) => _$this._ackTs = ackTs;

  int? _clearTs;
  int? get clearTs => _$this._clearTs;
  set clearTs(int? clearTs) => _$this._clearTs = clearTs;

  int? _assignTs;
  int? get assignTs => _$this._assignTs;
  set assignTs(int? assignTs) => _$this._assignTs = assignTs;

  JsonObject? _details;
  JsonObject? get details => _$this._details;
  set details(JsonObject? details) => _$this._details = details;

  bool? _propagate;
  bool? get propagate => _$this._propagate;
  set propagate(bool? propagate) => _$this._propagate = propagate;

  bool? _propagateToOwner;
  bool? get propagateToOwner => _$this._propagateToOwner;
  set propagateToOwner(bool? propagateToOwner) =>
      _$this._propagateToOwner = propagateToOwner;

  bool? _propagateToOwnerHierarchy;
  bool? get propagateToOwnerHierarchy => _$this._propagateToOwnerHierarchy;
  set propagateToOwnerHierarchy(bool? propagateToOwnerHierarchy) =>
      _$this._propagateToOwnerHierarchy = propagateToOwnerHierarchy;

  bool? _propagateToTenant;
  bool? get propagateToTenant => _$this._propagateToTenant;
  set propagateToTenant(bool? propagateToTenant) =>
      _$this._propagateToTenant = propagateToTenant;

  ListBuilder<String>? _propagateRelationTypes;
  ListBuilder<String> get propagateRelationTypes =>
      _$this._propagateRelationTypes ??= ListBuilder<String>();
  set propagateRelationTypes(ListBuilder<String>? propagateRelationTypes) =>
      _$this._propagateRelationTypes = propagateRelationTypes;

  String? _originatorName;
  String? get originatorName => _$this._originatorName;
  set originatorName(String? originatorName) =>
      _$this._originatorName = originatorName;

  String? _originatorLabel;
  String? get originatorLabel => _$this._originatorLabel;
  set originatorLabel(String? originatorLabel) =>
      _$this._originatorLabel = originatorLabel;

  String? _originatorDisplayName;
  String? get originatorDisplayName => _$this._originatorDisplayName;
  set originatorDisplayName(String? originatorDisplayName) =>
      _$this._originatorDisplayName = originatorDisplayName;

  AlarmAssigneeBuilder? _assignee;
  AlarmAssigneeBuilder get assignee =>
      _$this._assignee ??= AlarmAssigneeBuilder();
  set assignee(AlarmAssigneeBuilder? assignee) => _$this._assignee = assignee;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AlarmStatus? _status;
  AlarmStatus? get status => _$this._status;
  set status(AlarmStatus? status) => _$this._status = status;

  AlarmInfoBuilder() {
    AlarmInfo._defaults(this);
  }

  AlarmInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _type = $v.type;
      _originator = $v.originator;
      _severity = $v.severity;
      _acknowledged = $v.acknowledged;
      _cleared = $v.cleared;
      _assigneeId = $v.assigneeId?.toBuilder();
      _startTs = $v.startTs;
      _endTs = $v.endTs;
      _ackTs = $v.ackTs;
      _clearTs = $v.clearTs;
      _assignTs = $v.assignTs;
      _details = $v.details;
      _propagate = $v.propagate;
      _propagateToOwner = $v.propagateToOwner;
      _propagateToOwnerHierarchy = $v.propagateToOwnerHierarchy;
      _propagateToTenant = $v.propagateToTenant;
      _propagateRelationTypes = $v.propagateRelationTypes?.toBuilder();
      _originatorName = $v.originatorName;
      _originatorLabel = $v.originatorLabel;
      _originatorDisplayName = $v.originatorDisplayName;
      _assignee = $v.assignee?.toBuilder();
      _name = $v.name;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmInfo other) {
    _$v = other as _$AlarmInfo;
  }

  @override
  void update(void Function(AlarmInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmInfo build() => _build();

  _$AlarmInfo _build() {
    _$AlarmInfo _$result;
    try {
      _$result =
          _$v ??
          _$AlarmInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AlarmInfo',
              'type',
            ),
            originator: BuiltValueNullFieldError.checkNotNull(
              originator,
              r'AlarmInfo',
              'originator',
            ),
            severity: BuiltValueNullFieldError.checkNotNull(
              severity,
              r'AlarmInfo',
              'severity',
            ),
            acknowledged: BuiltValueNullFieldError.checkNotNull(
              acknowledged,
              r'AlarmInfo',
              'acknowledged',
            ),
            cleared: BuiltValueNullFieldError.checkNotNull(
              cleared,
              r'AlarmInfo',
              'cleared',
            ),
            assigneeId: _assigneeId?.build(),
            startTs: startTs,
            endTs: endTs,
            ackTs: ackTs,
            clearTs: clearTs,
            assignTs: assignTs,
            details: details,
            propagate: propagate,
            propagateToOwner: propagateToOwner,
            propagateToOwnerHierarchy: propagateToOwnerHierarchy,
            propagateToTenant: propagateToTenant,
            propagateRelationTypes: _propagateRelationTypes?.build(),
            originatorName: originatorName,
            originatorLabel: originatorLabel,
            originatorDisplayName: originatorDisplayName,
            assignee: _assignee?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AlarmInfo',
              'name',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'AlarmInfo',
              'status',
            ),
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

        _$failedField = 'assigneeId';
        _assigneeId?.build();

        _$failedField = 'propagateRelationTypes';
        _propagateRelationTypes?.build();

        _$failedField = 'assignee';
        _assignee?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmInfo',
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

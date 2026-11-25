// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Job extends Job {
  @override
  final JobId? id;
  @override
  final int? createdTime;
  @override
  final TenantId tenantId;
  @override
  final CustomerId? customerId;
  @override
  final JobType type;
  @override
  final String key;
  @override
  final EntityId entityId;
  @override
  final String? entityName;
  @override
  final JobStatus status;
  @override
  final JobConfiguration configuration;
  @override
  final JobResult result;
  @override
  final EntityId? ownerId;

  factory _$Job([void Function(JobBuilder)? updates]) =>
      (JobBuilder()..update(updates))._build();

  _$Job._({
    this.id,
    this.createdTime,
    required this.tenantId,
    this.customerId,
    required this.type,
    required this.key,
    required this.entityId,
    this.entityName,
    required this.status,
    required this.configuration,
    required this.result,
    this.ownerId,
  }) : super._();
  @override
  Job rebuild(void Function(JobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobBuilder toBuilder() => JobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Job &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        type == other.type &&
        key == other.key &&
        entityId == other.entityId &&
        entityName == other.entityName &&
        status == other.status &&
        configuration == other.configuration &&
        result == other.result &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, entityName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Job')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('type', type)
          ..add('key', key)
          ..add('entityId', entityId)
          ..add('entityName', entityName)
          ..add('status', status)
          ..add('configuration', configuration)
          ..add('result', result)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class JobBuilder implements Builder<Job, JobBuilder> {
  _$Job? _$v;

  JobIdBuilder? _id;
  JobIdBuilder get id => _$this._id ??= JobIdBuilder();
  set id(JobIdBuilder? id) => _$this._id = id;

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

  JobType? _type;
  JobType? get type => _$this._type;
  set type(JobType? type) => _$this._type = type;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(EntityId? entityId) => _$this._entityId = entityId;

  String? _entityName;
  String? get entityName => _$this._entityName;
  set entityName(String? entityName) => _$this._entityName = entityName;

  JobStatus? _status;
  JobStatus? get status => _$this._status;
  set status(JobStatus? status) => _$this._status = status;

  JobConfiguration? _configuration;
  JobConfiguration? get configuration => _$this._configuration;
  set configuration(JobConfiguration? configuration) =>
      _$this._configuration = configuration;

  JobResult? _result;
  JobResult? get result => _$this._result;
  set result(JobResult? result) => _$this._result = result;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  JobBuilder() {
    Job._defaults(this);
  }

  JobBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _type = $v.type;
      _key = $v.key;
      _entityId = $v.entityId;
      _entityName = $v.entityName;
      _status = $v.status;
      _configuration = $v.configuration;
      _result = $v.result;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Job other) {
    _$v = other as _$Job;
  }

  @override
  void update(void Function(JobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Job build() => _build();

  _$Job _build() {
    _$Job _$result;
    try {
      _$result =
          _$v ??
          _$Job._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: tenantId.build(),
            customerId: _customerId?.build(),
            type: BuiltValueNullFieldError.checkNotNull(type, r'Job', 'type'),
            key: BuiltValueNullFieldError.checkNotNull(key, r'Job', 'key'),
            entityId: BuiltValueNullFieldError.checkNotNull(
              entityId,
              r'Job',
              'entityId',
            ),
            entityName: entityName,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Job',
              'status',
            ),
            configuration: BuiltValueNullFieldError.checkNotNull(
              configuration,
              r'Job',
              'configuration',
            ),
            result: BuiltValueNullFieldError.checkNotNull(
              result,
              r'Job',
              'result',
            ),
            ownerId: ownerId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        tenantId.build();
        _$failedField = 'customerId';
        _customerId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Job', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

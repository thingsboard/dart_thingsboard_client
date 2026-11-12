// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Queue extends Queue {
  @override
  final QueueId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final String? name;
  @override
  final String? topic;
  @override
  final int? pollInterval;
  @override
  final int? partitions;
  @override
  final bool? consumerPerPartition;
  @override
  final int? packProcessingTimeout;
  @override
  final SubmitStrategy? submitStrategy;
  @override
  final ProcessingStrategy? processingStrategy;

  factory _$Queue([void Function(QueueBuilder)? updates]) =>
      (QueueBuilder()..update(updates))._build();

  _$Queue._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.name,
    this.topic,
    this.pollInterval,
    this.partitions,
    this.consumerPerPartition,
    this.packProcessingTimeout,
    this.submitStrategy,
    this.processingStrategy,
  }) : super._();
  @override
  Queue rebuild(void Function(QueueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueBuilder toBuilder() => QueueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Queue &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        name == other.name &&
        topic == other.topic &&
        pollInterval == other.pollInterval &&
        partitions == other.partitions &&
        consumerPerPartition == other.consumerPerPartition &&
        packProcessingTimeout == other.packProcessingTimeout &&
        submitStrategy == other.submitStrategy &&
        processingStrategy == other.processingStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, pollInterval.hashCode);
    _$hash = $jc(_$hash, partitions.hashCode);
    _$hash = $jc(_$hash, consumerPerPartition.hashCode);
    _$hash = $jc(_$hash, packProcessingTimeout.hashCode);
    _$hash = $jc(_$hash, submitStrategy.hashCode);
    _$hash = $jc(_$hash, processingStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Queue')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('topic', topic)
          ..add('pollInterval', pollInterval)
          ..add('partitions', partitions)
          ..add('consumerPerPartition', consumerPerPartition)
          ..add('packProcessingTimeout', packProcessingTimeout)
          ..add('submitStrategy', submitStrategy)
          ..add('processingStrategy', processingStrategy))
        .toString();
  }
}

class QueueBuilder implements Builder<Queue, QueueBuilder> {
  _$Queue? _$v;

  QueueIdBuilder? _id;
  QueueIdBuilder get id => _$this._id ??= QueueIdBuilder();
  set id(QueueIdBuilder? id) => _$this._id = id;

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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  int? _pollInterval;
  int? get pollInterval => _$this._pollInterval;
  set pollInterval(int? pollInterval) => _$this._pollInterval = pollInterval;

  int? _partitions;
  int? get partitions => _$this._partitions;
  set partitions(int? partitions) => _$this._partitions = partitions;

  bool? _consumerPerPartition;
  bool? get consumerPerPartition => _$this._consumerPerPartition;
  set consumerPerPartition(bool? consumerPerPartition) =>
      _$this._consumerPerPartition = consumerPerPartition;

  int? _packProcessingTimeout;
  int? get packProcessingTimeout => _$this._packProcessingTimeout;
  set packProcessingTimeout(int? packProcessingTimeout) =>
      _$this._packProcessingTimeout = packProcessingTimeout;

  SubmitStrategyBuilder? _submitStrategy;
  SubmitStrategyBuilder get submitStrategy =>
      _$this._submitStrategy ??= SubmitStrategyBuilder();
  set submitStrategy(SubmitStrategyBuilder? submitStrategy) =>
      _$this._submitStrategy = submitStrategy;

  ProcessingStrategyBuilder? _processingStrategy;
  ProcessingStrategyBuilder get processingStrategy =>
      _$this._processingStrategy ??= ProcessingStrategyBuilder();
  set processingStrategy(ProcessingStrategyBuilder? processingStrategy) =>
      _$this._processingStrategy = processingStrategy;

  QueueBuilder() {
    Queue._defaults(this);
  }

  QueueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _topic = $v.topic;
      _pollInterval = $v.pollInterval;
      _partitions = $v.partitions;
      _consumerPerPartition = $v.consumerPerPartition;
      _packProcessingTimeout = $v.packProcessingTimeout;
      _submitStrategy = $v.submitStrategy?.toBuilder();
      _processingStrategy = $v.processingStrategy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Queue other) {
    _$v = other as _$Queue;
  }

  @override
  void update(void Function(QueueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Queue build() => _build();

  _$Queue _build() {
    _$Queue _$result;
    try {
      _$result =
          _$v ??
          _$Queue._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            name: name,
            topic: topic,
            pollInterval: pollInterval,
            partitions: partitions,
            consumerPerPartition: consumerPerPartition,
            packProcessingTimeout: packProcessingTimeout,
            submitStrategy: _submitStrategy?.build(),
            processingStrategy: _processingStrategy?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'submitStrategy';
        _submitStrategy?.build();
        _$failedField = 'processingStrategy';
        _processingStrategy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Queue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

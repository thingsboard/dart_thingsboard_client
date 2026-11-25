// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_profile_queue_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantProfileQueueConfiguration
    extends TenantProfileQueueConfiguration {
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
  @override
  final JsonObject? additionalInfo;

  factory _$TenantProfileQueueConfiguration([
    void Function(TenantProfileQueueConfigurationBuilder)? updates,
  ]) => (TenantProfileQueueConfigurationBuilder()..update(updates))._build();

  _$TenantProfileQueueConfiguration._({
    this.name,
    this.topic,
    this.pollInterval,
    this.partitions,
    this.consumerPerPartition,
    this.packProcessingTimeout,
    this.submitStrategy,
    this.processingStrategy,
    this.additionalInfo,
  }) : super._();
  @override
  TenantProfileQueueConfiguration rebuild(
    void Function(TenantProfileQueueConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TenantProfileQueueConfigurationBuilder toBuilder() =>
      TenantProfileQueueConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantProfileQueueConfiguration &&
        name == other.name &&
        topic == other.topic &&
        pollInterval == other.pollInterval &&
        partitions == other.partitions &&
        consumerPerPartition == other.consumerPerPartition &&
        packProcessingTimeout == other.packProcessingTimeout &&
        submitStrategy == other.submitStrategy &&
        processingStrategy == other.processingStrategy &&
        additionalInfo == other.additionalInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, pollInterval.hashCode);
    _$hash = $jc(_$hash, partitions.hashCode);
    _$hash = $jc(_$hash, consumerPerPartition.hashCode);
    _$hash = $jc(_$hash, packProcessingTimeout.hashCode);
    _$hash = $jc(_$hash, submitStrategy.hashCode);
    _$hash = $jc(_$hash, processingStrategy.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantProfileQueueConfiguration')
          ..add('name', name)
          ..add('topic', topic)
          ..add('pollInterval', pollInterval)
          ..add('partitions', partitions)
          ..add('consumerPerPartition', consumerPerPartition)
          ..add('packProcessingTimeout', packProcessingTimeout)
          ..add('submitStrategy', submitStrategy)
          ..add('processingStrategy', processingStrategy)
          ..add('additionalInfo', additionalInfo))
        .toString();
  }
}

class TenantProfileQueueConfigurationBuilder
    implements
        Builder<
          TenantProfileQueueConfiguration,
          TenantProfileQueueConfigurationBuilder
        > {
  _$TenantProfileQueueConfiguration? _$v;

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

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  TenantProfileQueueConfigurationBuilder() {
    TenantProfileQueueConfiguration._defaults(this);
  }

  TenantProfileQueueConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _topic = $v.topic;
      _pollInterval = $v.pollInterval;
      _partitions = $v.partitions;
      _consumerPerPartition = $v.consumerPerPartition;
      _packProcessingTimeout = $v.packProcessingTimeout;
      _submitStrategy = $v.submitStrategy?.toBuilder();
      _processingStrategy = $v.processingStrategy?.toBuilder();
      _additionalInfo = $v.additionalInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantProfileQueueConfiguration other) {
    _$v = other as _$TenantProfileQueueConfiguration;
  }

  @override
  void update(void Function(TenantProfileQueueConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantProfileQueueConfiguration build() => _build();

  _$TenantProfileQueueConfiguration _build() {
    _$TenantProfileQueueConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$TenantProfileQueueConfiguration._(
            name: name,
            topic: topic,
            pollInterval: pollInterval,
            partitions: partitions,
            consumerPerPartition: consumerPerPartition,
            packProcessingTimeout: packProcessingTimeout,
            submitStrategy: _submitStrategy?.build(),
            processingStrategy: _processingStrategy?.build(),
            additionalInfo: additionalInfo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'submitStrategy';
        _submitStrategy?.build();
        _$failedField = 'processingStrategy';
        _processingStrategy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TenantProfileQueueConfiguration',
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

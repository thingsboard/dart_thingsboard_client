// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_entities_aggregation_calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelatedEntitiesAggregationCalculatedFieldConfiguration
    extends RelatedEntitiesAggregationCalculatedFieldConfiguration {
  @override
  final int? deduplicationIntervalInSec;
  @override
  final BuiltMap<String, Argument> arguments;
  @override
  final bool? scheduledUpdateEnabled;
  @override
  final BuiltMap<String, AggMetric> metrics;
  @override
  final int? scheduledUpdateInterval;
  @override
  final bool? useLatestTs;
  @override
  final RelationPathLevel relation;
  @override
  final Output? output;
  @override
  final String type;

  factory _$RelatedEntitiesAggregationCalculatedFieldConfiguration([
    void Function(
      RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder,
    )?
    updates,
  ]) =>
      (RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder()
            ..update(updates))
          ._build();

  _$RelatedEntitiesAggregationCalculatedFieldConfiguration._({
    this.deduplicationIntervalInSec,
    required this.arguments,
    this.scheduledUpdateEnabled,
    required this.metrics,
    this.scheduledUpdateInterval,
    this.useLatestTs,
    required this.relation,
    this.output,
    required this.type,
  }) : super._();
  @override
  RelatedEntitiesAggregationCalculatedFieldConfiguration rebuild(
    void Function(RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder toBuilder() =>
      RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelatedEntitiesAggregationCalculatedFieldConfiguration &&
        deduplicationIntervalInSec == other.deduplicationIntervalInSec &&
        arguments == other.arguments &&
        scheduledUpdateEnabled == other.scheduledUpdateEnabled &&
        metrics == other.metrics &&
        scheduledUpdateInterval == other.scheduledUpdateInterval &&
        useLatestTs == other.useLatestTs &&
        relation == other.relation &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deduplicationIntervalInSec.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, scheduledUpdateEnabled.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, scheduledUpdateInterval.hashCode);
    _$hash = $jc(_$hash, useLatestTs.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RelatedEntitiesAggregationCalculatedFieldConfiguration',
          )
          ..add('deduplicationIntervalInSec', deduplicationIntervalInSec)
          ..add('arguments', arguments)
          ..add('scheduledUpdateEnabled', scheduledUpdateEnabled)
          ..add('metrics', metrics)
          ..add('scheduledUpdateInterval', scheduledUpdateInterval)
          ..add('useLatestTs', useLatestTs)
          ..add('relation', relation)
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder
    implements
        Builder<
          RelatedEntitiesAggregationCalculatedFieldConfiguration,
          RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$RelatedEntitiesAggregationCalculatedFieldConfiguration? _$v;

  int? _deduplicationIntervalInSec;
  int? get deduplicationIntervalInSec => _$this._deduplicationIntervalInSec;
  set deduplicationIntervalInSec(covariant int? deduplicationIntervalInSec) =>
      _$this._deduplicationIntervalInSec = deduplicationIntervalInSec;

  MapBuilder<String, Argument>? _arguments;
  MapBuilder<String, Argument> get arguments =>
      _$this._arguments ??= MapBuilder<String, Argument>();
  set arguments(covariant MapBuilder<String, Argument>? arguments) =>
      _$this._arguments = arguments;

  bool? _scheduledUpdateEnabled;
  bool? get scheduledUpdateEnabled => _$this._scheduledUpdateEnabled;
  set scheduledUpdateEnabled(covariant bool? scheduledUpdateEnabled) =>
      _$this._scheduledUpdateEnabled = scheduledUpdateEnabled;

  MapBuilder<String, AggMetric>? _metrics;
  MapBuilder<String, AggMetric> get metrics =>
      _$this._metrics ??= MapBuilder<String, AggMetric>();
  set metrics(covariant MapBuilder<String, AggMetric>? metrics) =>
      _$this._metrics = metrics;

  int? _scheduledUpdateInterval;
  int? get scheduledUpdateInterval => _$this._scheduledUpdateInterval;
  set scheduledUpdateInterval(covariant int? scheduledUpdateInterval) =>
      _$this._scheduledUpdateInterval = scheduledUpdateInterval;

  bool? _useLatestTs;
  bool? get useLatestTs => _$this._useLatestTs;
  set useLatestTs(covariant bool? useLatestTs) =>
      _$this._useLatestTs = useLatestTs;

  RelationPathLevelBuilder? _relation;
  RelationPathLevelBuilder get relation =>
      _$this._relation ??= RelationPathLevelBuilder();
  set relation(covariant RelationPathLevelBuilder? relation) =>
      _$this._relation = relation;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder() {
    RelatedEntitiesAggregationCalculatedFieldConfiguration._defaults(this);
  }

  RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deduplicationIntervalInSec = $v.deduplicationIntervalInSec;
      _arguments = $v.arguments.toBuilder();
      _scheduledUpdateEnabled = $v.scheduledUpdateEnabled;
      _metrics = $v.metrics.toBuilder();
      _scheduledUpdateInterval = $v.scheduledUpdateInterval;
      _useLatestTs = $v.useLatestTs;
      _relation = $v.relation.toBuilder();
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant RelatedEntitiesAggregationCalculatedFieldConfiguration other,
  ) {
    _$v = other as _$RelatedEntitiesAggregationCalculatedFieldConfiguration;
  }

  @override
  void update(
    void Function(
      RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RelatedEntitiesAggregationCalculatedFieldConfiguration build() => _build();

  _$RelatedEntitiesAggregationCalculatedFieldConfiguration _build() {
    _$RelatedEntitiesAggregationCalculatedFieldConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$RelatedEntitiesAggregationCalculatedFieldConfiguration._(
            deduplicationIntervalInSec: deduplicationIntervalInSec,
            arguments: arguments.build(),
            scheduledUpdateEnabled: scheduledUpdateEnabled,
            metrics: metrics.build(),
            scheduledUpdateInterval: scheduledUpdateInterval,
            useLatestTs: useLatestTs,
            relation: relation.build(),
            output: output,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RelatedEntitiesAggregationCalculatedFieldConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'arguments';
        arguments.build();

        _$failedField = 'metrics';
        metrics.build();

        _$failedField = 'relation';
        relation.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RelatedEntitiesAggregationCalculatedFieldConfiguration',
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

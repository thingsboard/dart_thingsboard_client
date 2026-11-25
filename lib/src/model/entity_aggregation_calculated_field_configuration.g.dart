// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_aggregation_calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityAggregationCalculatedFieldConfiguration
    extends EntityAggregationCalculatedFieldConfiguration {
  @override
  final Watermark? watermark;
  @override
  final bool? produceIntermediateResult;
  @override
  final BuiltMap<String, Argument> arguments;
  @override
  final AggInterval interval;
  @override
  final BuiltMap<String, AggMetric> metrics;
  @override
  final Output? output;
  @override
  final String type;

  factory _$EntityAggregationCalculatedFieldConfiguration([
    void Function(EntityAggregationCalculatedFieldConfigurationBuilder)?
    updates,
  ]) =>
      (EntityAggregationCalculatedFieldConfigurationBuilder()..update(updates))
          ._build();

  _$EntityAggregationCalculatedFieldConfiguration._({
    this.watermark,
    this.produceIntermediateResult,
    required this.arguments,
    required this.interval,
    required this.metrics,
    this.output,
    required this.type,
  }) : super._();
  @override
  EntityAggregationCalculatedFieldConfiguration rebuild(
    void Function(EntityAggregationCalculatedFieldConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityAggregationCalculatedFieldConfigurationBuilder toBuilder() =>
      EntityAggregationCalculatedFieldConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityAggregationCalculatedFieldConfiguration &&
        watermark == other.watermark &&
        produceIntermediateResult == other.produceIntermediateResult &&
        arguments == other.arguments &&
        interval == other.interval &&
        metrics == other.metrics &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, watermark.hashCode);
    _$hash = $jc(_$hash, produceIntermediateResult.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EntityAggregationCalculatedFieldConfiguration',
          )
          ..add('watermark', watermark)
          ..add('produceIntermediateResult', produceIntermediateResult)
          ..add('arguments', arguments)
          ..add('interval', interval)
          ..add('metrics', metrics)
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class EntityAggregationCalculatedFieldConfigurationBuilder
    implements
        Builder<
          EntityAggregationCalculatedFieldConfiguration,
          EntityAggregationCalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$EntityAggregationCalculatedFieldConfiguration? _$v;

  WatermarkBuilder? _watermark;
  WatermarkBuilder get watermark => _$this._watermark ??= WatermarkBuilder();
  set watermark(covariant WatermarkBuilder? watermark) =>
      _$this._watermark = watermark;

  bool? _produceIntermediateResult;
  bool? get produceIntermediateResult => _$this._produceIntermediateResult;
  set produceIntermediateResult(covariant bool? produceIntermediateResult) =>
      _$this._produceIntermediateResult = produceIntermediateResult;

  MapBuilder<String, Argument>? _arguments;
  MapBuilder<String, Argument> get arguments =>
      _$this._arguments ??= MapBuilder<String, Argument>();
  set arguments(covariant MapBuilder<String, Argument>? arguments) =>
      _$this._arguments = arguments;

  AggInterval? _interval;
  AggInterval? get interval => _$this._interval;
  set interval(covariant AggInterval? interval) => _$this._interval = interval;

  MapBuilder<String, AggMetric>? _metrics;
  MapBuilder<String, AggMetric> get metrics =>
      _$this._metrics ??= MapBuilder<String, AggMetric>();
  set metrics(covariant MapBuilder<String, AggMetric>? metrics) =>
      _$this._metrics = metrics;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityAggregationCalculatedFieldConfigurationBuilder() {
    EntityAggregationCalculatedFieldConfiguration._defaults(this);
  }

  EntityAggregationCalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _watermark = $v.watermark?.toBuilder();
      _produceIntermediateResult = $v.produceIntermediateResult;
      _arguments = $v.arguments.toBuilder();
      _interval = $v.interval;
      _metrics = $v.metrics.toBuilder();
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityAggregationCalculatedFieldConfiguration other) {
    _$v = other as _$EntityAggregationCalculatedFieldConfiguration;
  }

  @override
  void update(
    void Function(EntityAggregationCalculatedFieldConfigurationBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EntityAggregationCalculatedFieldConfiguration build() => _build();

  _$EntityAggregationCalculatedFieldConfiguration _build() {
    _$EntityAggregationCalculatedFieldConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$EntityAggregationCalculatedFieldConfiguration._(
            watermark: _watermark?.build(),
            produceIntermediateResult: produceIntermediateResult,
            arguments: arguments.build(),
            interval: BuiltValueNullFieldError.checkNotNull(
              interval,
              r'EntityAggregationCalculatedFieldConfiguration',
              'interval',
            ),
            metrics: metrics.build(),
            output: output,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityAggregationCalculatedFieldConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'watermark';
        _watermark?.build();

        _$failedField = 'arguments';
        arguments.build();

        _$failedField = 'metrics';
        metrics.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityAggregationCalculatedFieldConfiguration',
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregation_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregationParams extends AggregationParams {
  @override
  final Aggregation? aggregation;
  @override
  final IntervalType? intervalType;
  @override
  final String? tzId;
  @override
  final int? interval;

  factory _$AggregationParams([
    void Function(AggregationParamsBuilder)? updates,
  ]) => (AggregationParamsBuilder()..update(updates))._build();

  _$AggregationParams._({
    this.aggregation,
    this.intervalType,
    this.tzId,
    this.interval,
  }) : super._();
  @override
  AggregationParams rebuild(void Function(AggregationParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregationParamsBuilder toBuilder() =>
      AggregationParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregationParams &&
        aggregation == other.aggregation &&
        intervalType == other.intervalType &&
        tzId == other.tzId &&
        interval == other.interval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregation.hashCode);
    _$hash = $jc(_$hash, intervalType.hashCode);
    _$hash = $jc(_$hash, tzId.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggregationParams')
          ..add('aggregation', aggregation)
          ..add('intervalType', intervalType)
          ..add('tzId', tzId)
          ..add('interval', interval))
        .toString();
  }
}

class AggregationParamsBuilder
    implements Builder<AggregationParams, AggregationParamsBuilder> {
  _$AggregationParams? _$v;

  Aggregation? _aggregation;
  Aggregation? get aggregation => _$this._aggregation;
  set aggregation(Aggregation? aggregation) =>
      _$this._aggregation = aggregation;

  IntervalType? _intervalType;
  IntervalType? get intervalType => _$this._intervalType;
  set intervalType(IntervalType? intervalType) =>
      _$this._intervalType = intervalType;

  String? _tzId;
  String? get tzId => _$this._tzId;
  set tzId(String? tzId) => _$this._tzId = tzId;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  AggregationParamsBuilder() {
    AggregationParams._defaults(this);
  }

  AggregationParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregation = $v.aggregation;
      _intervalType = $v.intervalType;
      _tzId = $v.tzId;
      _interval = $v.interval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregationParams other) {
    _$v = other as _$AggregationParams;
  }

  @override
  void update(void Function(AggregationParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregationParams build() => _build();

  _$AggregationParams _build() {
    final _$result =
        _$v ??
        _$AggregationParams._(
          aggregation: aggregation,
          intervalType: intervalType,
          tzId: tzId,
          interval: interval,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

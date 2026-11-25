// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agg_metric.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggMetric extends AggMetric {
  @override
  final AggFunction? function_;
  @override
  final String? filter;
  @override
  final AggInput? input;
  @override
  final double? defaultValue;

  factory _$AggMetric([void Function(AggMetricBuilder)? updates]) =>
      (AggMetricBuilder()..update(updates))._build();

  _$AggMetric._({this.function_, this.filter, this.input, this.defaultValue})
    : super._();
  @override
  AggMetric rebuild(void Function(AggMetricBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggMetricBuilder toBuilder() => AggMetricBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggMetric &&
        function_ == other.function_ &&
        filter == other.filter &&
        input == other.input &&
        defaultValue == other.defaultValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, function_.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggMetric')
          ..add('function_', function_)
          ..add('filter', filter)
          ..add('input', input)
          ..add('defaultValue', defaultValue))
        .toString();
  }
}

class AggMetricBuilder implements Builder<AggMetric, AggMetricBuilder> {
  _$AggMetric? _$v;

  AggFunction? _function_;
  AggFunction? get function_ => _$this._function_;
  set function_(AggFunction? function_) => _$this._function_ = function_;

  String? _filter;
  String? get filter => _$this._filter;
  set filter(String? filter) => _$this._filter = filter;

  AggInput? _input;
  AggInput? get input => _$this._input;
  set input(AggInput? input) => _$this._input = input;

  double? _defaultValue;
  double? get defaultValue => _$this._defaultValue;
  set defaultValue(double? defaultValue) => _$this._defaultValue = defaultValue;

  AggMetricBuilder() {
    AggMetric._defaults(this);
  }

  AggMetricBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _function_ = $v.function_;
      _filter = $v.filter;
      _input = $v.input;
      _defaultValue = $v.defaultValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggMetric other) {
    _$v = other as _$AggMetric;
  }

  @override
  void update(void Function(AggMetricBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggMetric build() => _build();

  _$AggMetric _build() {
    final _$result =
        _$v ??
        _$AggMetric._(
          function_: function_,
          filter: filter,
          input: input,
          defaultValue: defaultValue,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

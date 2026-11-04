// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_rule_chain_output_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesRuleChainOutputStrategy
    extends TimeSeriesRuleChainOutputStrategy {
  @override
  final String type;

  factory _$TimeSeriesRuleChainOutputStrategy([
    void Function(TimeSeriesRuleChainOutputStrategyBuilder)? updates,
  ]) => (TimeSeriesRuleChainOutputStrategyBuilder()..update(updates))._build();

  _$TimeSeriesRuleChainOutputStrategy._({required this.type}) : super._();
  @override
  TimeSeriesRuleChainOutputStrategy rebuild(
    void Function(TimeSeriesRuleChainOutputStrategyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesRuleChainOutputStrategyBuilder toBuilder() =>
      TimeSeriesRuleChainOutputStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesRuleChainOutputStrategy && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TimeSeriesRuleChainOutputStrategy',
    )..add('type', type)).toString();
  }
}

class TimeSeriesRuleChainOutputStrategyBuilder
    implements
        Builder<
          TimeSeriesRuleChainOutputStrategy,
          TimeSeriesRuleChainOutputStrategyBuilder
        >,
        TimeSeriesOutputStrategyBuilder {
  _$TimeSeriesRuleChainOutputStrategy? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TimeSeriesRuleChainOutputStrategyBuilder() {
    TimeSeriesRuleChainOutputStrategy._defaults(this);
  }

  TimeSeriesRuleChainOutputStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimeSeriesRuleChainOutputStrategy other) {
    _$v = other as _$TimeSeriesRuleChainOutputStrategy;
  }

  @override
  void update(
    void Function(TimeSeriesRuleChainOutputStrategyBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesRuleChainOutputStrategy build() => _build();

  _$TimeSeriesRuleChainOutputStrategy _build() {
    final _$result =
        _$v ??
        _$TimeSeriesRuleChainOutputStrategy._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'TimeSeriesRuleChainOutputStrategy',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

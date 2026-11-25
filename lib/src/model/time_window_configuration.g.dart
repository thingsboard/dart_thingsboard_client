// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_window_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeWindowConfiguration extends TimeWindowConfiguration {
  @override
  final History? history;
  @override
  final AggregationConfiguration? aggregation;
  @override
  final String? timezone;

  factory _$TimeWindowConfiguration([
    void Function(TimeWindowConfigurationBuilder)? updates,
  ]) => (TimeWindowConfigurationBuilder()..update(updates))._build();

  _$TimeWindowConfiguration._({this.history, this.aggregation, this.timezone})
    : super._();
  @override
  TimeWindowConfiguration rebuild(
    void Function(TimeWindowConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeWindowConfigurationBuilder toBuilder() =>
      TimeWindowConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeWindowConfiguration &&
        history == other.history &&
        aggregation == other.aggregation &&
        timezone == other.timezone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, aggregation.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeWindowConfiguration')
          ..add('history', history)
          ..add('aggregation', aggregation)
          ..add('timezone', timezone))
        .toString();
  }
}

class TimeWindowConfigurationBuilder
    implements
        Builder<TimeWindowConfiguration, TimeWindowConfigurationBuilder> {
  _$TimeWindowConfiguration? _$v;

  HistoryBuilder? _history;
  HistoryBuilder get history => _$this._history ??= HistoryBuilder();
  set history(HistoryBuilder? history) => _$this._history = history;

  AggregationConfigurationBuilder? _aggregation;
  AggregationConfigurationBuilder get aggregation =>
      _$this._aggregation ??= AggregationConfigurationBuilder();
  set aggregation(AggregationConfigurationBuilder? aggregation) =>
      _$this._aggregation = aggregation;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  TimeWindowConfigurationBuilder() {
    TimeWindowConfiguration._defaults(this);
  }

  TimeWindowConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _history = $v.history?.toBuilder();
      _aggregation = $v.aggregation?.toBuilder();
      _timezone = $v.timezone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeWindowConfiguration other) {
    _$v = other as _$TimeWindowConfiguration;
  }

  @override
  void update(void Function(TimeWindowConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeWindowConfiguration build() => _build();

  _$TimeWindowConfiguration _build() {
    _$TimeWindowConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$TimeWindowConfiguration._(
            history: _history?.build(),
            aggregation: _aggregation?.build(),
            timezone: timezone,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'history';
        _history?.build();
        _$failedField = 'aggregation';
        _aggregation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimeWindowConfiguration',
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

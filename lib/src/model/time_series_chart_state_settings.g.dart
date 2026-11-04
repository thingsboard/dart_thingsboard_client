// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_state_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartStateSettings extends TimeSeriesChartStateSettings {
  @override
  final String? label;
  @override
  final double? value;
  @override
  final TimeSeriesChartStateSourceType? sourceType;
  @override
  final JsonObject? sourceValue;
  @override
  final double? sourceRangeFrom;
  @override
  final double? sourceRangeTo;

  factory _$TimeSeriesChartStateSettings([
    void Function(TimeSeriesChartStateSettingsBuilder)? updates,
  ]) => (TimeSeriesChartStateSettingsBuilder()..update(updates))._build();

  _$TimeSeriesChartStateSettings._({
    this.label,
    this.value,
    this.sourceType,
    this.sourceValue,
    this.sourceRangeFrom,
    this.sourceRangeTo,
  }) : super._();
  @override
  TimeSeriesChartStateSettings rebuild(
    void Function(TimeSeriesChartStateSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartStateSettingsBuilder toBuilder() =>
      TimeSeriesChartStateSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartStateSettings &&
        label == other.label &&
        value == other.value &&
        sourceType == other.sourceType &&
        sourceValue == other.sourceValue &&
        sourceRangeFrom == other.sourceRangeFrom &&
        sourceRangeTo == other.sourceRangeTo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourceValue.hashCode);
    _$hash = $jc(_$hash, sourceRangeFrom.hashCode);
    _$hash = $jc(_$hash, sourceRangeTo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesChartStateSettings')
          ..add('label', label)
          ..add('value', value)
          ..add('sourceType', sourceType)
          ..add('sourceValue', sourceValue)
          ..add('sourceRangeFrom', sourceRangeFrom)
          ..add('sourceRangeTo', sourceRangeTo))
        .toString();
  }
}

class TimeSeriesChartStateSettingsBuilder
    implements
        Builder<
          TimeSeriesChartStateSettings,
          TimeSeriesChartStateSettingsBuilder
        > {
  _$TimeSeriesChartStateSettings? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  TimeSeriesChartStateSourceType? _sourceType;
  TimeSeriesChartStateSourceType? get sourceType => _$this._sourceType;
  set sourceType(TimeSeriesChartStateSourceType? sourceType) =>
      _$this._sourceType = sourceType;

  JsonObject? _sourceValue;
  JsonObject? get sourceValue => _$this._sourceValue;
  set sourceValue(JsonObject? sourceValue) => _$this._sourceValue = sourceValue;

  double? _sourceRangeFrom;
  double? get sourceRangeFrom => _$this._sourceRangeFrom;
  set sourceRangeFrom(double? sourceRangeFrom) =>
      _$this._sourceRangeFrom = sourceRangeFrom;

  double? _sourceRangeTo;
  double? get sourceRangeTo => _$this._sourceRangeTo;
  set sourceRangeTo(double? sourceRangeTo) =>
      _$this._sourceRangeTo = sourceRangeTo;

  TimeSeriesChartStateSettingsBuilder() {
    TimeSeriesChartStateSettings._defaults(this);
  }

  TimeSeriesChartStateSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _value = $v.value;
      _sourceType = $v.sourceType;
      _sourceValue = $v.sourceValue;
      _sourceRangeFrom = $v.sourceRangeFrom;
      _sourceRangeTo = $v.sourceRangeTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesChartStateSettings other) {
    _$v = other as _$TimeSeriesChartStateSettings;
  }

  @override
  void update(void Function(TimeSeriesChartStateSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartStateSettings build() => _build();

  _$TimeSeriesChartStateSettings _build() {
    final _$result =
        _$v ??
        _$TimeSeriesChartStateSettings._(
          label: label,
          value: value,
          sourceType: sourceType,
          sourceValue: sourceValue,
          sourceRangeFrom: sourceRangeFrom,
          sourceRangeTo: sourceRangeTo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

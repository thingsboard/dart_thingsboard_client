// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_key_comparison_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DataKeyComparisonSettings extends DataKeyComparisonSettings {
  @override
  final bool? showValuesForComparison;
  @override
  final String? comparisonValuesLabel;
  @override
  final String? color;

  factory _$DataKeyComparisonSettings([
    void Function(DataKeyComparisonSettingsBuilder)? updates,
  ]) => (DataKeyComparisonSettingsBuilder()..update(updates))._build();

  _$DataKeyComparisonSettings._({
    this.showValuesForComparison,
    this.comparisonValuesLabel,
    this.color,
  }) : super._();
  @override
  DataKeyComparisonSettings rebuild(
    void Function(DataKeyComparisonSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DataKeyComparisonSettingsBuilder toBuilder() =>
      DataKeyComparisonSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataKeyComparisonSettings &&
        showValuesForComparison == other.showValuesForComparison &&
        comparisonValuesLabel == other.comparisonValuesLabel &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showValuesForComparison.hashCode);
    _$hash = $jc(_$hash, comparisonValuesLabel.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataKeyComparisonSettings')
          ..add('showValuesForComparison', showValuesForComparison)
          ..add('comparisonValuesLabel', comparisonValuesLabel)
          ..add('color', color))
        .toString();
  }
}

class DataKeyComparisonSettingsBuilder
    implements
        Builder<DataKeyComparisonSettings, DataKeyComparisonSettingsBuilder> {
  _$DataKeyComparisonSettings? _$v;

  bool? _showValuesForComparison;
  bool? get showValuesForComparison => _$this._showValuesForComparison;
  set showValuesForComparison(bool? showValuesForComparison) =>
      _$this._showValuesForComparison = showValuesForComparison;

  String? _comparisonValuesLabel;
  String? get comparisonValuesLabel => _$this._comparisonValuesLabel;
  set comparisonValuesLabel(String? comparisonValuesLabel) =>
      _$this._comparisonValuesLabel = comparisonValuesLabel;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  DataKeyComparisonSettingsBuilder() {
    DataKeyComparisonSettings._defaults(this);
  }

  DataKeyComparisonSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showValuesForComparison = $v.showValuesForComparison;
      _comparisonValuesLabel = $v.comparisonValuesLabel;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataKeyComparisonSettings other) {
    _$v = other as _$DataKeyComparisonSettings;
  }

  @override
  void update(void Function(DataKeyComparisonSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataKeyComparisonSettings build() => _build();

  _$DataKeyComparisonSettings _build() {
    final _$result =
        _$v ??
        _$DataKeyComparisonSettings._(
          showValuesForComparison: showValuesForComparison,
          comparisonValuesLabel: comparisonValuesLabel,
          color: color,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

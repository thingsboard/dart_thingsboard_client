// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bar_series_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BarSeriesSettings extends BarSeriesSettings {
  @override
  final bool? showBorder;
  @override
  final double? borderWidth;
  @override
  final double? borderRadius;
  @override
  final double? barWidth;
  @override
  final bool? showLabel;
  @override
  final ChartLabelPosition? labelPosition;
  @override
  final Font? labelFont;
  @override
  final String? labelColor;
  @override
  final bool? enableLabelBackground;
  @override
  final String? labelBackground;
  @override
  final ChartFillSettings? backgroundSettings;

  factory _$BarSeriesSettings([
    void Function(BarSeriesSettingsBuilder)? updates,
  ]) => (BarSeriesSettingsBuilder()..update(updates))._build();

  _$BarSeriesSettings._({
    this.showBorder,
    this.borderWidth,
    this.borderRadius,
    this.barWidth,
    this.showLabel,
    this.labelPosition,
    this.labelFont,
    this.labelColor,
    this.enableLabelBackground,
    this.labelBackground,
    this.backgroundSettings,
  }) : super._();
  @override
  BarSeriesSettings rebuild(void Function(BarSeriesSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BarSeriesSettingsBuilder toBuilder() =>
      BarSeriesSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BarSeriesSettings &&
        showBorder == other.showBorder &&
        borderWidth == other.borderWidth &&
        borderRadius == other.borderRadius &&
        barWidth == other.barWidth &&
        showLabel == other.showLabel &&
        labelPosition == other.labelPosition &&
        labelFont == other.labelFont &&
        labelColor == other.labelColor &&
        enableLabelBackground == other.enableLabelBackground &&
        labelBackground == other.labelBackground &&
        backgroundSettings == other.backgroundSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showBorder.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, barWidth.hashCode);
    _$hash = $jc(_$hash, showLabel.hashCode);
    _$hash = $jc(_$hash, labelPosition.hashCode);
    _$hash = $jc(_$hash, labelFont.hashCode);
    _$hash = $jc(_$hash, labelColor.hashCode);
    _$hash = $jc(_$hash, enableLabelBackground.hashCode);
    _$hash = $jc(_$hash, labelBackground.hashCode);
    _$hash = $jc(_$hash, backgroundSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BarSeriesSettings')
          ..add('showBorder', showBorder)
          ..add('borderWidth', borderWidth)
          ..add('borderRadius', borderRadius)
          ..add('barWidth', barWidth)
          ..add('showLabel', showLabel)
          ..add('labelPosition', labelPosition)
          ..add('labelFont', labelFont)
          ..add('labelColor', labelColor)
          ..add('enableLabelBackground', enableLabelBackground)
          ..add('labelBackground', labelBackground)
          ..add('backgroundSettings', backgroundSettings))
        .toString();
  }
}

class BarSeriesSettingsBuilder
    implements Builder<BarSeriesSettings, BarSeriesSettingsBuilder> {
  _$BarSeriesSettings? _$v;

  bool? _showBorder;
  bool? get showBorder => _$this._showBorder;
  set showBorder(bool? showBorder) => _$this._showBorder = showBorder;

  double? _borderWidth;
  double? get borderWidth => _$this._borderWidth;
  set borderWidth(double? borderWidth) => _$this._borderWidth = borderWidth;

  double? _borderRadius;
  double? get borderRadius => _$this._borderRadius;
  set borderRadius(double? borderRadius) => _$this._borderRadius = borderRadius;

  double? _barWidth;
  double? get barWidth => _$this._barWidth;
  set barWidth(double? barWidth) => _$this._barWidth = barWidth;

  bool? _showLabel;
  bool? get showLabel => _$this._showLabel;
  set showLabel(bool? showLabel) => _$this._showLabel = showLabel;

  ChartLabelPosition? _labelPosition;
  ChartLabelPosition? get labelPosition => _$this._labelPosition;
  set labelPosition(ChartLabelPosition? labelPosition) =>
      _$this._labelPosition = labelPosition;

  FontBuilder? _labelFont;
  FontBuilder get labelFont => _$this._labelFont ??= FontBuilder();
  set labelFont(FontBuilder? labelFont) => _$this._labelFont = labelFont;

  String? _labelColor;
  String? get labelColor => _$this._labelColor;
  set labelColor(String? labelColor) => _$this._labelColor = labelColor;

  bool? _enableLabelBackground;
  bool? get enableLabelBackground => _$this._enableLabelBackground;
  set enableLabelBackground(bool? enableLabelBackground) =>
      _$this._enableLabelBackground = enableLabelBackground;

  String? _labelBackground;
  String? get labelBackground => _$this._labelBackground;
  set labelBackground(String? labelBackground) =>
      _$this._labelBackground = labelBackground;

  ChartFillSettingsBuilder? _backgroundSettings;
  ChartFillSettingsBuilder get backgroundSettings =>
      _$this._backgroundSettings ??= ChartFillSettingsBuilder();
  set backgroundSettings(ChartFillSettingsBuilder? backgroundSettings) =>
      _$this._backgroundSettings = backgroundSettings;

  BarSeriesSettingsBuilder() {
    BarSeriesSettings._defaults(this);
  }

  BarSeriesSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showBorder = $v.showBorder;
      _borderWidth = $v.borderWidth;
      _borderRadius = $v.borderRadius;
      _barWidth = $v.barWidth;
      _showLabel = $v.showLabel;
      _labelPosition = $v.labelPosition;
      _labelFont = $v.labelFont?.toBuilder();
      _labelColor = $v.labelColor;
      _enableLabelBackground = $v.enableLabelBackground;
      _labelBackground = $v.labelBackground;
      _backgroundSettings = $v.backgroundSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BarSeriesSettings other) {
    _$v = other as _$BarSeriesSettings;
  }

  @override
  void update(void Function(BarSeriesSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BarSeriesSettings build() => _build();

  _$BarSeriesSettings _build() {
    _$BarSeriesSettings _$result;
    try {
      _$result =
          _$v ??
          _$BarSeriesSettings._(
            showBorder: showBorder,
            borderWidth: borderWidth,
            borderRadius: borderRadius,
            barWidth: barWidth,
            showLabel: showLabel,
            labelPosition: labelPosition,
            labelFont: _labelFont?.build(),
            labelColor: labelColor,
            enableLabelBackground: enableLabelBackground,
            labelBackground: labelBackground,
            backgroundSettings: _backgroundSettings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labelFont';
        _labelFont?.build();

        _$failedField = 'backgroundSettings';
        _backgroundSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BarSeriesSettings',
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

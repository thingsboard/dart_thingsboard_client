// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeseries_chart_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeseriesChartComponent extends TimeseriesChartComponent {
  @override
  final Insets? margins;
  @override
  final String? borderColor;
  @override
  final int? customWidth;
  @override
  final TimeWindowConfiguration? timewindow;
  @override
  final ReportTimeSeriesChartSettings? timeSeriesChartSettings;
  @override
  final ImageWidthType? widthType;
  @override
  final int? borderRadius;
  @override
  final Insets? paddings;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final ImageAlignment? alignment;
  @override
  final BuiltList<DataSource>? dataSources;
  @override
  final int? height;
  @override
  final ReportComponentSubType subType;
  @override
  final ReportComponentType type;

  factory _$TimeseriesChartComponent([
    void Function(TimeseriesChartComponentBuilder)? updates,
  ]) => (TimeseriesChartComponentBuilder()..update(updates))._build();

  _$TimeseriesChartComponent._({
    this.margins,
    this.borderColor,
    this.customWidth,
    this.timewindow,
    this.timeSeriesChartSettings,
    this.widthType,
    this.borderRadius,
    this.paddings,
    this.background,
    this.borderWidth,
    this.alignment,
    this.dataSources,
    this.height,
    required this.subType,
    required this.type,
  }) : super._();
  @override
  TimeseriesChartComponent rebuild(
    void Function(TimeseriesChartComponentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeseriesChartComponentBuilder toBuilder() =>
      TimeseriesChartComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeseriesChartComponent &&
        margins == other.margins &&
        borderColor == other.borderColor &&
        customWidth == other.customWidth &&
        timewindow == other.timewindow &&
        timeSeriesChartSettings == other.timeSeriesChartSettings &&
        widthType == other.widthType &&
        borderRadius == other.borderRadius &&
        paddings == other.paddings &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        alignment == other.alignment &&
        dataSources == other.dataSources &&
        height == other.height &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, customWidth.hashCode);
    _$hash = $jc(_$hash, timewindow.hashCode);
    _$hash = $jc(_$hash, timeSeriesChartSettings.hashCode);
    _$hash = $jc(_$hash, widthType.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, alignment.hashCode);
    _$hash = $jc(_$hash, dataSources.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeseriesChartComponent')
          ..add('margins', margins)
          ..add('borderColor', borderColor)
          ..add('customWidth', customWidth)
          ..add('timewindow', timewindow)
          ..add('timeSeriesChartSettings', timeSeriesChartSettings)
          ..add('widthType', widthType)
          ..add('borderRadius', borderRadius)
          ..add('paddings', paddings)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('alignment', alignment)
          ..add('dataSources', dataSources)
          ..add('height', height)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class TimeseriesChartComponentBuilder
    implements
        Builder<TimeseriesChartComponent, TimeseriesChartComponentBuilder>,
        ReportComponentBuilder {
  _$TimeseriesChartComponent? _$v;

  InsetsBuilder? _margins;
  InsetsBuilder get margins => _$this._margins ??= InsetsBuilder();
  set margins(covariant InsetsBuilder? margins) => _$this._margins = margins;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(covariant String? borderColor) =>
      _$this._borderColor = borderColor;

  int? _customWidth;
  int? get customWidth => _$this._customWidth;
  set customWidth(covariant int? customWidth) =>
      _$this._customWidth = customWidth;

  TimeWindowConfigurationBuilder? _timewindow;
  TimeWindowConfigurationBuilder get timewindow =>
      _$this._timewindow ??= TimeWindowConfigurationBuilder();
  set timewindow(covariant TimeWindowConfigurationBuilder? timewindow) =>
      _$this._timewindow = timewindow;

  ReportTimeSeriesChartSettings? _timeSeriesChartSettings;
  ReportTimeSeriesChartSettings? get timeSeriesChartSettings =>
      _$this._timeSeriesChartSettings;
  set timeSeriesChartSettings(
    covariant ReportTimeSeriesChartSettings? timeSeriesChartSettings,
  ) => _$this._timeSeriesChartSettings = timeSeriesChartSettings;

  ImageWidthType? _widthType;
  ImageWidthType? get widthType => _$this._widthType;
  set widthType(covariant ImageWidthType? widthType) =>
      _$this._widthType = widthType;

  int? _borderRadius;
  int? get borderRadius => _$this._borderRadius;
  set borderRadius(covariant int? borderRadius) =>
      _$this._borderRadius = borderRadius;

  InsetsBuilder? _paddings;
  InsetsBuilder get paddings => _$this._paddings ??= InsetsBuilder();
  set paddings(covariant InsetsBuilder? paddings) =>
      _$this._paddings = paddings;

  String? _background;
  String? get background => _$this._background;
  set background(covariant String? background) =>
      _$this._background = background;

  int? _borderWidth;
  int? get borderWidth => _$this._borderWidth;
  set borderWidth(covariant int? borderWidth) =>
      _$this._borderWidth = borderWidth;

  ImageAlignment? _alignment;
  ImageAlignment? get alignment => _$this._alignment;
  set alignment(covariant ImageAlignment? alignment) =>
      _$this._alignment = alignment;

  ListBuilder<DataSource>? _dataSources;
  ListBuilder<DataSource> get dataSources =>
      _$this._dataSources ??= ListBuilder<DataSource>();
  set dataSources(covariant ListBuilder<DataSource>? dataSources) =>
      _$this._dataSources = dataSources;

  int? _height;
  int? get height => _$this._height;
  set height(covariant int? height) => _$this._height = height;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  TimeseriesChartComponentBuilder() {
    TimeseriesChartComponent._defaults(this);
  }

  TimeseriesChartComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _margins = $v.margins?.toBuilder();
      _borderColor = $v.borderColor;
      _customWidth = $v.customWidth;
      _timewindow = $v.timewindow?.toBuilder();
      _timeSeriesChartSettings = $v.timeSeriesChartSettings;
      _widthType = $v.widthType;
      _borderRadius = $v.borderRadius;
      _paddings = $v.paddings?.toBuilder();
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _alignment = $v.alignment;
      _dataSources = $v.dataSources?.toBuilder();
      _height = $v.height;
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimeseriesChartComponent other) {
    _$v = other as _$TimeseriesChartComponent;
  }

  @override
  void update(void Function(TimeseriesChartComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeseriesChartComponent build() => _build();

  _$TimeseriesChartComponent _build() {
    _$TimeseriesChartComponent _$result;
    try {
      _$result =
          _$v ??
          _$TimeseriesChartComponent._(
            margins: _margins?.build(),
            borderColor: borderColor,
            customWidth: customWidth,
            timewindow: _timewindow?.build(),
            timeSeriesChartSettings: timeSeriesChartSettings,
            widthType: widthType,
            borderRadius: borderRadius,
            paddings: _paddings?.build(),
            background: background,
            borderWidth: borderWidth,
            alignment: alignment,
            dataSources: _dataSources?.build(),
            height: height,
            subType: BuiltValueNullFieldError.checkNotNull(
              subType,
              r'TimeseriesChartComponent',
              'subType',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'TimeseriesChartComponent',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'margins';
        _margins?.build();

        _$failedField = 'timewindow';
        _timewindow?.build();

        _$failedField = 'paddings';
        _paddings?.build();

        _$failedField = 'dataSources';
        _dataSources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimeseriesChartComponent',
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

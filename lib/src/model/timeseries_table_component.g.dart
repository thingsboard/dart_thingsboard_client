// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeseries_table_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeseriesTableComponent extends TimeseriesTableComponent {
  @override
  final Insets? margins;
  @override
  final String? borderColor;
  @override
  final TimeWindowConfiguration? timewindow;
  @override
  final String? timestampPattern;
  @override
  final ColumnSettings? timestampColumnSettings;
  @override
  final Heading? tableHeading;
  @override
  final bool? showTableHeading;
  @override
  final String? timestampLabel;
  @override
  final int? borderRadius;
  @override
  final Insets? paddings;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final TableSortOrder? tableSortOrder;
  @override
  final bool? showTimestamp;
  @override
  final BuiltList<DataSource>? dataSources;
  @override
  final ReportComponentSubType subType;
  @override
  final ReportComponentType type;

  factory _$TimeseriesTableComponent([
    void Function(TimeseriesTableComponentBuilder)? updates,
  ]) => (TimeseriesTableComponentBuilder()..update(updates))._build();

  _$TimeseriesTableComponent._({
    this.margins,
    this.borderColor,
    this.timewindow,
    this.timestampPattern,
    this.timestampColumnSettings,
    this.tableHeading,
    this.showTableHeading,
    this.timestampLabel,
    this.borderRadius,
    this.paddings,
    this.background,
    this.borderWidth,
    this.tableSortOrder,
    this.showTimestamp,
    this.dataSources,
    required this.subType,
    required this.type,
  }) : super._();
  @override
  TimeseriesTableComponent rebuild(
    void Function(TimeseriesTableComponentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeseriesTableComponentBuilder toBuilder() =>
      TimeseriesTableComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeseriesTableComponent &&
        margins == other.margins &&
        borderColor == other.borderColor &&
        timewindow == other.timewindow &&
        timestampPattern == other.timestampPattern &&
        timestampColumnSettings == other.timestampColumnSettings &&
        tableHeading == other.tableHeading &&
        showTableHeading == other.showTableHeading &&
        timestampLabel == other.timestampLabel &&
        borderRadius == other.borderRadius &&
        paddings == other.paddings &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        tableSortOrder == other.tableSortOrder &&
        showTimestamp == other.showTimestamp &&
        dataSources == other.dataSources &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, timewindow.hashCode);
    _$hash = $jc(_$hash, timestampPattern.hashCode);
    _$hash = $jc(_$hash, timestampColumnSettings.hashCode);
    _$hash = $jc(_$hash, tableHeading.hashCode);
    _$hash = $jc(_$hash, showTableHeading.hashCode);
    _$hash = $jc(_$hash, timestampLabel.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, tableSortOrder.hashCode);
    _$hash = $jc(_$hash, showTimestamp.hashCode);
    _$hash = $jc(_$hash, dataSources.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeseriesTableComponent')
          ..add('margins', margins)
          ..add('borderColor', borderColor)
          ..add('timewindow', timewindow)
          ..add('timestampPattern', timestampPattern)
          ..add('timestampColumnSettings', timestampColumnSettings)
          ..add('tableHeading', tableHeading)
          ..add('showTableHeading', showTableHeading)
          ..add('timestampLabel', timestampLabel)
          ..add('borderRadius', borderRadius)
          ..add('paddings', paddings)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('tableSortOrder', tableSortOrder)
          ..add('showTimestamp', showTimestamp)
          ..add('dataSources', dataSources)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class TimeseriesTableComponentBuilder
    implements
        Builder<TimeseriesTableComponent, TimeseriesTableComponentBuilder>,
        ReportComponentBuilder {
  _$TimeseriesTableComponent? _$v;

  InsetsBuilder? _margins;
  InsetsBuilder get margins => _$this._margins ??= InsetsBuilder();
  set margins(covariant InsetsBuilder? margins) => _$this._margins = margins;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(covariant String? borderColor) =>
      _$this._borderColor = borderColor;

  TimeWindowConfigurationBuilder? _timewindow;
  TimeWindowConfigurationBuilder get timewindow =>
      _$this._timewindow ??= TimeWindowConfigurationBuilder();
  set timewindow(covariant TimeWindowConfigurationBuilder? timewindow) =>
      _$this._timewindow = timewindow;

  String? _timestampPattern;
  String? get timestampPattern => _$this._timestampPattern;
  set timestampPattern(covariant String? timestampPattern) =>
      _$this._timestampPattern = timestampPattern;

  ColumnSettingsBuilder? _timestampColumnSettings;
  ColumnSettingsBuilder get timestampColumnSettings =>
      _$this._timestampColumnSettings ??= ColumnSettingsBuilder();
  set timestampColumnSettings(
    covariant ColumnSettingsBuilder? timestampColumnSettings,
  ) => _$this._timestampColumnSettings = timestampColumnSettings;

  HeadingBuilder? _tableHeading;
  HeadingBuilder get tableHeading => _$this._tableHeading ??= HeadingBuilder();
  set tableHeading(covariant HeadingBuilder? tableHeading) =>
      _$this._tableHeading = tableHeading;

  bool? _showTableHeading;
  bool? get showTableHeading => _$this._showTableHeading;
  set showTableHeading(covariant bool? showTableHeading) =>
      _$this._showTableHeading = showTableHeading;

  String? _timestampLabel;
  String? get timestampLabel => _$this._timestampLabel;
  set timestampLabel(covariant String? timestampLabel) =>
      _$this._timestampLabel = timestampLabel;

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

  TableSortOrderBuilder? _tableSortOrder;
  TableSortOrderBuilder get tableSortOrder =>
      _$this._tableSortOrder ??= TableSortOrderBuilder();
  set tableSortOrder(covariant TableSortOrderBuilder? tableSortOrder) =>
      _$this._tableSortOrder = tableSortOrder;

  bool? _showTimestamp;
  bool? get showTimestamp => _$this._showTimestamp;
  set showTimestamp(covariant bool? showTimestamp) =>
      _$this._showTimestamp = showTimestamp;

  ListBuilder<DataSource>? _dataSources;
  ListBuilder<DataSource> get dataSources =>
      _$this._dataSources ??= ListBuilder<DataSource>();
  set dataSources(covariant ListBuilder<DataSource>? dataSources) =>
      _$this._dataSources = dataSources;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  TimeseriesTableComponentBuilder() {
    TimeseriesTableComponent._defaults(this);
  }

  TimeseriesTableComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _margins = $v.margins?.toBuilder();
      _borderColor = $v.borderColor;
      _timewindow = $v.timewindow?.toBuilder();
      _timestampPattern = $v.timestampPattern;
      _timestampColumnSettings = $v.timestampColumnSettings?.toBuilder();
      _tableHeading = $v.tableHeading?.toBuilder();
      _showTableHeading = $v.showTableHeading;
      _timestampLabel = $v.timestampLabel;
      _borderRadius = $v.borderRadius;
      _paddings = $v.paddings?.toBuilder();
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _tableSortOrder = $v.tableSortOrder?.toBuilder();
      _showTimestamp = $v.showTimestamp;
      _dataSources = $v.dataSources?.toBuilder();
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimeseriesTableComponent other) {
    _$v = other as _$TimeseriesTableComponent;
  }

  @override
  void update(void Function(TimeseriesTableComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeseriesTableComponent build() => _build();

  _$TimeseriesTableComponent _build() {
    _$TimeseriesTableComponent _$result;
    try {
      _$result =
          _$v ??
          _$TimeseriesTableComponent._(
            margins: _margins?.build(),
            borderColor: borderColor,
            timewindow: _timewindow?.build(),
            timestampPattern: timestampPattern,
            timestampColumnSettings: _timestampColumnSettings?.build(),
            tableHeading: _tableHeading?.build(),
            showTableHeading: showTableHeading,
            timestampLabel: timestampLabel,
            borderRadius: borderRadius,
            paddings: _paddings?.build(),
            background: background,
            borderWidth: borderWidth,
            tableSortOrder: _tableSortOrder?.build(),
            showTimestamp: showTimestamp,
            dataSources: _dataSources?.build(),
            subType: BuiltValueNullFieldError.checkNotNull(
              subType,
              r'TimeseriesTableComponent',
              'subType',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'TimeseriesTableComponent',
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

        _$failedField = 'timestampColumnSettings';
        _timestampColumnSettings?.build();
        _$failedField = 'tableHeading';
        _tableHeading?.build();

        _$failedField = 'paddings';
        _paddings?.build();

        _$failedField = 'tableSortOrder';
        _tableSortOrder?.build();

        _$failedField = 'dataSources';
        _dataSources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimeseriesTableComponent',
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

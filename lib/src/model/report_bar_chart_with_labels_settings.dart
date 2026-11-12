// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/report_time_series_chart_settings.dart';
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/text_alignment.dart';
import 'package:thingsboard_client/src/model/time_series_chart_bar_width_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_grid_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_threshold.dart';
import 'package:thingsboard_client/src/model/chart_fill_settings.dart';
import 'package:thingsboard_client/src/model/legend_config.dart';
import 'package:thingsboard_client/src/model/comparison_duration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/time_series_chart_state_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_y_axis_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_x_axis_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_no_aggregation_bar_width_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_bar_chart_with_labels_settings.g.dart';

/// ReportBarChartWithLabelsSettings
///
/// Properties:
/// * [showTitle]
/// * [title]
/// * [titleFont]
/// * [titleColor]
/// * [titleAlignment]
/// * [thresholds]
/// * [stack]
/// * [grid]
/// * [yAxes]
/// * [xAxis]
/// * [barWidthSettings]
/// * [noAggregationBarWidthSettings]
/// * [states]
/// * [comparisonEnabled]
/// * [timeForComparison]
/// * [comparisonCustomIntervalValue]
/// * [comparisonXAxis]
/// * [showLegend]
/// * [legendColumnTitleFont]
/// * [legendColumnTitleColor]
/// * [legendLabelFont]
/// * [legendLabelColor]
/// * [legendValueFont]
/// * [legendValueColor]
/// * [legendConfig]
/// * [xaxis]
/// * [yaxes]
/// * [showBarLabel]
/// * [barLabelFont]
/// * [barLabelColor]
/// * [showBarValue]
/// * [barValueFont]
/// * [barValueColor]
/// * [showBarBorder]
/// * [barBorderWidth]
/// * [barBorderRadius]
/// * [barBackgroundSettings]
/// * [barUnits]
/// * [barDecimals]
@BuiltValue()
abstract class ReportBarChartWithLabelsSettings
    implements
        ReportTimeSeriesChartSettings,
        Built<
          ReportBarChartWithLabelsSettings,
          ReportBarChartWithLabelsSettingsBuilder
        > {
  @BuiltValueField(wireName: r'showBarBorder')
  bool? get showBarBorder;

  @BuiltValueField(wireName: r'barLabelColor')
  String? get barLabelColor;

  @BuiltValueField(wireName: r'showBarLabel')
  bool? get showBarLabel;

  @BuiltValueField(wireName: r'showBarValue')
  bool? get showBarValue;

  @BuiltValueField(wireName: r'barUnits')
  String? get barUnits;

  @BuiltValueField(wireName: r'barBorderRadius')
  double? get barBorderRadius;

  @BuiltValueField(wireName: r'barValueFont')
  Font? get barValueFont;

  @BuiltValueField(wireName: r'barBorderWidth')
  double? get barBorderWidth;

  @BuiltValueField(wireName: r'barValueColor')
  String? get barValueColor;

  @BuiltValueField(wireName: r'barBackgroundSettings')
  ChartFillSettings? get barBackgroundSettings;

  @BuiltValueField(wireName: r'barDecimals')
  int? get barDecimals;

  @BuiltValueField(wireName: r'barLabelFont')
  Font? get barLabelFont;

  ReportBarChartWithLabelsSettings._();

  factory ReportBarChartWithLabelsSettings([
    void updates(ReportBarChartWithLabelsSettingsBuilder b),
  ]) = _$ReportBarChartWithLabelsSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportBarChartWithLabelsSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportBarChartWithLabelsSettings> get serializer =>
      _$ReportBarChartWithLabelsSettingsSerializer();
}

class _$ReportBarChartWithLabelsSettingsSerializer
    implements PrimitiveSerializer<ReportBarChartWithLabelsSettings> {
  @override
  final Iterable<Type> types = const [
    ReportBarChartWithLabelsSettings,
    _$ReportBarChartWithLabelsSettings,
  ];

  @override
  final String wireName = r'ReportBarChartWithLabelsSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportBarChartWithLabelsSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.barLabelColor != null) {
      yield r'barLabelColor';
      yield serializers.serialize(
        object.barLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.stack != null) {
      yield r'stack';
      yield serializers.serialize(
        object.stack,
        specifiedType: const FullType(bool),
      );
    }
    if (object.xAxis != null) {
      yield r'xAxis';
      yield serializers.serialize(
        object.xAxis,
        specifiedType: const FullType(TimeSeriesChartXAxisSettings),
      );
    }
    if (object.barUnits != null) {
      yield r'barUnits';
      yield serializers.serialize(
        object.barUnits,
        specifiedType: const FullType(String),
      );
    }
    if (object.barBorderRadius != null) {
      yield r'barBorderRadius';
      yield serializers.serialize(
        object.barBorderRadius,
        specifiedType: const FullType(double),
      );
    }
    if (object.showLegend != null) {
      yield r'showLegend';
      yield serializers.serialize(
        object.showLegend,
        specifiedType: const FullType(bool),
      );
    }
    if (object.yaxes != null) {
      yield r'yaxes';
      yield serializers.serialize(
        object.yaxes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(TimeSeriesChartYAxisSettings),
        ]),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeForComparison != null) {
      yield r'timeForComparison';
      yield serializers.serialize(
        object.timeForComparison,
        specifiedType: const FullType(ComparisonDuration),
      );
    }
    if (object.states != null) {
      yield r'states';
      yield serializers.serialize(
        object.states,
        specifiedType: const FullType(BuiltList, [
          FullType(TimeSeriesChartStateSettings),
        ]),
      );
    }
    if (object.legendValueFont != null) {
      yield r'legendValueFont';
      yield serializers.serialize(
        object.legendValueFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.legendLabelFont != null) {
      yield r'legendLabelFont';
      yield serializers.serialize(
        object.legendLabelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.xaxis != null) {
      yield r'xaxis';
      yield serializers.serialize(
        object.xaxis,
        specifiedType: const FullType(TimeSeriesChartXAxisSettings),
      );
    }
    if (object.titleColor != null) {
      yield r'titleColor';
      yield serializers.serialize(
        object.titleColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.legendColumnTitleFont != null) {
      yield r'legendColumnTitleFont';
      yield serializers.serialize(
        object.legendColumnTitleFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.comparisonCustomIntervalValue != null) {
      yield r'comparisonCustomIntervalValue';
      yield serializers.serialize(
        object.comparisonCustomIntervalValue,
        specifiedType: const FullType(int),
      );
    }
    if (object.barBorderWidth != null) {
      yield r'barBorderWidth';
      yield serializers.serialize(
        object.barBorderWidth,
        specifiedType: const FullType(double),
      );
    }
    if (object.legendLabelColor != null) {
      yield r'legendLabelColor';
      yield serializers.serialize(
        object.legendLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.barDecimals != null) {
      yield r'barDecimals';
      yield serializers.serialize(
        object.barDecimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.legendValueColor != null) {
      yield r'legendValueColor';
      yield serializers.serialize(
        object.legendValueColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.comparisonEnabled != null) {
      yield r'comparisonEnabled';
      yield serializers.serialize(
        object.comparisonEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.barLabelFont != null) {
      yield r'barLabelFont';
      yield serializers.serialize(
        object.barLabelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.barWidthSettings != null) {
      yield r'barWidthSettings';
      yield serializers.serialize(
        object.barWidthSettings,
        specifiedType: const FullType(TimeSeriesChartBarWidthSettings),
      );
    }
    if (object.showBarBorder != null) {
      yield r'showBarBorder';
      yield serializers.serialize(
        object.showBarBorder,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showBarValue != null) {
      yield r'showBarValue';
      yield serializers.serialize(
        object.showBarValue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.legendConfig != null) {
      yield r'legendConfig';
      yield serializers.serialize(
        object.legendConfig,
        specifiedType: const FullType(LegendConfig),
      );
    }
    if (object.noAggregationBarWidthSettings != null) {
      yield r'noAggregationBarWidthSettings';
      yield serializers.serialize(
        object.noAggregationBarWidthSettings,
        specifiedType: const FullType(
          TimeSeriesChartNoAggregationBarWidthSettings,
        ),
      );
    }
    if (object.barValueFont != null) {
      yield r'barValueFont';
      yield serializers.serialize(
        object.barValueFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.titleAlignment != null) {
      yield r'titleAlignment';
      yield serializers.serialize(
        object.titleAlignment,
        specifiedType: const FullType(TextAlignment),
      );
    }
    if (object.titleFont != null) {
      yield r'titleFont';
      yield serializers.serialize(
        object.titleFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.comparisonXAxis != null) {
      yield r'comparisonXAxis';
      yield serializers.serialize(
        object.comparisonXAxis,
        specifiedType: const FullType(TimeSeriesChartXAxisSettings),
      );
    }
    if (object.legendColumnTitleColor != null) {
      yield r'legendColumnTitleColor';
      yield serializers.serialize(
        object.legendColumnTitleColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.showBarLabel != null) {
      yield r'showBarLabel';
      yield serializers.serialize(
        object.showBarLabel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType(BuiltList, [
          FullType(TimeSeriesChartThreshold),
        ]),
      );
    }
    if (object.showTitle != null) {
      yield r'showTitle';
      yield serializers.serialize(
        object.showTitle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.grid != null) {
      yield r'grid';
      yield serializers.serialize(
        object.grid,
        specifiedType: const FullType(TimeSeriesChartGridSettings),
      );
    }
    if (object.yAxes != null) {
      yield r'yAxes';
      yield serializers.serialize(
        object.yAxes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(TimeSeriesChartYAxisSettings),
        ]),
      );
    }
    if (object.barValueColor != null) {
      yield r'barValueColor';
      yield serializers.serialize(
        object.barValueColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.barBackgroundSettings != null) {
      yield r'barBackgroundSettings';
      yield serializers.serialize(
        object.barBackgroundSettings,
        specifiedType: const FullType(ChartFillSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportBarChartWithLabelsSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportBarChartWithLabelsSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'barLabelColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.barLabelColor = valueDes;
          break;
        case r'stack':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.stack = valueDes;
          break;
        case r'xAxis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartXAxisSettings,
                    ),
                  )
                  as TimeSeriesChartXAxisSettings?;
          if (valueDes == null) continue;
          result.xAxis.replace(valueDes);
          break;
        case r'barUnits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.barUnits = valueDes;
          break;
        case r'barBorderRadius':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.barBorderRadius = valueDes;
          break;
        case r'showLegend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showLegend = valueDes;
          break;
        case r'yaxes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(TimeSeriesChartYAxisSettings),
                    ]),
                  )
                  as BuiltMap<String, TimeSeriesChartYAxisSettings>?;
          if (valueDes == null) continue;
          result.yaxes.replace(valueDes);
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'timeForComparison':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ComparisonDuration),
                  )
                  as ComparisonDuration?;
          if (valueDes == null) continue;
          result.timeForComparison = valueDes;
          break;
        case r'states':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TimeSeriesChartStateSettings),
                    ]),
                  )
                  as BuiltList<TimeSeriesChartStateSettings>?;
          if (valueDes == null) continue;
          result.states.replace(valueDes);
          break;
        case r'legendValueFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.legendValueFont.replace(valueDes);
          break;
        case r'legendLabelFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.legendLabelFont.replace(valueDes);
          break;
        case r'xaxis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartXAxisSettings,
                    ),
                  )
                  as TimeSeriesChartXAxisSettings?;
          if (valueDes == null) continue;
          result.xaxis.replace(valueDes);
          break;
        case r'titleColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.titleColor = valueDes;
          break;
        case r'legendColumnTitleFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.legendColumnTitleFont.replace(valueDes);
          break;
        case r'comparisonCustomIntervalValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.comparisonCustomIntervalValue = valueDes;
          break;
        case r'barBorderWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.barBorderWidth = valueDes;
          break;
        case r'legendLabelColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.legendLabelColor = valueDes;
          break;
        case r'barDecimals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.barDecimals = valueDes;
          break;
        case r'legendValueColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.legendValueColor = valueDes;
          break;
        case r'comparisonEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.comparisonEnabled = valueDes;
          break;
        case r'barLabelFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.barLabelFont.replace(valueDes);
          break;
        case r'barWidthSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartBarWidthSettings,
                    ),
                  )
                  as TimeSeriesChartBarWidthSettings?;
          if (valueDes == null) continue;
          result.barWidthSettings.replace(valueDes);
          break;
        case r'showBarBorder':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showBarBorder = valueDes;
          break;
        case r'showBarValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showBarValue = valueDes;
          break;
        case r'legendConfig':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LegendConfig),
                  )
                  as LegendConfig?;
          if (valueDes == null) continue;
          result.legendConfig.replace(valueDes);
          break;
        case r'noAggregationBarWidthSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartNoAggregationBarWidthSettings,
                    ),
                  )
                  as TimeSeriesChartNoAggregationBarWidthSettings?;
          if (valueDes == null) continue;
          result.noAggregationBarWidthSettings.replace(valueDes);
          break;
        case r'barValueFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.barValueFont.replace(valueDes);
          break;
        case r'titleAlignment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TextAlignment),
                  )
                  as TextAlignment?;
          if (valueDes == null) continue;
          result.titleAlignment = valueDes;
          break;
        case r'titleFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.titleFont.replace(valueDes);
          break;
        case r'comparisonXAxis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartXAxisSettings,
                    ),
                  )
                  as TimeSeriesChartXAxisSettings?;
          if (valueDes == null) continue;
          result.comparisonXAxis.replace(valueDes);
          break;
        case r'legendColumnTitleColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.legendColumnTitleColor = valueDes;
          break;
        case r'showBarLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showBarLabel = valueDes;
          break;
        case r'thresholds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TimeSeriesChartThreshold),
                    ]),
                  )
                  as BuiltList<TimeSeriesChartThreshold>?;
          if (valueDes == null) continue;
          result.thresholds.replace(valueDes);
          break;
        case r'showTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTitle = valueDes;
          break;
        case r'grid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartGridSettings,
                    ),
                  )
                  as TimeSeriesChartGridSettings?;
          if (valueDes == null) continue;
          result.grid.replace(valueDes);
          break;
        case r'yAxes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(TimeSeriesChartYAxisSettings),
                    ]),
                  )
                  as BuiltMap<String, TimeSeriesChartYAxisSettings>?;
          if (valueDes == null) continue;
          result.yAxes.replace(valueDes);
          break;
        case r'barValueColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.barValueColor = valueDes;
          break;
        case r'barBackgroundSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChartFillSettings),
                  )
                  as ChartFillSettings?;
          if (valueDes == null) continue;
          result.barBackgroundSettings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportBarChartWithLabelsSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportBarChartWithLabelsSettingsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

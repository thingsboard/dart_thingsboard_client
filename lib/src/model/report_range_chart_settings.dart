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
import 'package:thingsboard_client/src/model/legend_config.dart';
import 'package:thingsboard_client/src/model/comparison_duration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/time_series_chart_state_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_y_axis_settings.dart';
import 'package:thingsboard_client/src/model/line_series_settings.dart';
import 'package:thingsboard_client/src/model/color_range.dart';
import 'package:thingsboard_client/src/model/time_series_chart_x_axis_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_no_aggregation_bar_width_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_range_chart_settings.g.dart';

/// ReportRangeChartSettings
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
/// * [rangeColors]
/// * [outOfRangeColor]
/// * [showRangeThresholds]
/// * [rangeThreshold]
/// * [fillArea]
/// * [fillAreaOpacity]
/// * [lineSettings]
/// * [rangeUnits]
/// * [rangeDecimals]
@BuiltValue()
abstract class ReportRangeChartSettings
    implements
        ReportTimeSeriesChartSettings,
        Built<ReportRangeChartSettings, ReportRangeChartSettingsBuilder> {
  @BuiltValueField(wireName: r'rangeThreshold')
  TimeSeriesChartThreshold? get rangeThreshold;

  @BuiltValueField(wireName: r'fillArea')
  bool? get fillArea;

  @BuiltValueField(wireName: r'rangeUnits')
  String? get rangeUnits;

  @BuiltValueField(wireName: r'rangeDecimals')
  int? get rangeDecimals;

  @BuiltValueField(wireName: r'rangeColors')
  BuiltList<ColorRange>? get rangeColors;

  @BuiltValueField(wireName: r'showRangeThresholds')
  bool? get showRangeThresholds;

  @BuiltValueField(wireName: r'lineSettings')
  LineSeriesSettings? get lineSettings;

  @BuiltValueField(wireName: r'outOfRangeColor')
  String? get outOfRangeColor;

  @BuiltValueField(wireName: r'fillAreaOpacity')
  double? get fillAreaOpacity;

  ReportRangeChartSettings._();

  factory ReportRangeChartSettings([
    void updates(ReportRangeChartSettingsBuilder b),
  ]) = _$ReportRangeChartSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportRangeChartSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportRangeChartSettings> get serializer =>
      _$ReportRangeChartSettingsSerializer();
}

class _$ReportRangeChartSettingsSerializer
    implements PrimitiveSerializer<ReportRangeChartSettings> {
  @override
  final Iterable<Type> types = const [
    ReportRangeChartSettings,
    _$ReportRangeChartSettings,
  ];

  @override
  final String wireName = r'ReportRangeChartSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportRangeChartSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.showLegend != null) {
      yield r'showLegend';
      yield serializers.serialize(
        object.showLegend,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showRangeThresholds != null) {
      yield r'showRangeThresholds';
      yield serializers.serialize(
        object.showRangeThresholds,
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
    if (object.rangeDecimals != null) {
      yield r'rangeDecimals';
      yield serializers.serialize(
        object.rangeDecimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.comparisonCustomIntervalValue != null) {
      yield r'comparisonCustomIntervalValue';
      yield serializers.serialize(
        object.comparisonCustomIntervalValue,
        specifiedType: const FullType(int),
      );
    }
    if (object.legendLabelColor != null) {
      yield r'legendLabelColor';
      yield serializers.serialize(
        object.legendLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.lineSettings != null) {
      yield r'lineSettings';
      yield serializers.serialize(
        object.lineSettings,
        specifiedType: const FullType(LineSeriesSettings),
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
    if (object.fillAreaOpacity != null) {
      yield r'fillAreaOpacity';
      yield serializers.serialize(
        object.fillAreaOpacity,
        specifiedType: const FullType(double),
      );
    }
    if (object.barWidthSettings != null) {
      yield r'barWidthSettings';
      yield serializers.serialize(
        object.barWidthSettings,
        specifiedType: const FullType(TimeSeriesChartBarWidthSettings),
      );
    }
    if (object.rangeThreshold != null) {
      yield r'rangeThreshold';
      yield serializers.serialize(
        object.rangeThreshold,
        specifiedType: const FullType(TimeSeriesChartThreshold),
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
    if (object.rangeColors != null) {
      yield r'rangeColors';
      yield serializers.serialize(
        object.rangeColors,
        specifiedType: const FullType(BuiltList, [FullType(ColorRange)]),
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
    if (object.outOfRangeColor != null) {
      yield r'outOfRangeColor';
      yield serializers.serialize(
        object.outOfRangeColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.legendColumnTitleColor != null) {
      yield r'legendColumnTitleColor';
      yield serializers.serialize(
        object.legendColumnTitleColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.fillArea != null) {
      yield r'fillArea';
      yield serializers.serialize(
        object.fillArea,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rangeUnits != null) {
      yield r'rangeUnits';
      yield serializers.serialize(
        object.rangeUnits,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportRangeChartSettings object, {
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
    required ReportRangeChartSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'showRangeThresholds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showRangeThresholds = valueDes;
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
        case r'rangeDecimals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rangeDecimals = valueDes;
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
        case r'lineSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LineSeriesSettings),
                  )
                  as LineSeriesSettings?;
          if (valueDes == null) continue;
          result.lineSettings.replace(valueDes);
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
        case r'fillAreaOpacity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.fillAreaOpacity = valueDes;
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
        case r'rangeThreshold':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartThreshold,
                    ),
                  )
                  as TimeSeriesChartThreshold?;
          if (valueDes == null) continue;
          result.rangeThreshold.replace(valueDes);
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
        case r'rangeColors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ColorRange),
                    ]),
                  )
                  as BuiltList<ColorRange>?;
          if (valueDes == null) continue;
          result.rangeColors.replace(valueDes);
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
        case r'outOfRangeColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.outOfRangeColor = valueDes;
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
        case r'fillArea':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.fillArea = valueDes;
          break;
        case r'rangeUnits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rangeUnits = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportRangeChartSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportRangeChartSettingsBuilder();
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

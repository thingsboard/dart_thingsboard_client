// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/legend_position.dart';
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/text_alignment.dart';
import 'package:thingsboard_client/src/model/report_latest_chart_settings.dart';
import 'package:thingsboard_client/src/model/bar_series_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_bar_chart_settings.g.dart';

/// ReportBarChartSettings
///
/// Properties:
/// * [showTitle] 
/// * [title] 
/// * [titleFont] 
/// * [titleColor] 
/// * [titleAlignment] 
/// * [units] 
/// * [decimals] 
/// * [autoScale] 
/// * [sortSeries] 
/// * [showTotal] 
/// * [showLegend] 
/// * [legendPosition] 
/// * [legendLabelFont] 
/// * [legendLabelColor] 
/// * [legendValueFont] 
/// * [legendValueColor] 
/// * [legendShowTotal] 
/// * [axisMin] 
/// * [axisMax] 
/// * [axisTickLabelFont] 
/// * [axisTickLabelColor] 
/// * [barSettings] 
@BuiltValue()
abstract class ReportBarChartSettings implements ReportLatestChartSettings, Built<ReportBarChartSettings, ReportBarChartSettingsBuilder> {
  @BuiltValueField(wireName: r'barSettings')
  BarSeriesSettings? get barSettings;

  @BuiltValueField(wireName: r'axisTickLabelColor')
  String? get axisTickLabelColor;

  @BuiltValueField(wireName: r'axisTickLabelFont')
  Font? get axisTickLabelFont;

  @BuiltValueField(wireName: r'axisMax')
  double? get axisMax;

  @BuiltValueField(wireName: r'axisMin')
  double? get axisMin;

  ReportBarChartSettings._();

  factory ReportBarChartSettings([void updates(ReportBarChartSettingsBuilder b)]) = _$ReportBarChartSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportBarChartSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportBarChartSettings> get serializer => _$ReportBarChartSettingsSerializer();
}

class _$ReportBarChartSettingsSerializer implements PrimitiveSerializer<ReportBarChartSettings> {
  @override
  final Iterable<Type> types = const [ReportBarChartSettings, _$ReportBarChartSettings];

  @override
  final String wireName = r'ReportBarChartSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportBarChartSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.barSettings != null) {
      yield r'barSettings';
      yield serializers.serialize(
        object.barSettings,
        specifiedType: const FullType(BarSeriesSettings),
      );
    }
    if (object.axisTickLabelColor != null) {
      yield r'axisTickLabelColor';
      yield serializers.serialize(
        object.axisTickLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.showLegend != null) {
      yield r'showLegend';
      yield serializers.serialize(
        object.showLegend,
        specifiedType: const FullType(bool),
      );
    }
    if (object.titleAlignment != null) {
      yield r'titleAlignment';
      yield serializers.serialize(
        object.titleAlignment,
        specifiedType: const FullType(TextAlignment),
      );
    }
    if (object.axisTickLabelFont != null) {
      yield r'axisTickLabelFont';
      yield serializers.serialize(
        object.axisTickLabelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.titleFont != null) {
      yield r'titleFont';
      yield serializers.serialize(
        object.titleFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.legendShowTotal != null) {
      yield r'legendShowTotal';
      yield serializers.serialize(
        object.legendShowTotal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.axisMin != null) {
      yield r'axisMin';
      yield serializers.serialize(
        object.axisMin,
        specifiedType: const FullType(double),
      );
    }
    if (object.autoScale != null) {
      yield r'autoScale';
      yield serializers.serialize(
        object.autoScale,
        specifiedType: const FullType(bool),
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
    if (object.titleColor != null) {
      yield r'titleColor';
      yield serializers.serialize(
        object.titleColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.showTitle != null) {
      yield r'showTitle';
      yield serializers.serialize(
        object.showTitle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.decimals != null) {
      yield r'decimals';
      yield serializers.serialize(
        object.decimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.showTotal != null) {
      yield r'showTotal';
      yield serializers.serialize(
        object.showTotal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.legendLabelColor != null) {
      yield r'legendLabelColor';
      yield serializers.serialize(
        object.legendLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.legendPosition != null) {
      yield r'legendPosition';
      yield serializers.serialize(
        object.legendPosition,
        specifiedType: const FullType(LegendPosition),
      );
    }
    if (object.axisMax != null) {
      yield r'axisMax';
      yield serializers.serialize(
        object.axisMax,
        specifiedType: const FullType(double),
      );
    }
    if (object.sortSeries != null) {
      yield r'sortSeries';
      yield serializers.serialize(
        object.sortSeries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.legendValueColor != null) {
      yield r'legendValueColor';
      yield serializers.serialize(
        object.legendValueColor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportBarChartSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportBarChartSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'barSettings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BarSeriesSettings),
          ) as BarSeriesSettings?;
          if (valueDes == null) continue;
          result.barSettings.replace(valueDes);
          break;
        case r'axisTickLabelColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.axisTickLabelColor = valueDes;
          break;
        case r'showLegend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showLegend = valueDes;
          break;
        case r'titleAlignment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TextAlignment),
          ) as TextAlignment?;
          if (valueDes == null) continue;
          result.titleAlignment = valueDes;
          break;
        case r'axisTickLabelFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.axisTickLabelFont.replace(valueDes);
          break;
        case r'titleFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.titleFont.replace(valueDes);
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'legendShowTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.legendShowTotal = valueDes;
          break;
        case r'axisMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.axisMin = valueDes;
          break;
        case r'autoScale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.autoScale = valueDes;
          break;
        case r'legendValueFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.legendValueFont.replace(valueDes);
          break;
        case r'legendLabelFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.legendLabelFont.replace(valueDes);
          break;
        case r'titleColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.titleColor = valueDes;
          break;
        case r'showTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showTitle = valueDes;
          break;
        case r'decimals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.decimals = valueDes;
          break;
        case r'showTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showTotal = valueDes;
          break;
        case r'legendLabelColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.legendLabelColor = valueDes;
          break;
        case r'legendPosition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LegendPosition),
          ) as LegendPosition?;
          if (valueDes == null) continue;
          result.legendPosition = valueDes;
          break;
        case r'axisMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.axisMax = valueDes;
          break;
        case r'sortSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sortSeries = valueDes;
          break;
        case r'legendValueColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.legendValueColor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportBarChartSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportBarChartSettingsBuilder();
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



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
import 'package:thingsboard_client/src/model/pie_chart_label_position.dart';
import 'package:thingsboard_client/src/model/report_latest_chart_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_pie_chart_settings.g.dart';

/// ReportPieChartSettings
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
/// * [showLabel]
/// * [labelPosition]
/// * [labelFont]
/// * [labelColor]
/// * [borderWidth]
/// * [borderColor]
/// * [radius]
/// * [clockwise]
@BuiltValue()
abstract class ReportPieChartSettings
    implements
        ReportLatestChartSettings,
        Built<ReportPieChartSettings, ReportPieChartSettingsBuilder> {
  @BuiltValueField(wireName: r'borderColor')
  String? get borderColor;

  @BuiltValueField(wireName: r'labelFont')
  Font? get labelFont;

  @BuiltValueField(wireName: r'labelPosition')
  PieChartLabelPosition? get labelPosition;
  // enum labelPositionEnum {  inside,  outside,  };

  @BuiltValueField(wireName: r'borderWidth')
  double? get borderWidth;

  @BuiltValueField(wireName: r'clockwise')
  bool? get clockwise;

  @BuiltValueField(wireName: r'radius')
  double? get radius;

  @BuiltValueField(wireName: r'showLabel')
  bool? get showLabel;

  @BuiltValueField(wireName: r'labelColor')
  String? get labelColor;

  ReportPieChartSettings._();

  factory ReportPieChartSettings([
    void updates(ReportPieChartSettingsBuilder b),
  ]) = _$ReportPieChartSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportPieChartSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportPieChartSettings> get serializer =>
      _$ReportPieChartSettingsSerializer();
}

class _$ReportPieChartSettingsSerializer
    implements PrimitiveSerializer<ReportPieChartSettings> {
  @override
  final Iterable<Type> types = const [
    ReportPieChartSettings,
    _$ReportPieChartSettings,
  ];

  @override
  final String wireName = r'ReportPieChartSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportPieChartSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.borderColor != null) {
      yield r'borderColor';
      yield serializers.serialize(
        object.borderColor,
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
    if (object.showLabel != null) {
      yield r'showLabel';
      yield serializers.serialize(
        object.showLabel,
        specifiedType: const FullType(bool),
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
    if (object.labelPosition != null) {
      yield r'labelPosition';
      yield serializers.serialize(
        object.labelPosition,
        specifiedType: const FullType(PieChartLabelPosition),
      );
    }
    if (object.borderWidth != null) {
      yield r'borderWidth';
      yield serializers.serialize(
        object.borderWidth,
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
    if (object.radius != null) {
      yield r'radius';
      yield serializers.serialize(
        object.radius,
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
    if (object.labelFont != null) {
      yield r'labelFont';
      yield serializers.serialize(
        object.labelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.clockwise != null) {
      yield r'clockwise';
      yield serializers.serialize(
        object.clockwise,
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
    if (object.titleFont != null) {
      yield r'titleFont';
      yield serializers.serialize(
        object.titleFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.labelColor != null) {
      yield r'labelColor';
      yield serializers.serialize(
        object.labelColor,
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
    if (object.legendPosition != null) {
      yield r'legendPosition';
      yield serializers.serialize(
        object.legendPosition,
        specifiedType: const FullType(LegendPosition),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportPieChartSettings object, {
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
    required ReportPieChartSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'borderColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.borderColor = valueDes;
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
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
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
        case r'legendShowTotal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.legendShowTotal = valueDes;
          break;
        case r'showLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showLabel = valueDes;
          break;
        case r'autoScale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.autoScale = valueDes;
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
        case r'labelPosition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PieChartLabelPosition,
                    ),
                  )
                  as PieChartLabelPosition?;
          if (valueDes == null) continue;
          result.labelPosition = valueDes;
          break;
        case r'borderWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.borderWidth = valueDes;
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
        case r'radius':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.radius = valueDes;
          break;
        case r'sortSeries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sortSeries = valueDes;
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
        case r'labelFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.labelFont.replace(valueDes);
          break;
        case r'clockwise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.clockwise = valueDes;
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
        case r'labelColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.labelColor = valueDes;
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
        case r'decimals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.decimals = valueDes;
          break;
        case r'showTotal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTotal = valueDes;
          break;
        case r'legendPosition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LegendPosition),
                  )
                  as LegendPosition?;
          if (valueDes == null) continue;
          result.legendPosition = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportPieChartSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportPieChartSettingsBuilder();
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

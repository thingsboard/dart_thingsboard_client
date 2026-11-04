// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/chart_line_type.dart';
import 'package:thingsboard_client/src/model/threshold_label_position.dart';
import 'package:thingsboard_client/src/model/chart_shape.dart';
import 'package:thingsboard_client/src/model/value_source_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_chart_threshold.g.dart';

/// TimeSeriesChartThreshold
///
/// Properties:
/// * [type] 
/// * [value] 
/// * [latestKeyType] 
/// * [latestKey] 
/// * [entityKeyType] 
/// * [entityAlias] 
/// * [entityKey] 
/// * [yAxisId] 
/// * [units] 
/// * [decimals] 
/// * [lineColor] 
/// * [lineType] 
/// * [lineWidth] 
/// * [startSymbol] 
/// * [startSymbolSize] 
/// * [endSymbol] 
/// * [endSymbolSize] 
/// * [showLabel] 
/// * [labelPosition] 
/// * [labelFont] 
/// * [labelColor] 
/// * [enableLabelBackground] 
/// * [labelBackground] 
/// * [yaxisId] 
@BuiltValue()
abstract class TimeSeriesChartThreshold implements Built<TimeSeriesChartThreshold, TimeSeriesChartThresholdBuilder> {
  @BuiltValueField(wireName: r'type')
  ValueSourceType? get type;
  // enum typeEnum {  constant,  latestKey,  entity,  };

  @BuiltValueField(wireName: r'value')
  double? get value;

  @BuiltValueField(wireName: r'latestKeyType')
  String? get latestKeyType;

  @BuiltValueField(wireName: r'latestKey')
  String? get latestKey;

  @BuiltValueField(wireName: r'entityKeyType')
  String? get entityKeyType;

  @BuiltValueField(wireName: r'entityAlias')
  String? get entityAlias;

  @BuiltValueField(wireName: r'entityKey')
  String? get entityKey;

  @BuiltValueField(wireName: r'yAxisId')
  String? get yAxisId;

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'decimals')
  int? get decimals;

  @BuiltValueField(wireName: r'lineColor')
  String? get lineColor;

  @BuiltValueField(wireName: r'lineType')
  ChartLineType? get lineType;
  // enum lineTypeEnum {  solid,  dashed,  dotted,  };

  @BuiltValueField(wireName: r'lineWidth')
  double? get lineWidth;

  @BuiltValueField(wireName: r'startSymbol')
  ChartShape? get startSymbol;
  // enum startSymbolEnum {  emptyCircle,  circle,  rect,  roundRect,  triangle,  diamond,  pin,  arrow,  none,  };

  @BuiltValueField(wireName: r'startSymbolSize')
  double? get startSymbolSize;

  @BuiltValueField(wireName: r'endSymbol')
  ChartShape? get endSymbol;
  // enum endSymbolEnum {  emptyCircle,  circle,  rect,  roundRect,  triangle,  diamond,  pin,  arrow,  none,  };

  @BuiltValueField(wireName: r'endSymbolSize')
  double? get endSymbolSize;

  @BuiltValueField(wireName: r'showLabel')
  bool? get showLabel;

  @BuiltValueField(wireName: r'labelPosition')
  ThresholdLabelPosition? get labelPosition;
  // enum labelPositionEnum {  start,  middle,  end,  insideStart,  insideStartTop,  insideStartBottom,  insideMiddle,  insideMiddleTop,  insideMiddleBottom,  insideEnd,  insideEndTop,  insideEndBottom,  };

  @BuiltValueField(wireName: r'labelFont')
  Font? get labelFont;

  @BuiltValueField(wireName: r'labelColor')
  String? get labelColor;

  @BuiltValueField(wireName: r'enableLabelBackground')
  bool? get enableLabelBackground;

  @BuiltValueField(wireName: r'labelBackground')
  String? get labelBackground;

  @BuiltValueField(wireName: r'yaxisId')
  String? get yaxisId;

  TimeSeriesChartThreshold._();

  factory TimeSeriesChartThreshold([void updates(TimeSeriesChartThresholdBuilder b)]) = _$TimeSeriesChartThreshold;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartThresholdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartThreshold> get serializer => _$TimeSeriesChartThresholdSerializer();
}

class _$TimeSeriesChartThresholdSerializer implements PrimitiveSerializer<TimeSeriesChartThreshold> {
  @override
  final Iterable<Type> types = const [TimeSeriesChartThreshold, _$TimeSeriesChartThreshold];

  @override
  final String wireName = r'TimeSeriesChartThreshold';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartThreshold object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ValueSourceType),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
    if (object.latestKeyType != null) {
      yield r'latestKeyType';
      yield serializers.serialize(
        object.latestKeyType,
        specifiedType: const FullType(String),
      );
    }
    if (object.latestKey != null) {
      yield r'latestKey';
      yield serializers.serialize(
        object.latestKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityKeyType != null) {
      yield r'entityKeyType';
      yield serializers.serialize(
        object.entityKeyType,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityAlias != null) {
      yield r'entityAlias';
      yield serializers.serialize(
        object.entityAlias,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityKey != null) {
      yield r'entityKey';
      yield serializers.serialize(
        object.entityKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.yAxisId != null) {
      yield r'yAxisId';
      yield serializers.serialize(
        object.yAxisId,
        specifiedType: const FullType(String),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(String),
      );
    }
    if (object.decimals != null) {
      yield r'decimals';
      yield serializers.serialize(
        object.decimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.lineColor != null) {
      yield r'lineColor';
      yield serializers.serialize(
        object.lineColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.lineType != null) {
      yield r'lineType';
      yield serializers.serialize(
        object.lineType,
        specifiedType: const FullType(ChartLineType),
      );
    }
    if (object.lineWidth != null) {
      yield r'lineWidth';
      yield serializers.serialize(
        object.lineWidth,
        specifiedType: const FullType(double),
      );
    }
    if (object.startSymbol != null) {
      yield r'startSymbol';
      yield serializers.serialize(
        object.startSymbol,
        specifiedType: const FullType(ChartShape),
      );
    }
    if (object.startSymbolSize != null) {
      yield r'startSymbolSize';
      yield serializers.serialize(
        object.startSymbolSize,
        specifiedType: const FullType(double),
      );
    }
    if (object.endSymbol != null) {
      yield r'endSymbol';
      yield serializers.serialize(
        object.endSymbol,
        specifiedType: const FullType(ChartShape),
      );
    }
    if (object.endSymbolSize != null) {
      yield r'endSymbolSize';
      yield serializers.serialize(
        object.endSymbolSize,
        specifiedType: const FullType(double),
      );
    }
    if (object.showLabel != null) {
      yield r'showLabel';
      yield serializers.serialize(
        object.showLabel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.labelPosition != null) {
      yield r'labelPosition';
      yield serializers.serialize(
        object.labelPosition,
        specifiedType: const FullType(ThresholdLabelPosition),
      );
    }
    if (object.labelFont != null) {
      yield r'labelFont';
      yield serializers.serialize(
        object.labelFont,
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
    if (object.enableLabelBackground != null) {
      yield r'enableLabelBackground';
      yield serializers.serialize(
        object.enableLabelBackground,
        specifiedType: const FullType(bool),
      );
    }
    if (object.labelBackground != null) {
      yield r'labelBackground';
      yield serializers.serialize(
        object.labelBackground,
        specifiedType: const FullType(String),
      );
    }
    if (object.yaxisId != null) {
      yield r'yaxisId';
      yield serializers.serialize(
        object.yaxisId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartThreshold object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeSeriesChartThresholdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ValueSourceType),
          ) as ValueSourceType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'latestKeyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.latestKeyType = valueDes;
          break;
        case r'latestKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.latestKey = valueDes;
          break;
        case r'entityKeyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityKeyType = valueDes;
          break;
        case r'entityAlias':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityAlias = valueDes;
          break;
        case r'entityKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityKey = valueDes;
          break;
        case r'yAxisId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.yAxisId = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'decimals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.decimals = valueDes;
          break;
        case r'lineColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lineColor = valueDes;
          break;
        case r'lineType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChartLineType),
          ) as ChartLineType?;
          if (valueDes == null) continue;
          result.lineType = valueDes;
          break;
        case r'lineWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.lineWidth = valueDes;
          break;
        case r'startSymbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChartShape),
          ) as ChartShape?;
          if (valueDes == null) continue;
          result.startSymbol = valueDes;
          break;
        case r'startSymbolSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.startSymbolSize = valueDes;
          break;
        case r'endSymbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChartShape),
          ) as ChartShape?;
          if (valueDes == null) continue;
          result.endSymbol = valueDes;
          break;
        case r'endSymbolSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.endSymbolSize = valueDes;
          break;
        case r'showLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showLabel = valueDes;
          break;
        case r'labelPosition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ThresholdLabelPosition),
          ) as ThresholdLabelPosition?;
          if (valueDes == null) continue;
          result.labelPosition = valueDes;
          break;
        case r'labelFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.labelFont.replace(valueDes);
          break;
        case r'labelColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.labelColor = valueDes;
          break;
        case r'enableLabelBackground':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enableLabelBackground = valueDes;
          break;
        case r'labelBackground':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.labelBackground = valueDes;
          break;
        case r'yaxisId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.yaxisId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartThreshold deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartThresholdBuilder();
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



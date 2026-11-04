// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/line_series_step_type.dart';
import 'package:thingsboard_client/src/model/chart_fill_settings.dart';
import 'package:thingsboard_client/src/model/chart_line_type.dart';
import 'package:thingsboard_client/src/model/chart_label_position.dart';
import 'package:thingsboard_client/src/model/chart_shape.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'line_series_settings.g.dart';

/// LineSeriesSettings
///
/// Properties:
/// * [showLine]
/// * [step]
/// * [stepType]
/// * [smooth]
/// * [lineType]
/// * [lineWidth]
/// * [showPoints]
/// * [showPointLabel]
/// * [pointLabelPosition]
/// * [pointLabelFont]
/// * [pointLabelColor]
/// * [enablePointLabelBackground]
/// * [pointLabelBackground]
/// * [pointShape]
/// * [pointSize]
/// * [fillAreaSettings]
@BuiltValue()
abstract class LineSeriesSettings
    implements Built<LineSeriesSettings, LineSeriesSettingsBuilder> {
  @BuiltValueField(wireName: r'showLine')
  bool? get showLine;

  @BuiltValueField(wireName: r'step')
  bool? get step;

  @BuiltValueField(wireName: r'stepType')
  LineSeriesStepType? get stepType;
  // enum stepTypeEnum {  start,  middle,  end,  };

  @BuiltValueField(wireName: r'smooth')
  bool? get smooth;

  @BuiltValueField(wireName: r'lineType')
  ChartLineType? get lineType;
  // enum lineTypeEnum {  solid,  dashed,  dotted,  };

  @BuiltValueField(wireName: r'lineWidth')
  double? get lineWidth;

  @BuiltValueField(wireName: r'showPoints')
  bool? get showPoints;

  @BuiltValueField(wireName: r'showPointLabel')
  bool? get showPointLabel;

  @BuiltValueField(wireName: r'pointLabelPosition')
  ChartLabelPosition? get pointLabelPosition;
  // enum pointLabelPositionEnum {  top,  bottom,  };

  @BuiltValueField(wireName: r'pointLabelFont')
  Font? get pointLabelFont;

  @BuiltValueField(wireName: r'pointLabelColor')
  String? get pointLabelColor;

  @BuiltValueField(wireName: r'enablePointLabelBackground')
  bool? get enablePointLabelBackground;

  @BuiltValueField(wireName: r'pointLabelBackground')
  String? get pointLabelBackground;

  @BuiltValueField(wireName: r'pointShape')
  ChartShape? get pointShape;
  // enum pointShapeEnum {  emptyCircle,  circle,  rect,  roundRect,  triangle,  diamond,  pin,  arrow,  none,  };

  @BuiltValueField(wireName: r'pointSize')
  double? get pointSize;

  @BuiltValueField(wireName: r'fillAreaSettings')
  ChartFillSettings? get fillAreaSettings;

  LineSeriesSettings._();

  factory LineSeriesSettings([void updates(LineSeriesSettingsBuilder b)]) =
      _$LineSeriesSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LineSeriesSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LineSeriesSettings> get serializer =>
      _$LineSeriesSettingsSerializer();
}

class _$LineSeriesSettingsSerializer
    implements PrimitiveSerializer<LineSeriesSettings> {
  @override
  final Iterable<Type> types = const [LineSeriesSettings, _$LineSeriesSettings];

  @override
  final String wireName = r'LineSeriesSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LineSeriesSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showLine != null) {
      yield r'showLine';
      yield serializers.serialize(
        object.showLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(bool),
      );
    }
    if (object.stepType != null) {
      yield r'stepType';
      yield serializers.serialize(
        object.stepType,
        specifiedType: const FullType(LineSeriesStepType),
      );
    }
    if (object.smooth != null) {
      yield r'smooth';
      yield serializers.serialize(
        object.smooth,
        specifiedType: const FullType(bool),
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
    if (object.showPoints != null) {
      yield r'showPoints';
      yield serializers.serialize(
        object.showPoints,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showPointLabel != null) {
      yield r'showPointLabel';
      yield serializers.serialize(
        object.showPointLabel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pointLabelPosition != null) {
      yield r'pointLabelPosition';
      yield serializers.serialize(
        object.pointLabelPosition,
        specifiedType: const FullType(ChartLabelPosition),
      );
    }
    if (object.pointLabelFont != null) {
      yield r'pointLabelFont';
      yield serializers.serialize(
        object.pointLabelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.pointLabelColor != null) {
      yield r'pointLabelColor';
      yield serializers.serialize(
        object.pointLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.enablePointLabelBackground != null) {
      yield r'enablePointLabelBackground';
      yield serializers.serialize(
        object.enablePointLabelBackground,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pointLabelBackground != null) {
      yield r'pointLabelBackground';
      yield serializers.serialize(
        object.pointLabelBackground,
        specifiedType: const FullType(String),
      );
    }
    if (object.pointShape != null) {
      yield r'pointShape';
      yield serializers.serialize(
        object.pointShape,
        specifiedType: const FullType(ChartShape),
      );
    }
    if (object.pointSize != null) {
      yield r'pointSize';
      yield serializers.serialize(
        object.pointSize,
        specifiedType: const FullType(double),
      );
    }
    if (object.fillAreaSettings != null) {
      yield r'fillAreaSettings';
      yield serializers.serialize(
        object.fillAreaSettings,
        specifiedType: const FullType(ChartFillSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LineSeriesSettings object, {
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
    required LineSeriesSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showLine':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showLine = valueDes;
          break;
        case r'step':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'stepType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LineSeriesStepType),
                  )
                  as LineSeriesStepType?;
          if (valueDes == null) continue;
          result.stepType = valueDes;
          break;
        case r'smooth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.smooth = valueDes;
          break;
        case r'lineType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChartLineType),
                  )
                  as ChartLineType?;
          if (valueDes == null) continue;
          result.lineType = valueDes;
          break;
        case r'lineWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.lineWidth = valueDes;
          break;
        case r'showPoints':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showPoints = valueDes;
          break;
        case r'showPointLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showPointLabel = valueDes;
          break;
        case r'pointLabelPosition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChartLabelPosition),
                  )
                  as ChartLabelPosition?;
          if (valueDes == null) continue;
          result.pointLabelPosition = valueDes;
          break;
        case r'pointLabelFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.pointLabelFont.replace(valueDes);
          break;
        case r'pointLabelColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.pointLabelColor = valueDes;
          break;
        case r'enablePointLabelBackground':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enablePointLabelBackground = valueDes;
          break;
        case r'pointLabelBackground':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.pointLabelBackground = valueDes;
          break;
        case r'pointShape':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChartShape),
                  )
                  as ChartShape?;
          if (valueDes == null) continue;
          result.pointShape = valueDes;
          break;
        case r'pointSize':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.pointSize = valueDes;
          break;
        case r'fillAreaSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChartFillSettings),
                  )
                  as ChartFillSettings?;
          if (valueDes == null) continue;
          result.fillAreaSettings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LineSeriesSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LineSeriesSettingsBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/chart_fill_settings.dart';
import 'package:thingsboard_client/src/model/chart_label_position.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bar_series_settings.g.dart';

/// BarSeriesSettings
///
/// Properties:
/// * [showBorder]
/// * [borderWidth]
/// * [borderRadius]
/// * [barWidth]
/// * [showLabel]
/// * [labelPosition]
/// * [labelFont]
/// * [labelColor]
/// * [enableLabelBackground]
/// * [labelBackground]
/// * [backgroundSettings]
@BuiltValue()
abstract class BarSeriesSettings
    implements Built<BarSeriesSettings, BarSeriesSettingsBuilder> {
  @BuiltValueField(wireName: r'showBorder')
  bool? get showBorder;

  @BuiltValueField(wireName: r'borderWidth')
  double? get borderWidth;

  @BuiltValueField(wireName: r'borderRadius')
  double? get borderRadius;

  @BuiltValueField(wireName: r'barWidth')
  double? get barWidth;

  @BuiltValueField(wireName: r'showLabel')
  bool? get showLabel;

  @BuiltValueField(wireName: r'labelPosition')
  ChartLabelPosition? get labelPosition;
  // enum labelPositionEnum {  top,  bottom,  };

  @BuiltValueField(wireName: r'labelFont')
  Font? get labelFont;

  @BuiltValueField(wireName: r'labelColor')
  String? get labelColor;

  @BuiltValueField(wireName: r'enableLabelBackground')
  bool? get enableLabelBackground;

  @BuiltValueField(wireName: r'labelBackground')
  String? get labelBackground;

  @BuiltValueField(wireName: r'backgroundSettings')
  ChartFillSettings? get backgroundSettings;

  BarSeriesSettings._();

  factory BarSeriesSettings([void updates(BarSeriesSettingsBuilder b)]) =
      _$BarSeriesSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BarSeriesSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BarSeriesSettings> get serializer =>
      _$BarSeriesSettingsSerializer();
}

class _$BarSeriesSettingsSerializer
    implements PrimitiveSerializer<BarSeriesSettings> {
  @override
  final Iterable<Type> types = const [BarSeriesSettings, _$BarSeriesSettings];

  @override
  final String wireName = r'BarSeriesSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BarSeriesSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showBorder != null) {
      yield r'showBorder';
      yield serializers.serialize(
        object.showBorder,
        specifiedType: const FullType(bool),
      );
    }
    if (object.borderWidth != null) {
      yield r'borderWidth';
      yield serializers.serialize(
        object.borderWidth,
        specifiedType: const FullType(double),
      );
    }
    if (object.borderRadius != null) {
      yield r'borderRadius';
      yield serializers.serialize(
        object.borderRadius,
        specifiedType: const FullType(double),
      );
    }
    if (object.barWidth != null) {
      yield r'barWidth';
      yield serializers.serialize(
        object.barWidth,
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
        specifiedType: const FullType(ChartLabelPosition),
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
    if (object.backgroundSettings != null) {
      yield r'backgroundSettings';
      yield serializers.serialize(
        object.backgroundSettings,
        specifiedType: const FullType(ChartFillSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BarSeriesSettings object, {
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
    required BarSeriesSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showBorder':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showBorder = valueDes;
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
        case r'borderRadius':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.borderRadius = valueDes;
          break;
        case r'barWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.barWidth = valueDes;
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
        case r'labelPosition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChartLabelPosition),
                  )
                  as ChartLabelPosition?;
          if (valueDes == null) continue;
          result.labelPosition = valueDes;
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
        case r'enableLabelBackground':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enableLabelBackground = valueDes;
          break;
        case r'labelBackground':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.labelBackground = valueDes;
          break;
        case r'backgroundSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChartFillSettings),
                  )
                  as ChartFillSettings?;
          if (valueDes == null) continue;
          result.backgroundSettings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BarSeriesSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BarSeriesSettingsBuilder();
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

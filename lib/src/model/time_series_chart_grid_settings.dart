// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_chart_grid_settings.g.dart';

/// TimeSeriesChartGridSettings
///
/// Properties:
/// * [show_]
/// * [backgroundColor]
/// * [borderWidth]
/// * [borderColor]
@BuiltValue()
abstract class TimeSeriesChartGridSettings
    implements
        Built<TimeSeriesChartGridSettings, TimeSeriesChartGridSettingsBuilder> {
  @BuiltValueField(wireName: r'show')
  bool? get show_;

  @BuiltValueField(wireName: r'backgroundColor')
  String? get backgroundColor;

  @BuiltValueField(wireName: r'borderWidth')
  double? get borderWidth;

  @BuiltValueField(wireName: r'borderColor')
  String? get borderColor;

  TimeSeriesChartGridSettings._();

  factory TimeSeriesChartGridSettings([
    void updates(TimeSeriesChartGridSettingsBuilder b),
  ]) = _$TimeSeriesChartGridSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartGridSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartGridSettings> get serializer =>
      _$TimeSeriesChartGridSettingsSerializer();
}

class _$TimeSeriesChartGridSettingsSerializer
    implements PrimitiveSerializer<TimeSeriesChartGridSettings> {
  @override
  final Iterable<Type> types = const [
    TimeSeriesChartGridSettings,
    _$TimeSeriesChartGridSettings,
  ];

  @override
  final String wireName = r'TimeSeriesChartGridSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartGridSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.show_ != null) {
      yield r'show';
      yield serializers.serialize(
        object.show_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.backgroundColor != null) {
      yield r'backgroundColor';
      yield serializers.serialize(
        object.backgroundColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.borderWidth != null) {
      yield r'borderWidth';
      yield serializers.serialize(
        object.borderWidth,
        specifiedType: const FullType(double),
      );
    }
    if (object.borderColor != null) {
      yield r'borderColor';
      yield serializers.serialize(
        object.borderColor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartGridSettings object, {
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
    required TimeSeriesChartGridSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'show':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.show_ = valueDes;
          break;
        case r'backgroundColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.backgroundColor = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartGridSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartGridSettingsBuilder();
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

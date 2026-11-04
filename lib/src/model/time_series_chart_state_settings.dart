// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/time_series_chart_state_source_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_chart_state_settings.g.dart';

/// TimeSeriesChartStateSettings
///
/// Properties:
/// * [label] 
/// * [value] 
/// * [sourceType] 
/// * [sourceValue] - A value representing the any type (object or primitive)
/// * [sourceRangeFrom] 
/// * [sourceRangeTo] 
@BuiltValue()
abstract class TimeSeriesChartStateSettings implements Built<TimeSeriesChartStateSettings, TimeSeriesChartStateSettingsBuilder> {
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'value')
  double? get value;

  @BuiltValueField(wireName: r'sourceType')
  TimeSeriesChartStateSourceType? get sourceType;
  // enum sourceTypeEnum {  constant,  range,  };

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'sourceValue')
  JsonObject? get sourceValue;

  @BuiltValueField(wireName: r'sourceRangeFrom')
  double? get sourceRangeFrom;

  @BuiltValueField(wireName: r'sourceRangeTo')
  double? get sourceRangeTo;

  TimeSeriesChartStateSettings._();

  factory TimeSeriesChartStateSettings([void updates(TimeSeriesChartStateSettingsBuilder b)]) = _$TimeSeriesChartStateSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartStateSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartStateSettings> get serializer => _$TimeSeriesChartStateSettingsSerializer();
}

class _$TimeSeriesChartStateSettingsSerializer implements PrimitiveSerializer<TimeSeriesChartStateSettings> {
  @override
  final Iterable<Type> types = const [TimeSeriesChartStateSettings, _$TimeSeriesChartStateSettings];

  @override
  final String wireName = r'TimeSeriesChartStateSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartStateSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(TimeSeriesChartStateSourceType),
      );
    }
    if (object.sourceValue != null) {
      yield r'sourceValue';
      yield serializers.serialize(
        object.sourceValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.sourceRangeFrom != null) {
      yield r'sourceRangeFrom';
      yield serializers.serialize(
        object.sourceRangeFrom,
        specifiedType: const FullType(double),
      );
    }
    if (object.sourceRangeTo != null) {
      yield r'sourceRangeTo';
      yield serializers.serialize(
        object.sourceRangeTo,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartStateSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeSeriesChartStateSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'sourceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimeSeriesChartStateSourceType),
          ) as TimeSeriesChartStateSourceType?;
          if (valueDes == null) continue;
          result.sourceType = valueDes;
          break;
        case r'sourceValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.sourceValue = valueDes;
          break;
        case r'sourceRangeFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.sourceRangeFrom = valueDes;
          break;
        case r'sourceRangeTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.sourceRangeTo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartStateSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartStateSettingsBuilder();
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



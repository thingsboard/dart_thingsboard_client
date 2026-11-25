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

part 'time_series_chart_bar_width.g.dart';

/// TimeSeriesChartBarWidth
///
/// Properties:
/// * [relative]
/// * [relativeWidth]
/// * [absoluteWidth]
@BuiltValue()
abstract class TimeSeriesChartBarWidth
    implements Built<TimeSeriesChartBarWidth, TimeSeriesChartBarWidthBuilder> {
  @BuiltValueField(wireName: r'relative')
  bool? get relative;

  @BuiltValueField(wireName: r'relativeWidth')
  double? get relativeWidth;

  @BuiltValueField(wireName: r'absoluteWidth')
  double? get absoluteWidth;

  TimeSeriesChartBarWidth._();

  factory TimeSeriesChartBarWidth([
    void updates(TimeSeriesChartBarWidthBuilder b),
  ]) = _$TimeSeriesChartBarWidth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartBarWidthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartBarWidth> get serializer =>
      _$TimeSeriesChartBarWidthSerializer();
}

class _$TimeSeriesChartBarWidthSerializer
    implements PrimitiveSerializer<TimeSeriesChartBarWidth> {
  @override
  final Iterable<Type> types = const [
    TimeSeriesChartBarWidth,
    _$TimeSeriesChartBarWidth,
  ];

  @override
  final String wireName = r'TimeSeriesChartBarWidth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartBarWidth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.relative != null) {
      yield r'relative';
      yield serializers.serialize(
        object.relative,
        specifiedType: const FullType(bool),
      );
    }
    if (object.relativeWidth != null) {
      yield r'relativeWidth';
      yield serializers.serialize(
        object.relativeWidth,
        specifiedType: const FullType(double),
      );
    }
    if (object.absoluteWidth != null) {
      yield r'absoluteWidth';
      yield serializers.serialize(
        object.absoluteWidth,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartBarWidth object, {
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
    required TimeSeriesChartBarWidthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'relative':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.relative = valueDes;
          break;
        case r'relativeWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.relativeWidth = valueDes;
          break;
        case r'absoluteWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.absoluteWidth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartBarWidth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartBarWidthBuilder();
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

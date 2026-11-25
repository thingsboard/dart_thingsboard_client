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

part 'time_series_chart_bar_width_settings.g.dart';

/// TimeSeriesChartBarWidthSettings
///
/// Properties:
/// * [barGap]
/// * [intervalGap]
@BuiltValue()
abstract class TimeSeriesChartBarWidthSettings
    implements
        Built<
          TimeSeriesChartBarWidthSettings,
          TimeSeriesChartBarWidthSettingsBuilder
        > {
  @BuiltValueField(wireName: r'barGap')
  double? get barGap;

  @BuiltValueField(wireName: r'intervalGap')
  double? get intervalGap;

  TimeSeriesChartBarWidthSettings._();

  factory TimeSeriesChartBarWidthSettings([
    void updates(TimeSeriesChartBarWidthSettingsBuilder b),
  ]) = _$TimeSeriesChartBarWidthSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartBarWidthSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartBarWidthSettings> get serializer =>
      _$TimeSeriesChartBarWidthSettingsSerializer();
}

class _$TimeSeriesChartBarWidthSettingsSerializer
    implements PrimitiveSerializer<TimeSeriesChartBarWidthSettings> {
  @override
  final Iterable<Type> types = const [
    TimeSeriesChartBarWidthSettings,
    _$TimeSeriesChartBarWidthSettings,
  ];

  @override
  final String wireName = r'TimeSeriesChartBarWidthSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartBarWidthSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.barGap != null) {
      yield r'barGap';
      yield serializers.serialize(
        object.barGap,
        specifiedType: const FullType(double),
      );
    }
    if (object.intervalGap != null) {
      yield r'intervalGap';
      yield serializers.serialize(
        object.intervalGap,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartBarWidthSettings object, {
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
    required TimeSeriesChartBarWidthSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'barGap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.barGap = valueDes;
          break;
        case r'intervalGap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.intervalGap = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartBarWidthSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartBarWidthSettingsBuilder();
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

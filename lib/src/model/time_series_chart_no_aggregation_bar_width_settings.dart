// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/time_series_chart_bar_width.dart';
import 'package:thingsboard_client/src/model/time_series_chart_no_aggregation_bar_width_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_chart_no_aggregation_bar_width_settings.g.dart';

/// TimeSeriesChartNoAggregationBarWidthSettings
///
/// Properties:
/// * [strategy] 
/// * [groupWidth] 
/// * [barWidth] 
@BuiltValue()
abstract class TimeSeriesChartNoAggregationBarWidthSettings implements Built<TimeSeriesChartNoAggregationBarWidthSettings, TimeSeriesChartNoAggregationBarWidthSettingsBuilder> {
  @BuiltValueField(wireName: r'strategy')
  TimeSeriesChartNoAggregationBarWidthStrategy? get strategy;
  // enum strategyEnum {  group,  separate,  };

  @BuiltValueField(wireName: r'groupWidth')
  TimeSeriesChartBarWidth? get groupWidth;

  @BuiltValueField(wireName: r'barWidth')
  TimeSeriesChartBarWidth? get barWidth;

  TimeSeriesChartNoAggregationBarWidthSettings._();

  factory TimeSeriesChartNoAggregationBarWidthSettings([void updates(TimeSeriesChartNoAggregationBarWidthSettingsBuilder b)]) = _$TimeSeriesChartNoAggregationBarWidthSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartNoAggregationBarWidthSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartNoAggregationBarWidthSettings> get serializer => _$TimeSeriesChartNoAggregationBarWidthSettingsSerializer();
}

class _$TimeSeriesChartNoAggregationBarWidthSettingsSerializer implements PrimitiveSerializer<TimeSeriesChartNoAggregationBarWidthSettings> {
  @override
  final Iterable<Type> types = const [TimeSeriesChartNoAggregationBarWidthSettings, _$TimeSeriesChartNoAggregationBarWidthSettings];

  @override
  final String wireName = r'TimeSeriesChartNoAggregationBarWidthSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartNoAggregationBarWidthSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.strategy != null) {
      yield r'strategy';
      yield serializers.serialize(
        object.strategy,
        specifiedType: const FullType(TimeSeriesChartNoAggregationBarWidthStrategy),
      );
    }
    if (object.groupWidth != null) {
      yield r'groupWidth';
      yield serializers.serialize(
        object.groupWidth,
        specifiedType: const FullType(TimeSeriesChartBarWidth),
      );
    }
    if (object.barWidth != null) {
      yield r'barWidth';
      yield serializers.serialize(
        object.barWidth,
        specifiedType: const FullType(TimeSeriesChartBarWidth),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartNoAggregationBarWidthSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeSeriesChartNoAggregationBarWidthSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'strategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimeSeriesChartNoAggregationBarWidthStrategy),
          ) as TimeSeriesChartNoAggregationBarWidthStrategy?;
          if (valueDes == null) continue;
          result.strategy = valueDes;
          break;
        case r'groupWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimeSeriesChartBarWidth),
          ) as TimeSeriesChartBarWidth?;
          if (valueDes == null) continue;
          result.groupWidth.replace(valueDes);
          break;
        case r'barWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimeSeriesChartBarWidth),
          ) as TimeSeriesChartBarWidth?;
          if (valueDes == null) continue;
          result.barWidth.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartNoAggregationBarWidthSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartNoAggregationBarWidthSettingsBuilder();
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



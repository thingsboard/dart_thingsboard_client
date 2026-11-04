// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/custom_interval.dart';
import 'package:thingsboard_client/src/model/week_interval.dart';
import 'package:thingsboard_client/src/model/hour_interval.dart';
import 'package:thingsboard_client/src/model/day_interval.dart';
import 'package:thingsboard_client/src/model/year_interval.dart';
import 'package:thingsboard_client/src/model/week_sun_sat_interval.dart';
import 'package:thingsboard_client/src/model/month_interval.dart';
import 'package:thingsboard_client/src/model/quarter_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agg_interval.g.dart';

/// AggInterval
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AggInterval  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'CUSTOM': CustomInterval,
    r'DAY': DayInterval,
    r'HOUR': HourInterval,
    r'MONTH': MonthInterval,
    r'QUARTER': QuarterInterval,
    r'WEEK': WeekInterval,
    r'WEEK_SUN_SAT': WeekSunSatInterval,
    r'YEAR': YearInterval,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AggInterval> get serializer => _$AggIntervalSerializer();
}

extension AggIntervalDiscriminatorExt on AggInterval {
    String? get discriminatorValue {
        if (this is CustomInterval) {
            return r'CUSTOM';
        }
        if (this is DayInterval) {
            return r'DAY';
        }
        if (this is HourInterval) {
            return r'HOUR';
        }
        if (this is MonthInterval) {
            return r'MONTH';
        }
        if (this is QuarterInterval) {
            return r'QUARTER';
        }
        if (this is WeekInterval) {
            return r'WEEK';
        }
        if (this is WeekSunSatInterval) {
            return r'WEEK_SUN_SAT';
        }
        if (this is YearInterval) {
            return r'YEAR';
        }
        return null;
    }
}
extension AggIntervalBuilderDiscriminatorExt on AggIntervalBuilder {
    String? get discriminatorValue {
        if (this is CustomIntervalBuilder) {
            return r'CUSTOM';
        }
        if (this is DayIntervalBuilder) {
            return r'DAY';
        }
        if (this is HourIntervalBuilder) {
            return r'HOUR';
        }
        if (this is MonthIntervalBuilder) {
            return r'MONTH';
        }
        if (this is QuarterIntervalBuilder) {
            return r'QUARTER';
        }
        if (this is WeekIntervalBuilder) {
            return r'WEEK';
        }
        if (this is WeekSunSatIntervalBuilder) {
            return r'WEEK_SUN_SAT';
        }
        if (this is YearIntervalBuilder) {
            return r'YEAR';
        }
        return null;
    }
}

class _$AggIntervalSerializer implements PrimitiveSerializer<AggInterval> {
  @override
  final Iterable<Type> types = const [AggInterval];

  @override
  final String wireName = r'AggInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AggInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CustomInterval) {
      return serializers.serialize(object, specifiedType: FullType(CustomInterval))!;
    }
    if (object is DayInterval) {
      return serializers.serialize(object, specifiedType: FullType(DayInterval))!;
    }
    if (object is HourInterval) {
      return serializers.serialize(object, specifiedType: FullType(HourInterval))!;
    }
    if (object is MonthInterval) {
      return serializers.serialize(object, specifiedType: FullType(MonthInterval))!;
    }
    if (object is QuarterInterval) {
      return serializers.serialize(object, specifiedType: FullType(QuarterInterval))!;
    }
    if (object is WeekInterval) {
      return serializers.serialize(object, specifiedType: FullType(WeekInterval))!;
    }
    if (object is WeekSunSatInterval) {
      return serializers.serialize(object, specifiedType: FullType(WeekSunSatInterval))!;
    }
    if (object is YearInterval) {
      return serializers.serialize(object, specifiedType: FullType(YearInterval))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AggInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AggInterval.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'CUSTOM':
        return serializers.deserialize(serialized, specifiedType: FullType(CustomInterval)) as CustomInterval;
      case r'DAY':
        return serializers.deserialize(serialized, specifiedType: FullType(DayInterval)) as DayInterval;
      case r'HOUR':
        return serializers.deserialize(serialized, specifiedType: FullType(HourInterval)) as HourInterval;
      case r'MONTH':
        return serializers.deserialize(serialized, specifiedType: FullType(MonthInterval)) as MonthInterval;
      case r'QUARTER':
        return serializers.deserialize(serialized, specifiedType: FullType(QuarterInterval)) as QuarterInterval;
      case r'WEEK':
        return serializers.deserialize(serialized, specifiedType: FullType(WeekInterval)) as WeekInterval;
      case r'WEEK_SUN_SAT':
        return serializers.deserialize(serialized, specifiedType: FullType(WeekSunSatInterval)) as WeekSunSatInterval;
      case r'YEAR':
        return serializers.deserialize(serialized, specifiedType: FullType(YearInterval)) as YearInterval;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AggInterval)) as $AggInterval;
    }
  }
}


/// a concrete implementation of [AggInterval], since [AggInterval] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AggInterval implements AggInterval, Built<$AggInterval, $AggIntervalBuilder> {
  $AggInterval._();

  factory $AggInterval([void Function($AggIntervalBuilder)? updates]) = _$$AggInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AggIntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AggInterval> get serializer => _$$AggIntervalSerializer();
}

class _$$AggIntervalSerializer implements PrimitiveSerializer<$AggInterval> {
  @override
  final Iterable<Type> types = const [$AggInterval, _$$AggInterval];

  @override
  final String wireName = r'$AggInterval';

  @override
  Object serialize(
    Serializers serializers,
    $AggInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AggInterval))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AggIntervalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AggInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AggIntervalBuilder();
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


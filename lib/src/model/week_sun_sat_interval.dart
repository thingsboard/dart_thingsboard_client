// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agg_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'week_sun_sat_interval.g.dart';

/// WeekSunSatInterval
///
/// Properties:
/// * [type]
/// * [tz]
/// * [offsetSec]
@BuiltValue()
abstract class WeekSunSatInterval
    implements
        AggInterval,
        Built<WeekSunSatInterval, WeekSunSatIntervalBuilder> {
  @BuiltValueField(wireName: r'tz')
  String get tz;

  @BuiltValueField(wireName: r'offsetSec')
  int? get offsetSec;

  WeekSunSatInterval._();

  factory WeekSunSatInterval([void updates(WeekSunSatIntervalBuilder b)]) =
      _$WeekSunSatInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeekSunSatIntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeekSunSatInterval> get serializer =>
      _$WeekSunSatIntervalSerializer();
}

class _$WeekSunSatIntervalSerializer
    implements PrimitiveSerializer<WeekSunSatInterval> {
  @override
  final Iterable<Type> types = const [WeekSunSatInterval, _$WeekSunSatInterval];

  @override
  final String wireName = r'WeekSunSatInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeekSunSatInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.offsetSec != null) {
      yield r'offsetSec';
      yield serializers.serialize(
        object.offsetSec,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'tz';
    yield serializers.serialize(
      object.tz,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WeekSunSatInterval object, {
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
    required WeekSunSatIntervalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'offsetSec':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.offsetSec = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'tz':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tz = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeekSunSatInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeekSunSatIntervalBuilder();
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

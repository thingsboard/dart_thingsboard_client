// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/time_unit.dart';
import 'package:thingsboard_client/src/model/alarm_rule_key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/alarm_condition_value_long.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'no_data_filter_predicate.g.dart';

/// NoDataFilterPredicate
///
/// Properties:
/// * [type]
/// * [unit]
/// * [duration]
@BuiltValue()
abstract class NoDataFilterPredicate
    implements
        AlarmRuleKeyFilterPredicate,
        Built<NoDataFilterPredicate, NoDataFilterPredicateBuilder> {
  @BuiltValueField(wireName: r'duration')
  AlarmConditionValueLong get duration;

  @BuiltValueField(wireName: r'unit')
  TimeUnit get unit;
  // enum unitEnum {  NANOSECONDS,  MICROSECONDS,  MILLISECONDS,  SECONDS,  MINUTES,  HOURS,  DAYS,  };

  NoDataFilterPredicate._();

  factory NoDataFilterPredicate([
    void updates(NoDataFilterPredicateBuilder b),
  ]) = _$NoDataFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NoDataFilterPredicateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NoDataFilterPredicate> get serializer =>
      _$NoDataFilterPredicateSerializer();
}

class _$NoDataFilterPredicateSerializer
    implements PrimitiveSerializer<NoDataFilterPredicate> {
  @override
  final Iterable<Type> types = const [
    NoDataFilterPredicate,
    _$NoDataFilterPredicate,
  ];

  @override
  final String wireName = r'NoDataFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NoDataFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'duration';
    yield serializers.serialize(
      object.duration,
      specifiedType: const FullType(AlarmConditionValueLong),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(TimeUnit),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NoDataFilterPredicate object, {
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
    required NoDataFilterPredicateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'duration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlarmConditionValueLong),
                  )
                  as AlarmConditionValueLong;
          result.duration.replace(valueDes);
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
        case r'unit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TimeUnit),
                  )
                  as TimeUnit;
          result.unit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NoDataFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoDataFilterPredicateBuilder();
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

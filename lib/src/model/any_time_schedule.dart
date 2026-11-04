// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_schedule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'any_time_schedule.g.dart';

/// AnyTimeSchedule
///
/// Properties:
/// * [type]
@BuiltValue()
abstract class AnyTimeSchedule
    implements AlarmSchedule, Built<AnyTimeSchedule, AnyTimeScheduleBuilder> {
  AnyTimeSchedule._();

  factory AnyTimeSchedule([void updates(AnyTimeScheduleBuilder b)]) =
      _$AnyTimeSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnyTimeScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnyTimeSchedule> get serializer =>
      _$AnyTimeScheduleSerializer();
}

class _$AnyTimeScheduleSerializer
    implements PrimitiveSerializer<AnyTimeSchedule> {
  @override
  final Iterable<Type> types = const [AnyTimeSchedule, _$AnyTimeSchedule];

  @override
  final String wireName = r'AnyTimeSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnyTimeSchedule object, {
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
    AnyTimeSchedule object, {
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
    required AnyTimeScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  AnyTimeSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnyTimeScheduleBuilder();
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

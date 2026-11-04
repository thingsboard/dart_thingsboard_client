// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_schedule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'specific_time_schedule.g.dart';

/// SpecificTimeSchedule
///
/// Properties:
/// * [type] 
/// * [timezone] 
/// * [daysOfWeek] 
/// * [startsOn] 
/// * [endsOn] 
@BuiltValue()
abstract class SpecificTimeSchedule implements AlarmSchedule, Built<SpecificTimeSchedule, SpecificTimeScheduleBuilder> {
  @BuiltValueField(wireName: r'endsOn')
  int? get endsOn;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'daysOfWeek')
  BuiltSet<int>? get daysOfWeek;

  @BuiltValueField(wireName: r'startsOn')
  int? get startsOn;

  SpecificTimeSchedule._();

  factory SpecificTimeSchedule([void updates(SpecificTimeScheduleBuilder b)]) = _$SpecificTimeSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecificTimeScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecificTimeSchedule> get serializer => _$SpecificTimeScheduleSerializer();
}

class _$SpecificTimeScheduleSerializer implements PrimitiveSerializer<SpecificTimeSchedule> {
  @override
  final Iterable<Type> types = const [SpecificTimeSchedule, _$SpecificTimeSchedule];

  @override
  final String wireName = r'SpecificTimeSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecificTimeSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.endsOn != null) {
      yield r'endsOn';
      yield serializers.serialize(
        object.endsOn,
        specifiedType: const FullType(int),
      );
    }
    if (object.daysOfWeek != null) {
      yield r'daysOfWeek';
      yield serializers.serialize(
        object.daysOfWeek,
        specifiedType: const FullType(BuiltSet, [FullType(int)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.startsOn != null) {
      yield r'startsOn';
      yield serializers.serialize(
        object.startsOn,
        specifiedType: const FullType(int),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecificTimeSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecificTimeScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endsOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.endsOn = valueDes;
          break;
        case r'daysOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
          ) as BuiltSet<int>?;
          if (valueDes == null) continue;
          result.daysOfWeek.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'startsOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.startsOn = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecificTimeSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecificTimeScheduleBuilder();
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



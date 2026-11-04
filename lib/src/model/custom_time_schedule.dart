// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_schedule.dart';
import 'package:thingsboard_client/src/model/custom_time_schedule_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_time_schedule.g.dart';

/// CustomTimeSchedule
///
/// Properties:
/// * [type]
/// * [timezone]
/// * [items]
@BuiltValue()
abstract class CustomTimeSchedule
    implements
        AlarmSchedule,
        Built<CustomTimeSchedule, CustomTimeScheduleBuilder> {
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'items')
  BuiltList<CustomTimeScheduleItem>? get items;

  CustomTimeSchedule._();

  factory CustomTimeSchedule([void updates(CustomTimeScheduleBuilder b)]) =
      _$CustomTimeSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomTimeScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomTimeSchedule> get serializer =>
      _$CustomTimeScheduleSerializer();
}

class _$CustomTimeScheduleSerializer
    implements PrimitiveSerializer<CustomTimeSchedule> {
  @override
  final Iterable<Type> types = const [CustomTimeSchedule, _$CustomTimeSchedule];

  @override
  final String wireName = r'CustomTimeSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomTimeSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [
          FullType(CustomTimeScheduleItem),
        ]),
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
    CustomTimeSchedule object, {
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
    required CustomTimeScheduleBuilder result,
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
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CustomTimeScheduleItem),
                    ]),
                  )
                  as BuiltList<CustomTimeScheduleItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  CustomTimeSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomTimeScheduleBuilder();
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

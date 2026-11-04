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

part 'custom_time_schedule_item.g.dart';

/// CustomTimeScheduleItem
///
/// Properties:
/// * [enabled] 
/// * [dayOfWeek] 
/// * [startsOn] 
/// * [endsOn] 
@BuiltValue()
abstract class CustomTimeScheduleItem implements Built<CustomTimeScheduleItem, CustomTimeScheduleItemBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'dayOfWeek')
  int? get dayOfWeek;

  @BuiltValueField(wireName: r'startsOn')
  int? get startsOn;

  @BuiltValueField(wireName: r'endsOn')
  int? get endsOn;

  CustomTimeScheduleItem._();

  factory CustomTimeScheduleItem([void updates(CustomTimeScheduleItemBuilder b)]) = _$CustomTimeScheduleItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomTimeScheduleItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomTimeScheduleItem> get serializer => _$CustomTimeScheduleItemSerializer();
}

class _$CustomTimeScheduleItemSerializer implements PrimitiveSerializer<CustomTimeScheduleItem> {
  @override
  final Iterable<Type> types = const [CustomTimeScheduleItem, _$CustomTimeScheduleItem];

  @override
  final String wireName = r'CustomTimeScheduleItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomTimeScheduleItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dayOfWeek != null) {
      yield r'dayOfWeek';
      yield serializers.serialize(
        object.dayOfWeek,
        specifiedType: const FullType(int),
      );
    }
    if (object.startsOn != null) {
      yield r'startsOn';
      yield serializers.serialize(
        object.startsOn,
        specifiedType: const FullType(int),
      );
    }
    if (object.endsOn != null) {
      yield r'endsOn';
      yield serializers.serialize(
        object.endsOn,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomTimeScheduleItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomTimeScheduleItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'dayOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dayOfWeek = valueDes;
          break;
        case r'startsOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.startsOn = valueDes;
          break;
        case r'endsOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.endsOn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomTimeScheduleItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomTimeScheduleItemBuilder();
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



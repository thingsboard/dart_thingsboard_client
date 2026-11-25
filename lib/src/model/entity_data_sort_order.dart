// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_key.dart';
import 'package:thingsboard_client/src/model/direction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_data_sort_order.g.dart';

/// EntityDataSortOrder
///
/// Properties:
/// * [key]
/// * [direction]
@BuiltValue()
abstract class EntityDataSortOrder
    implements Built<EntityDataSortOrder, EntityDataSortOrderBuilder> {
  @BuiltValueField(wireName: r'key')
  EntityKey? get key;

  @BuiltValueField(wireName: r'direction')
  Direction? get direction;
  // enum directionEnum {  ASC,  DESC,  };

  EntityDataSortOrder._();

  factory EntityDataSortOrder([void updates(EntityDataSortOrderBuilder b)]) =
      _$EntityDataSortOrder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityDataSortOrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityDataSortOrder> get serializer =>
      _$EntityDataSortOrderSerializer();
}

class _$EntityDataSortOrderSerializer
    implements PrimitiveSerializer<EntityDataSortOrder> {
  @override
  final Iterable<Type> types = const [
    EntityDataSortOrder,
    _$EntityDataSortOrder,
  ];

  @override
  final String wireName = r'EntityDataSortOrder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityDataSortOrder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(EntityKey),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(Direction),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityDataSortOrder object, {
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
    required EntityDataSortOrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityKey),
                  )
                  as EntityKey?;
          if (valueDes == null) continue;
          result.key.replace(valueDes);
          break;
        case r'direction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Direction),
                  )
                  as Direction?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityDataSortOrder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityDataSortOrderBuilder();
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

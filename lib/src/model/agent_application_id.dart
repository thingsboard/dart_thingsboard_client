// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_application_id.g.dart';

/// AgentApplicationId
///
/// Properties:
/// * [entityType]
/// * [id] - ID of the entity, time-based UUID v1
@BuiltValue()
abstract class AgentApplicationId
    implements EntityId, Built<AgentApplicationId, AgentApplicationIdBuilder> {
  AgentApplicationId._();

  factory AgentApplicationId([void updates(AgentApplicationIdBuilder b)]) =
      _$AgentApplicationId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentApplicationIdBuilder b) =>
      b..entityType = EntityType.AGENT_APPLICATION;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentApplicationId> get serializer =>
      _$AgentApplicationIdSerializer();
}

class _$AgentApplicationIdSerializer
    implements PrimitiveSerializer<AgentApplicationId> {
  @override
  final Iterable<Type> types = const [AgentApplicationId, _$AgentApplicationId];

  @override
  final String wireName = r'AgentApplicationId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentApplicationId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(EntityType),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentApplicationId object, {
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
    required AgentApplicationIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityType),
                  )
                  as EntityType;
          result.entityType = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentApplicationId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentApplicationIdBuilder();
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

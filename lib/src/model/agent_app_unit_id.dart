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

part 'agent_app_unit_id.g.dart';

/// AgentAppUnitId
///
/// Properties:
/// * [entityType]
/// * [id] - ID of the entity, time-based UUID v1
@BuiltValue()
abstract class AgentAppUnitId
    implements EntityId, Built<AgentAppUnitId, AgentAppUnitIdBuilder> {
  AgentAppUnitId._();

  factory AgentAppUnitId([void updates(AgentAppUnitIdBuilder b)]) =
      _$AgentAppUnitId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppUnitIdBuilder b) =>
      b..entityType = EntityType.AGENT_APP_UNIT;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppUnitId> get serializer =>
      _$AgentAppUnitIdSerializer();
}

class _$AgentAppUnitIdSerializer
    implements PrimitiveSerializer<AgentAppUnitId> {
  @override
  final Iterable<Type> types = const [AgentAppUnitId, _$AgentAppUnitId];

  @override
  final String wireName = r'AgentAppUnitId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppUnitId object, {
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
    AgentAppUnitId object, {
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
    required AgentAppUnitIdBuilder result,
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
  AgentAppUnitId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppUnitIdBuilder();
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

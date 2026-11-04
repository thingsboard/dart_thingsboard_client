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

part 'agent_profile_id.g.dart';

/// AgentProfileId
///
/// Properties:
/// * [entityType] 
/// * [id] - ID of the entity, time-based UUID v1
@BuiltValue()
abstract class AgentProfileId implements EntityId, Built<AgentProfileId, AgentProfileIdBuilder> {
  AgentProfileId._();

  factory AgentProfileId([void updates(AgentProfileIdBuilder b)]) = _$AgentProfileId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentProfileIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentProfileId> get serializer => _$AgentProfileIdSerializer();
}

class _$AgentProfileIdSerializer implements PrimitiveSerializer<AgentProfileId> {
  @override
  final Iterable<Type> types = const [AgentProfileId, _$AgentProfileId];

  @override
  final String wireName = r'AgentProfileId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentProfileId object, {
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
    AgentProfileId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentProfileIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityType),
          ) as EntityType;
          result.entityType = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AgentProfileId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentProfileIdBuilder();
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



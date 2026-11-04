// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/relation_type_group.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_relation.g.dart';

/// A JSON value representing the relation.
///
/// Properties:
/// * [from] - JSON object with [from] Entity Id.
/// * [to] - JSON object with [to] Entity Id.
/// * [type] - String value of relation type.
/// * [typeGroup] - Represents the type group of the relation.
/// * [version] 
/// * [additionalInfo] - Additional parameters of the relation.
@BuiltValue()
abstract class EntityRelation implements Built<EntityRelation, EntityRelationBuilder> {
  /// JSON object with [from] Entity Id.
  @BuiltValueField(wireName: r'from')
  EntityId get from;

  /// JSON object with [to] Entity Id.
  @BuiltValueField(wireName: r'to')
  EntityId get to;

  /// String value of relation type.
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Represents the type group of the relation.
  @BuiltValueField(wireName: r'typeGroup')
  RelationTypeGroup get typeGroup;
  // enum typeGroupEnum {  COMMON,  DASHBOARD,  FROM_ENTITY_GROUP,  RULE_CHAIN,  RULE_NODE,  EDGE,  EDGE_AUTO_ASSIGN_RULE_CHAIN,  AGENT,  };

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Additional parameters of the relation.
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  EntityRelation._();

  factory EntityRelation([void updates(EntityRelationBuilder b)]) = _$EntityRelation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityRelationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityRelation> get serializer => _$EntityRelationSerializer();
}

class _$EntityRelationSerializer implements PrimitiveSerializer<EntityRelation> {
  @override
  final Iterable<Type> types = const [EntityRelation, _$EntityRelation];

  @override
  final String wireName = r'EntityRelation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(EntityId),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(EntityId),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'typeGroup';
    yield serializers.serialize(
      object.typeGroup,
      specifiedType: const FullType(RelationTypeGroup),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityRelationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityId),
          ) as EntityId;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityId),
          ) as EntityId;
          result.to = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'typeGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RelationTypeGroup),
          ) as RelationTypeGroup;
          result.typeGroup = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'additionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityRelation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityRelationBuilder();
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



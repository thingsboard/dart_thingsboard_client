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

part 'alias_entity_id.g.dart';

/// AliasEntityId
///
/// Properties:
/// * [entityType] - Entity type: an EntityType value, or an AliasEntityType value resolved for the current user
/// * [id] - ID of the entity, time-based UUID v1. Required for an entity type; for CURRENT_CUSTOMER, the customer used when the current user does not belong to one
@BuiltValue()
abstract class AliasEntityId
    implements Built<AliasEntityId, AliasEntityIdBuilder> {
  /// Entity type: an EntityType value, or an AliasEntityType value resolved for the current user
  @BuiltValueField(wireName: r'entityType')
  String get entityType;

  /// ID of the entity, time-based UUID v1. Required for an entity type; for CURRENT_CUSTOMER, the customer used when the current user does not belong to one
  @BuiltValueField(wireName: r'id')
  String? get id;

  AliasEntityId._();

  factory AliasEntityId([void updates(AliasEntityIdBuilder b)]) =
      _$AliasEntityId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AliasEntityIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AliasEntityId> get serializer =>
      _$AliasEntityIdSerializer();
}

class _$AliasEntityIdSerializer implements PrimitiveSerializer<AliasEntityId> {
  @override
  final Iterable<Type> types = const [AliasEntityId, _$AliasEntityId];

  @override
  final String wireName = r'AliasEntityId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AliasEntityId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AliasEntityId object, {
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
    required AliasEntityIdBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.entityType = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
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
  AliasEntityId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AliasEntityIdBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_info.g.dart';

/// EntityInfo
///
/// Properties:
/// * [id] - JSON object with the entity Id.
/// * [name] - Entity Name
@BuiltValue()
abstract class EntityInfo implements Built<EntityInfo, EntityInfoBuilder> {
  /// JSON object with the entity Id.
  @BuiltValueField(wireName: r'id')
  EntityId? get id;

  /// Entity Name
  @BuiltValueField(wireName: r'name')
  String? get name;

  EntityInfo._();

  factory EntityInfo([void updates(EntityInfoBuilder b)]) = _$EntityInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityInfo> get serializer => _$EntityInfoSerializer();
}

class _$EntityInfoSerializer implements PrimitiveSerializer<EntityInfo> {
  @override
  final Iterable<Type> types = const [EntityInfo, _$EntityInfo];

  @override
  final String wireName = r'EntityInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityInfo object, {
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
    required EntityInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityInfoBuilder();
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

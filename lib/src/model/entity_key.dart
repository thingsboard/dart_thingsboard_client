// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_key_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_key.g.dart';

/// EntityKey
///
/// Properties:
/// * [type] 
/// * [key] 
@BuiltValue()
abstract class EntityKey implements Built<EntityKey, EntityKeyBuilder> {
  @BuiltValueField(wireName: r'type')
  EntityKeyType? get type;
  // enum typeEnum {  ATTRIBUTE,  CLIENT_ATTRIBUTE,  SHARED_ATTRIBUTE,  SERVER_ATTRIBUTE,  TIME_SERIES,  ENTITY_FIELD,  ALARM_FIELD,  };

  @BuiltValueField(wireName: r'key')
  String? get key;

  EntityKey._();

  factory EntityKey([void updates(EntityKeyBuilder b)]) = _$EntityKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityKey> get serializer => _$EntityKeySerializer();
}

class _$EntityKeySerializer implements PrimitiveSerializer<EntityKey> {
  @override
  final Iterable<Type> types = const [EntityKey, _$EntityKey];

  @override
  final String wireName = r'EntityKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(EntityKeyType),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityKeyType),
          ) as EntityKeyType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityKeyBuilder();
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



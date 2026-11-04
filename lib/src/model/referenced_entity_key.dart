// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/attribute_scope.dart';
import 'package:thingsboard_client/src/model/argument_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'referenced_entity_key.g.dart';

/// ReferencedEntityKey
///
/// Properties:
/// * [key] 
/// * [type] 
/// * [scope] 
@BuiltValue()
abstract class ReferencedEntityKey implements Built<ReferencedEntityKey, ReferencedEntityKeyBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'type')
  ArgumentType? get type;
  // enum typeEnum {  TS_LATEST,  ATTRIBUTE,  TS_ROLLING,  };

  @BuiltValueField(wireName: r'scope')
  AttributeScope? get scope;
  // enum scopeEnum {  CLIENT_SCOPE,  SERVER_SCOPE,  SHARED_SCOPE,  };

  ReferencedEntityKey._();

  factory ReferencedEntityKey([void updates(ReferencedEntityKeyBuilder b)]) = _$ReferencedEntityKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferencedEntityKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferencedEntityKey> get serializer => _$ReferencedEntityKeySerializer();
}

class _$ReferencedEntityKeySerializer implements PrimitiveSerializer<ReferencedEntityKey> {
  @override
  final Iterable<Type> types = const [ReferencedEntityKey, _$ReferencedEntityKey];

  @override
  final String wireName = r'ReferencedEntityKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferencedEntityKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ArgumentType),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(AttributeScope),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferencedEntityKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReferencedEntityKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ArgumentType),
          ) as ArgumentType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AttributeScope),
          ) as AttributeScope?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferencedEntityKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferencedEntityKeyBuilder();
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



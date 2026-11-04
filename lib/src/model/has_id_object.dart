// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'has_id_object.g.dart';

/// HasIdObject
///
/// Properties:
/// * [id] 
@BuiltValue()
abstract class HasIdObject implements Built<HasIdObject, HasIdObjectBuilder> {
  @BuiltValueField(wireName: r'id')
  JsonObject? get id;

  HasIdObject._();

  factory HasIdObject([void updates(HasIdObjectBuilder b)]) = _$HasIdObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HasIdObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HasIdObject> get serializer => _$HasIdObjectSerializer();
}

class _$HasIdObjectSerializer implements PrimitiveSerializer<HasIdObject> {
  @override
  final Iterable<Type> types = const [HasIdObject, _$HasIdObject];

  @override
  final String wireName = r'HasIdObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HasIdObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HasIdObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HasIdObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
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
  HasIdObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HasIdObjectBuilder();
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



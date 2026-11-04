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

part 'entity.g.dart';

/// Entity
///
/// Properties:
/// * [used]
/// * [activeCount]
/// * [totalCount]
@BuiltValue()
abstract class Entity implements Built<Entity, EntityBuilder> {
  @BuiltValueField(wireName: r'used')
  bool? get used;

  @BuiltValueField(wireName: r'activeCount')
  int? get activeCount;

  @BuiltValueField(wireName: r'totalCount')
  int? get totalCount;

  Entity._();

  factory Entity([void updates(EntityBuilder b)]) = _$Entity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Entity> get serializer => _$EntitySerializer();
}

class _$EntitySerializer implements PrimitiveSerializer<Entity> {
  @override
  final Iterable<Type> types = const [Entity, _$Entity];

  @override
  final String wireName = r'Entity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Entity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.used != null) {
      yield r'used';
      yield serializers.serialize(
        object.used,
        specifiedType: const FullType(bool),
      );
    }
    if (object.activeCount != null) {
      yield r'activeCount';
      yield serializers.serialize(
        object.activeCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalCount != null) {
      yield r'totalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Entity object, {
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
    required EntityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'used':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.used = valueDes;
          break;
        case r'activeCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.activeCount = valueDes;
          break;
        case r'totalCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Entity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityBuilder();
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

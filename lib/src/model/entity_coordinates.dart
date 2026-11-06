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

part 'entity_coordinates.g.dart';

/// EntityCoordinates
///
/// Properties:
/// * [latitudeKeyName]
/// * [longitudeKeyName]
@BuiltValue()
abstract class EntityCoordinates
    implements Built<EntityCoordinates, EntityCoordinatesBuilder> {
  @BuiltValueField(wireName: r'latitudeKeyName')
  String get latitudeKeyName;

  @BuiltValueField(wireName: r'longitudeKeyName')
  String get longitudeKeyName;

  EntityCoordinates._();

  factory EntityCoordinates([void updates(EntityCoordinatesBuilder b)]) =
      _$EntityCoordinates;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityCoordinatesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityCoordinates> get serializer =>
      _$EntityCoordinatesSerializer();
}

class _$EntityCoordinatesSerializer
    implements PrimitiveSerializer<EntityCoordinates> {
  @override
  final Iterable<Type> types = const [EntityCoordinates, _$EntityCoordinates];

  @override
  final String wireName = r'EntityCoordinates';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityCoordinates object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'latitudeKeyName';
    yield serializers.serialize(
      object.latitudeKeyName,
      specifiedType: const FullType(String),
    );
    yield r'longitudeKeyName';
    yield serializers.serialize(
      object.longitudeKeyName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityCoordinates object, {
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
    required EntityCoordinatesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'latitudeKeyName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.latitudeKeyName = valueDes;
          break;
        case r'longitudeKeyName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.longitudeKeyName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityCoordinates deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityCoordinatesBuilder();
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

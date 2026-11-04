// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_search_direction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relation_path_level.g.dart';

/// RelationPathLevel
///
/// Properties:
/// * [direction]
/// * [relationType]
@BuiltValue()
abstract class RelationPathLevel
    implements Built<RelationPathLevel, RelationPathLevelBuilder> {
  @BuiltValueField(wireName: r'direction')
  EntitySearchDirection get direction;
  // enum directionEnum {  FROM,  TO,  };

  @BuiltValueField(wireName: r'relationType')
  String get relationType;

  RelationPathLevel._();

  factory RelationPathLevel([void updates(RelationPathLevelBuilder b)]) =
      _$RelationPathLevel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationPathLevelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RelationPathLevel> get serializer =>
      _$RelationPathLevelSerializer();
}

class _$RelationPathLevelSerializer
    implements PrimitiveSerializer<RelationPathLevel> {
  @override
  final Iterable<Type> types = const [RelationPathLevel, _$RelationPathLevel];

  @override
  final String wireName = r'RelationPathLevel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelationPathLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(EntitySearchDirection),
    );
    yield r'relationType';
    yield serializers.serialize(
      object.relationType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RelationPathLevel object, {
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
    required RelationPathLevelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'direction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntitySearchDirection),
                  )
                  as EntitySearchDirection;
          result.direction = valueDes;
          break;
        case r'relationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.relationType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelationPathLevel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationPathLevelBuilder();
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

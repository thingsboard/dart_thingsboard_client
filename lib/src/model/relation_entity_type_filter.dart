// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relation_entity_type_filter.g.dart';

/// RelationEntityTypeFilter
///
/// Properties:
/// * [relationType] - Type of the relation between root entity and other entity (e.g. 'Contains' or 'Manages').
/// * [entityTypes] - Array of entity types to filter the related entities (e.g. 'DEVICE', 'ASSET').
/// * [negate] - Negate relation type between root entity and other entity.
@BuiltValue()
abstract class RelationEntityTypeFilter implements Built<RelationEntityTypeFilter, RelationEntityTypeFilterBuilder> {
  /// Type of the relation between root entity and other entity (e.g. 'Contains' or 'Manages').
  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  /// Array of entity types to filter the related entities (e.g. 'DEVICE', 'ASSET').
  @BuiltValueField(wireName: r'entityTypes')
  BuiltList<EntityType>? get entityTypes;

  /// Negate relation type between root entity and other entity.
  @BuiltValueField(wireName: r'negate')
  bool? get negate;

  RelationEntityTypeFilter._();

  factory RelationEntityTypeFilter([void updates(RelationEntityTypeFilterBuilder b)]) = _$RelationEntityTypeFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationEntityTypeFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RelationEntityTypeFilter> get serializer => _$RelationEntityTypeFilterSerializer();
}

class _$RelationEntityTypeFilterSerializer implements PrimitiveSerializer<RelationEntityTypeFilter> {
  @override
  final Iterable<Type> types = const [RelationEntityTypeFilter, _$RelationEntityTypeFilter];

  @override
  final String wireName = r'RelationEntityTypeFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelationEntityTypeFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.relationType != null) {
      yield r'relationType';
      yield serializers.serialize(
        object.relationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityTypes != null) {
      yield r'entityTypes';
      yield serializers.serialize(
        object.entityTypes,
        specifiedType: const FullType(BuiltList, [FullType(EntityType)]),
      );
    }
    if (object.negate != null) {
      yield r'negate';
      yield serializers.serialize(
        object.negate,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RelationEntityTypeFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RelationEntityTypeFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'relationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relationType = valueDes;
          break;
        case r'entityTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EntityType)]),
          ) as BuiltList<EntityType>?;
          if (valueDes == null) continue;
          result.entityTypes.replace(valueDes);
          break;
        case r'negate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.negate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelationEntityTypeFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationEntityTypeFilterBuilder();
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



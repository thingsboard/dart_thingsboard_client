// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/relations_search_parameters.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/relation_entity_type_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_relations_query.g.dart';

/// A JSON value representing the entity relations query object.
///
/// Properties:
/// * [parameters] - Main search parameters.
/// * [filters] - Main filters.
@BuiltValue()
abstract class EntityRelationsQuery
    implements Built<EntityRelationsQuery, EntityRelationsQueryBuilder> {
  /// Main search parameters.
  @BuiltValueField(wireName: r'parameters')
  RelationsSearchParameters? get parameters;

  /// Main filters.
  @BuiltValueField(wireName: r'filters')
  BuiltList<RelationEntityTypeFilter>? get filters;

  EntityRelationsQuery._();

  factory EntityRelationsQuery([void updates(EntityRelationsQueryBuilder b)]) =
      _$EntityRelationsQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityRelationsQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityRelationsQuery> get serializer =>
      _$EntityRelationsQuerySerializer();
}

class _$EntityRelationsQuerySerializer
    implements PrimitiveSerializer<EntityRelationsQuery> {
  @override
  final Iterable<Type> types = const [
    EntityRelationsQuery,
    _$EntityRelationsQuery,
  ];

  @override
  final String wireName = r'EntityRelationsQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityRelationsQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(RelationsSearchParameters),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(BuiltList, [
          FullType(RelationEntityTypeFilter),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityRelationsQuery object, {
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
    required EntityRelationsQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parameters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RelationsSearchParameters,
                    ),
                  )
                  as RelationsSearchParameters?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'filters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RelationEntityTypeFilter),
                    ]),
                  )
                  as BuiltList<RelationEntityTypeFilter>?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityRelationsQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityRelationsQueryBuilder();
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

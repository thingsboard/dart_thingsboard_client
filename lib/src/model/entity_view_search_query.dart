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
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_view_search_query.g.dart';

/// The entity view search query JSON
///
/// Properties:
/// * [parameters] - Main search parameters.
/// * [relationType] - Type of the relation between root entity and device (e.g. 'Contains' or 'Manages').
/// * [entityViewTypes] - Array of entity view types to filter the related entities (e.g. 'Temperature Sensor', 'Smoke Sensor').
@BuiltValue()
abstract class EntityViewSearchQuery implements Built<EntityViewSearchQuery, EntityViewSearchQueryBuilder> {
  /// Main search parameters.
  @BuiltValueField(wireName: r'parameters')
  RelationsSearchParameters? get parameters;

  /// Type of the relation between root entity and device (e.g. 'Contains' or 'Manages').
  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  /// Array of entity view types to filter the related entities (e.g. 'Temperature Sensor', 'Smoke Sensor').
  @BuiltValueField(wireName: r'entityViewTypes')
  BuiltList<String>? get entityViewTypes;

  EntityViewSearchQuery._();

  factory EntityViewSearchQuery([void updates(EntityViewSearchQueryBuilder b)]) = _$EntityViewSearchQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityViewSearchQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityViewSearchQuery> get serializer => _$EntityViewSearchQuerySerializer();
}

class _$EntityViewSearchQuerySerializer implements PrimitiveSerializer<EntityViewSearchQuery> {
  @override
  final Iterable<Type> types = const [EntityViewSearchQuery, _$EntityViewSearchQuery];

  @override
  final String wireName = r'EntityViewSearchQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityViewSearchQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(RelationsSearchParameters),
      );
    }
    if (object.relationType != null) {
      yield r'relationType';
      yield serializers.serialize(
        object.relationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityViewTypes != null) {
      yield r'entityViewTypes';
      yield serializers.serialize(
        object.entityViewTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityViewSearchQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityViewSearchQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RelationsSearchParameters),
          ) as RelationsSearchParameters?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'relationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relationType = valueDes;
          break;
        case r'entityViewTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.entityViewTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityViewSearchQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityViewSearchQueryBuilder();
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



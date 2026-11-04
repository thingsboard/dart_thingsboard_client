// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alias_entity_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_search_direction.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edge_search_query_filter.g.dart';

/// EdgeSearchQueryFilter
///
/// Properties:
/// * [type] 
/// * [rootEntity] 
/// * [relationType] 
/// * [direction] 
/// * [maxLevel] 
/// * [fetchLastLevelOnly] 
/// * [rootStateEntity] 
/// * [defaultStateEntity] 
/// * [edgeTypes] 
@BuiltValue()
abstract class EdgeSearchQueryFilter implements EntityFilter, Built<EdgeSearchQueryFilter, EdgeSearchQueryFilterBuilder> {
  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  @BuiltValueField(wireName: r'maxLevel')
  int? get maxLevel;

  @BuiltValueField(wireName: r'fetchLastLevelOnly')
  bool? get fetchLastLevelOnly;

  @BuiltValueField(wireName: r'defaultStateEntity')
  AliasEntityId? get defaultStateEntity;

  @BuiltValueField(wireName: r'edgeTypes')
  BuiltList<String>? get edgeTypes;

  @BuiltValueField(wireName: r'rootStateEntity')
  bool? get rootStateEntity;

  @BuiltValueField(wireName: r'rootEntity')
  AliasEntityId? get rootEntity;

  @BuiltValueField(wireName: r'direction')
  EntitySearchDirection? get direction;
  // enum directionEnum {  FROM,  TO,  };

  EdgeSearchQueryFilter._();

  factory EdgeSearchQueryFilter([void updates(EdgeSearchQueryFilterBuilder b)]) = _$EdgeSearchQueryFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeSearchQueryFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeSearchQueryFilter> get serializer => _$EdgeSearchQueryFilterSerializer();
}

class _$EdgeSearchQueryFilterSerializer implements PrimitiveSerializer<EdgeSearchQueryFilter> {
  @override
  final Iterable<Type> types = const [EdgeSearchQueryFilter, _$EdgeSearchQueryFilter];

  @override
  final String wireName = r'EdgeSearchQueryFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeSearchQueryFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.relationType != null) {
      yield r'relationType';
      yield serializers.serialize(
        object.relationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxLevel != null) {
      yield r'maxLevel';
      yield serializers.serialize(
        object.maxLevel,
        specifiedType: const FullType(int),
      );
    }
    if (object.fetchLastLevelOnly != null) {
      yield r'fetchLastLevelOnly';
      yield serializers.serialize(
        object.fetchLastLevelOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultStateEntity != null) {
      yield r'defaultStateEntity';
      yield serializers.serialize(
        object.defaultStateEntity,
        specifiedType: const FullType(AliasEntityId),
      );
    }
    if (object.edgeTypes != null) {
      yield r'edgeTypes';
      yield serializers.serialize(
        object.edgeTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.rootStateEntity != null) {
      yield r'rootStateEntity';
      yield serializers.serialize(
        object.rootStateEntity,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.rootEntity != null) {
      yield r'rootEntity';
      yield serializers.serialize(
        object.rootEntity,
        specifiedType: const FullType(AliasEntityId),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(EntitySearchDirection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdgeSearchQueryFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdgeSearchQueryFilterBuilder result,
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
        case r'maxLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxLevel = valueDes;
          break;
        case r'fetchLastLevelOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fetchLastLevelOnly = valueDes;
          break;
        case r'defaultStateEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AliasEntityId),
          ) as AliasEntityId?;
          if (valueDes == null) continue;
          result.defaultStateEntity.replace(valueDes);
          break;
        case r'edgeTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.edgeTypes.replace(valueDes);
          break;
        case r'rootStateEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.rootStateEntity = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'rootEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AliasEntityId),
          ) as AliasEntityId?;
          if (valueDes == null) continue;
          result.rootEntity.replace(valueDes);
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntitySearchDirection),
          ) as EntitySearchDirection?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdgeSearchQueryFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeSearchQueryFilterBuilder();
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



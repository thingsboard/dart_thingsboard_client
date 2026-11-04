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
import 'package:thingsboard_client/src/model/key_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'available_entity_keys_v2.g.dart';

/// Contains unique time series and attribute key names discovered from entities matching a query, optionally including a sample value for each key.
///
/// Properties:
/// * [totalEntities] - Total number of entities that matched the query filter.
/// * [entityTypes] - Set of entity types found among the matched entities.
/// * [timeseries] - List of unique time series keys available on the matched entities, sorted alphabetically. Omitted when timeseries keys were not requested.
/// * [attributes] - Map of attribute scope to the list of unique attribute keys available on the matched entities. Only scopes supported by the matched entity types are included. Omitted when attribute keys were not requested or when none of the requested scopes apply to the matched entity types.
@BuiltValue()
abstract class AvailableEntityKeysV2 implements Built<AvailableEntityKeysV2, AvailableEntityKeysV2Builder> {
  /// Total number of entities that matched the query filter.
  @BuiltValueField(wireName: r'totalEntities')
  int get totalEntities;

  /// Set of entity types found among the matched entities.
  @BuiltValueField(wireName: r'entityTypes')
  BuiltSet<EntityType> get entityTypes;

  /// List of unique time series keys available on the matched entities, sorted alphabetically. Omitted when timeseries keys were not requested.
  @BuiltValueField(wireName: r'timeseries')
  BuiltList<KeyInfo>? get timeseries;

  /// Map of attribute scope to the list of unique attribute keys available on the matched entities. Only scopes supported by the matched entity types are included. Omitted when attribute keys were not requested or when none of the requested scopes apply to the matched entity types.
  @BuiltValueField(wireName: r'attributes')
  BuiltMap<String, BuiltList<KeyInfo>>? get attributes;

  AvailableEntityKeysV2._();

  factory AvailableEntityKeysV2([void updates(AvailableEntityKeysV2Builder b)]) = _$AvailableEntityKeysV2;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvailableEntityKeysV2Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvailableEntityKeysV2> get serializer => _$AvailableEntityKeysV2Serializer();
}

class _$AvailableEntityKeysV2Serializer implements PrimitiveSerializer<AvailableEntityKeysV2> {
  @override
  final Iterable<Type> types = const [AvailableEntityKeysV2, _$AvailableEntityKeysV2];

  @override
  final String wireName = r'AvailableEntityKeysV2';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvailableEntityKeysV2 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totalEntities';
    yield serializers.serialize(
      object.totalEntities,
      specifiedType: const FullType(int),
    );
    yield r'entityTypes';
    yield serializers.serialize(
      object.entityTypes,
      specifiedType: const FullType(BuiltSet, [FullType(EntityType)]),
    );
    if (object.timeseries != null) {
      yield r'timeseries';
      yield serializers.serialize(
        object.timeseries,
        specifiedType: const FullType(BuiltList, [FullType(KeyInfo)]),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(KeyInfo)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AvailableEntityKeysV2 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AvailableEntityKeysV2Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalEntities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalEntities = valueDes;
          break;
        case r'entityTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(EntityType)]),
          ) as BuiltSet<EntityType>;
          result.entityTypes.replace(valueDes);
          break;
        case r'timeseries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(KeyInfo)]),
          ) as BuiltList<KeyInfo>?;
          if (valueDes == null) continue;
          result.timeseries.replace(valueDes);
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(KeyInfo)])]),
          ) as BuiltMap<String, BuiltList<KeyInfo>>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AvailableEntityKeysV2 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailableEntityKeysV2Builder();
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



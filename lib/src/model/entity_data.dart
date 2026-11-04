// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ts_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/comparison_ts_value.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_data.g.dart';

/// EntityData
///
/// Properties:
/// * [entityId] 
/// * [readAttrs] 
/// * [readTs] 
/// * [latest] 
/// * [timeseries] 
/// * [aggLatest] 
@BuiltValue()
abstract class EntityData implements Built<EntityData, EntityDataBuilder> {
  @BuiltValueField(wireName: r'entityId')
  EntityId? get entityId;

  @BuiltValueField(wireName: r'readAttrs')
  bool? get readAttrs;

  @BuiltValueField(wireName: r'readTs')
  bool? get readTs;

  @BuiltValueField(wireName: r'latest')
  BuiltMap<String, BuiltMap<String, TsValue>>? get latest;

  @BuiltValueField(wireName: r'timeseries')
  BuiltMap<String, BuiltList<TsValue>>? get timeseries;

  @BuiltValueField(wireName: r'aggLatest')
  BuiltMap<String, ComparisonTsValue>? get aggLatest;

  EntityData._();

  factory EntityData([void updates(EntityDataBuilder b)]) = _$EntityData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityData> get serializer => _$EntityDataSerializer();
}

class _$EntityDataSerializer implements PrimitiveSerializer<EntityData> {
  @override
  final Iterable<Type> types = const [EntityData, _$EntityData];

  @override
  final String wireName = r'EntityData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.readAttrs != null) {
      yield r'readAttrs';
      yield serializers.serialize(
        object.readAttrs,
        specifiedType: const FullType(bool),
      );
    }
    if (object.readTs != null) {
      yield r'readTs';
      yield serializers.serialize(
        object.readTs,
        specifiedType: const FullType(bool),
      );
    }
    if (object.latest != null) {
      yield r'latest';
      yield serializers.serialize(
        object.latest,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltMap, [FullType(String), FullType(TsValue)])]),
      );
    }
    if (object.timeseries != null) {
      yield r'timeseries';
      yield serializers.serialize(
        object.timeseries,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(TsValue)])]),
      );
    }
    if (object.aggLatest != null) {
      yield r'aggLatest';
      yield serializers.serialize(
        object.aggLatest,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonTsValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'readAttrs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.readAttrs = valueDes;
          break;
        case r'readTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.readTs = valueDes;
          break;
        case r'latest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltMap, [FullType(String), FullType(TsValue)])]),
          ) as BuiltMap<String, BuiltMap<String, TsValue>>?;
          if (valueDes == null) continue;
          result.latest.replace(valueDes);
          break;
        case r'timeseries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(TsValue)])]),
          ) as BuiltMap<String, BuiltList<TsValue>>?;
          if (valueDes == null) continue;
          result.timeseries.replace(valueDes);
          break;
        case r'aggLatest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(ComparisonTsValue)]),
          ) as BuiltMap<String, ComparisonTsValue>?;
          if (valueDes == null) continue;
          result.aggLatest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityDataBuilder();
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



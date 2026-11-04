// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/output.dart';
import 'package:thingsboard_client/src/model/relation_path_level.dart';
import 'package:thingsboard_client/src/model/calculated_field_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/argument.dart';
import 'package:thingsboard_client/src/model/agg_metric.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'related_entities_aggregation_calculated_field_configuration.g.dart';

/// RelatedEntitiesAggregationCalculatedFieldConfiguration
///
/// Properties:
/// * [output] 
/// * [type] 
/// * [relation] 
/// * [arguments] 
/// * [deduplicationIntervalInSec] 
/// * [metrics] 
/// * [useLatestTs] 
/// * [scheduledUpdateInterval] 
/// * [scheduledUpdateEnabled] 
@BuiltValue()
abstract class RelatedEntitiesAggregationCalculatedFieldConfiguration implements CalculatedFieldConfiguration, Built<RelatedEntitiesAggregationCalculatedFieldConfiguration, RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder> {
  @BuiltValueField(wireName: r'deduplicationIntervalInSec')
  int? get deduplicationIntervalInSec;

  @BuiltValueField(wireName: r'arguments')
  BuiltMap<String, Argument> get arguments;

  @BuiltValueField(wireName: r'scheduledUpdateEnabled')
  bool? get scheduledUpdateEnabled;

  @BuiltValueField(wireName: r'metrics')
  BuiltMap<String, AggMetric> get metrics;

  @BuiltValueField(wireName: r'scheduledUpdateInterval')
  int? get scheduledUpdateInterval;

  @BuiltValueField(wireName: r'useLatestTs')
  bool? get useLatestTs;

  @BuiltValueField(wireName: r'relation')
  RelationPathLevel get relation;

  RelatedEntitiesAggregationCalculatedFieldConfiguration._();

  factory RelatedEntitiesAggregationCalculatedFieldConfiguration([void updates(RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder b)]) = _$RelatedEntitiesAggregationCalculatedFieldConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RelatedEntitiesAggregationCalculatedFieldConfiguration> get serializer => _$RelatedEntitiesAggregationCalculatedFieldConfigurationSerializer();
}

class _$RelatedEntitiesAggregationCalculatedFieldConfigurationSerializer implements PrimitiveSerializer<RelatedEntitiesAggregationCalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [RelatedEntitiesAggregationCalculatedFieldConfiguration, _$RelatedEntitiesAggregationCalculatedFieldConfiguration];

  @override
  final String wireName = r'RelatedEntitiesAggregationCalculatedFieldConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelatedEntitiesAggregationCalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(Output),
      );
    }
    if (object.deduplicationIntervalInSec != null) {
      yield r'deduplicationIntervalInSec';
      yield serializers.serialize(
        object.deduplicationIntervalInSec,
        specifiedType: const FullType(int),
      );
    }
    yield r'arguments';
    yield serializers.serialize(
      object.arguments,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(Argument)]),
    );
    if (object.scheduledUpdateEnabled != null) {
      yield r'scheduledUpdateEnabled';
      yield serializers.serialize(
        object.scheduledUpdateEnabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'metrics';
    yield serializers.serialize(
      object.metrics,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(AggMetric)]),
    );
    if (object.scheduledUpdateInterval != null) {
      yield r'scheduledUpdateInterval';
      yield serializers.serialize(
        object.scheduledUpdateInterval,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.useLatestTs != null) {
      yield r'useLatestTs';
      yield serializers.serialize(
        object.useLatestTs,
        specifiedType: const FullType(bool),
      );
    }
    yield r'relation';
    yield serializers.serialize(
      object.relation,
      specifiedType: const FullType(RelationPathLevel),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RelatedEntitiesAggregationCalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'output':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Output),
          ) as Output?;
          if (valueDes == null) continue;
          result.output = valueDes;
          break;
        case r'deduplicationIntervalInSec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.deduplicationIntervalInSec = valueDes;
          break;
        case r'arguments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(Argument)]),
          ) as BuiltMap<String, Argument>;
          result.arguments.replace(valueDes);
          break;
        case r'scheduledUpdateEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduledUpdateEnabled = valueDes;
          break;
        case r'metrics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(AggMetric)]),
          ) as BuiltMap<String, AggMetric>;
          result.metrics.replace(valueDes);
          break;
        case r'scheduledUpdateInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.scheduledUpdateInterval = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'useLatestTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.useLatestTs = valueDes;
          break;
        case r'relation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RelationPathLevel),
          ) as RelationPathLevel;
          result.relation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelatedEntitiesAggregationCalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agg_interval.dart';
import 'package:thingsboard_client/src/model/output.dart';
import 'package:thingsboard_client/src/model/calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/watermark.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/argument.dart';
import 'package:thingsboard_client/src/model/agg_metric.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_aggregation_calculated_field_configuration.g.dart';

/// EntityAggregationCalculatedFieldConfiguration
///
/// Properties:
/// * [output]
/// * [type]
/// * [arguments]
/// * [metrics]
/// * [interval]
/// * [watermark]
/// * [produceIntermediateResult]
@BuiltValue()
abstract class EntityAggregationCalculatedFieldConfiguration
    implements
        CalculatedFieldConfiguration,
        Built<
          EntityAggregationCalculatedFieldConfiguration,
          EntityAggregationCalculatedFieldConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'watermark')
  Watermark? get watermark;

  @BuiltValueField(wireName: r'produceIntermediateResult')
  bool? get produceIntermediateResult;

  @BuiltValueField(wireName: r'arguments')
  BuiltMap<String, Argument> get arguments;

  @BuiltValueField(wireName: r'interval')
  AggInterval get interval;

  @BuiltValueField(wireName: r'metrics')
  BuiltMap<String, AggMetric> get metrics;

  EntityAggregationCalculatedFieldConfiguration._();

  factory EntityAggregationCalculatedFieldConfiguration([
    void updates(EntityAggregationCalculatedFieldConfigurationBuilder b),
  ]) = _$EntityAggregationCalculatedFieldConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    EntityAggregationCalculatedFieldConfigurationBuilder b,
  ) => b..type = r'ENTITY_AGGREGATION';

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityAggregationCalculatedFieldConfiguration>
  get serializer => _$EntityAggregationCalculatedFieldConfigurationSerializer();
}

class _$EntityAggregationCalculatedFieldConfigurationSerializer
    implements
        PrimitiveSerializer<EntityAggregationCalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [
    EntityAggregationCalculatedFieldConfiguration,
    _$EntityAggregationCalculatedFieldConfiguration,
  ];

  @override
  final String wireName = r'EntityAggregationCalculatedFieldConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityAggregationCalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(Output),
      );
    }
    if (object.watermark != null) {
      yield r'watermark';
      yield serializers.serialize(
        object.watermark,
        specifiedType: const FullType(Watermark),
      );
    }
    if (object.produceIntermediateResult != null) {
      yield r'produceIntermediateResult';
      yield serializers.serialize(
        object.produceIntermediateResult,
        specifiedType: const FullType(bool),
      );
    }
    yield r'arguments';
    yield serializers.serialize(
      object.arguments,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(Argument),
      ]),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(AggInterval),
    );
    yield r'metrics';
    yield serializers.serialize(
      object.metrics,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(AggMetric),
      ]),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityAggregationCalculatedFieldConfiguration object, {
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
    required EntityAggregationCalculatedFieldConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'output':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Output),
                  )
                  as Output?;
          if (valueDes == null) continue;
          result.output = valueDes;
          break;
        case r'watermark':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Watermark),
                  )
                  as Watermark?;
          if (valueDes == null) continue;
          result.watermark.replace(valueDes);
          break;
        case r'produceIntermediateResult':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.produceIntermediateResult = valueDes;
          break;
        case r'arguments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(Argument),
                    ]),
                  )
                  as BuiltMap<String, Argument>;
          result.arguments.replace(valueDes);
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AggInterval),
                  )
                  as AggInterval;
          result.interval = valueDes;
          break;
        case r'metrics':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(AggMetric),
                    ]),
                  )
                  as BuiltMap<String, AggMetric>;
          result.metrics.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityAggregationCalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityAggregationCalculatedFieldConfigurationBuilder();
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

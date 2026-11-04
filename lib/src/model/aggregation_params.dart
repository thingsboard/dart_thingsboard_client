// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/aggregation.dart';
import 'package:thingsboard_client/src/model/interval_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregation_params.g.dart';

/// AggregationParams
///
/// Properties:
/// * [aggregation] 
/// * [intervalType] 
/// * [tzId] 
/// * [interval] 
@BuiltValue()
abstract class AggregationParams implements Built<AggregationParams, AggregationParamsBuilder> {
  @BuiltValueField(wireName: r'aggregation')
  Aggregation? get aggregation;
  // enum aggregationEnum {  MIN,  MAX,  AVG,  SUM,  COUNT,  NONE,  };

  @BuiltValueField(wireName: r'intervalType')
  IntervalType? get intervalType;
  // enum intervalTypeEnum {  MILLISECONDS,  WEEK,  WEEK_ISO,  MONTH,  QUARTER,  };

  @BuiltValueField(wireName: r'tzId')
  String? get tzId;

  @BuiltValueField(wireName: r'interval')
  int? get interval;

  AggregationParams._();

  factory AggregationParams([void updates(AggregationParamsBuilder b)]) = _$AggregationParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregationParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggregationParams> get serializer => _$AggregationParamsSerializer();
}

class _$AggregationParamsSerializer implements PrimitiveSerializer<AggregationParams> {
  @override
  final Iterable<Type> types = const [AggregationParams, _$AggregationParams];

  @override
  final String wireName = r'AggregationParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggregationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.aggregation != null) {
      yield r'aggregation';
      yield serializers.serialize(
        object.aggregation,
        specifiedType: const FullType(Aggregation),
      );
    }
    if (object.intervalType != null) {
      yield r'intervalType';
      yield serializers.serialize(
        object.intervalType,
        specifiedType: const FullType(IntervalType),
      );
    }
    if (object.tzId != null) {
      yield r'tzId';
      yield serializers.serialize(
        object.tzId,
        specifiedType: const FullType(String),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AggregationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AggregationParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'aggregation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Aggregation),
          ) as Aggregation?;
          if (valueDes == null) continue;
          result.aggregation = valueDes;
          break;
        case r'intervalType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IntervalType),
          ) as IntervalType?;
          if (valueDes == null) continue;
          result.intervalType = valueDes;
          break;
        case r'tzId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tzId = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggregationParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregationParamsBuilder();
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



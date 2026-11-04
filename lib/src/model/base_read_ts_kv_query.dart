// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/aggregation_params.dart';
import 'package:thingsboard_client/src/model/aggregation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_read_ts_kv_query.g.dart';

/// BaseReadTsKvQuery
///
/// Properties:
/// * [id]
/// * [key]
/// * [startTs]
/// * [endTs]
/// * [aggParameters]
/// * [limit]
/// * [order]
/// * [aggregation]
/// * [interval]
@BuiltValue()
abstract class BaseReadTsKvQuery
    implements Built<BaseReadTsKvQuery, BaseReadTsKvQueryBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'startTs')
  int? get startTs;

  @BuiltValueField(wireName: r'endTs')
  int? get endTs;

  @BuiltValueField(wireName: r'aggParameters')
  AggregationParams? get aggParameters;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'order')
  String? get order;

  @BuiltValueField(wireName: r'aggregation')
  Aggregation? get aggregation;
  // enum aggregationEnum {  MIN,  MAX,  AVG,  SUM,  COUNT,  NONE,  };

  @BuiltValueField(wireName: r'interval')
  int? get interval;

  BaseReadTsKvQuery._();

  factory BaseReadTsKvQuery([void updates(BaseReadTsKvQueryBuilder b)]) =
      _$BaseReadTsKvQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseReadTsKvQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseReadTsKvQuery> get serializer =>
      _$BaseReadTsKvQuerySerializer();
}

class _$BaseReadTsKvQuerySerializer
    implements PrimitiveSerializer<BaseReadTsKvQuery> {
  @override
  final Iterable<Type> types = const [BaseReadTsKvQuery, _$BaseReadTsKvQuery];

  @override
  final String wireName = r'BaseReadTsKvQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseReadTsKvQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.startTs != null) {
      yield r'startTs';
      yield serializers.serialize(
        object.startTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.endTs != null) {
      yield r'endTs';
      yield serializers.serialize(
        object.endTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.aggParameters != null) {
      yield r'aggParameters';
      yield serializers.serialize(
        object.aggParameters,
        specifiedType: const FullType(AggregationParams),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(String),
      );
    }
    if (object.aggregation != null) {
      yield r'aggregation';
      yield serializers.serialize(
        object.aggregation,
        specifiedType: const FullType(Aggregation),
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
    BaseReadTsKvQuery object, {
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
    required BaseReadTsKvQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'startTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.startTs = valueDes;
          break;
        case r'endTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.endTs = valueDes;
          break;
        case r'aggParameters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AggregationParams),
                  )
                  as AggregationParams?;
          if (valueDes == null) continue;
          result.aggParameters.replace(valueDes);
          break;
        case r'limit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'order':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.order = valueDes;
          break;
        case r'aggregation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Aggregation),
                  )
                  as Aggregation?;
          if (valueDes == null) continue;
          result.aggregation = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
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
  BaseReadTsKvQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseReadTsKvQueryBuilder();
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

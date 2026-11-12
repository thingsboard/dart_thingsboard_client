// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agg_function.dart';
import 'package:thingsboard_client/src/model/agg_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agg_metric.g.dart';

/// AggMetric
///
/// Properties:
/// * [function_]
/// * [filter]
/// * [input]
/// * [defaultValue]
@BuiltValue()
abstract class AggMetric implements Built<AggMetric, AggMetricBuilder> {
  @BuiltValueField(wireName: r'function')
  AggFunction? get function_;
  // enum function_Enum {  MIN,  MAX,  SUM,  AVG,  COUNT,  COUNT_UNIQUE,  };

  @BuiltValueField(wireName: r'filter')
  String? get filter;

  @BuiltValueField(wireName: r'input')
  AggInput? get input;

  @BuiltValueField(wireName: r'defaultValue')
  double? get defaultValue;

  AggMetric._();

  factory AggMetric([void updates(AggMetricBuilder b)]) = _$AggMetric;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggMetricBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggMetric> get serializer => _$AggMetricSerializer();
}

class _$AggMetricSerializer implements PrimitiveSerializer<AggMetric> {
  @override
  final Iterable<Type> types = const [AggMetric, _$AggMetric];

  @override
  final String wireName = r'AggMetric';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggMetric object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.function_ != null) {
      yield r'function';
      yield serializers.serialize(
        object.function_,
        specifiedType: const FullType(AggFunction),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(String),
      );
    }
    if (object.input != null) {
      yield r'input';
      yield serializers.serialize(
        object.input,
        specifiedType: const FullType(AggInput),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AggMetric object, {
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
    required AggMetricBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'function':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AggFunction),
                  )
                  as AggFunction?;
          if (valueDes == null) continue;
          result.function_ = valueDes;
          break;
        case r'filter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.filter = valueDes;
          break;
        case r'input':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AggInput),
                  )
                  as AggInput?;
          if (valueDes == null) continue;
          result.input = valueDes;
          break;
        case r'defaultValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggMetric deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggMetricBuilder();
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

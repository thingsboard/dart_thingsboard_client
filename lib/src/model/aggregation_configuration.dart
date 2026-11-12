// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/aggregation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregation_configuration.g.dart';

/// AggregationConfiguration
///
/// Properties:
/// * [type]
/// * [limit]
@BuiltValue()
abstract class AggregationConfiguration
    implements
        Built<AggregationConfiguration, AggregationConfigurationBuilder> {
  @BuiltValueField(wireName: r'type')
  Aggregation? get type;
  // enum typeEnum {  MIN,  MAX,  AVG,  SUM,  COUNT,  NONE,  };

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  AggregationConfiguration._();

  factory AggregationConfiguration([
    void updates(AggregationConfigurationBuilder b),
  ]) = _$AggregationConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregationConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggregationConfiguration> get serializer =>
      _$AggregationConfigurationSerializer();
}

class _$AggregationConfigurationSerializer
    implements PrimitiveSerializer<AggregationConfiguration> {
  @override
  final Iterable<Type> types = const [
    AggregationConfiguration,
    _$AggregationConfiguration,
  ];

  @override
  final String wireName = r'AggregationConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggregationConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(Aggregation),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AggregationConfiguration object, {
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
    required AggregationConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Aggregation),
                  )
                  as Aggregation?;
          if (valueDes == null) continue;
          result.type = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggregationConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregationConfigurationBuilder();
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

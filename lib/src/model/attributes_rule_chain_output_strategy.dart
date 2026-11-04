// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/attributes_output_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attributes_rule_chain_output_strategy.g.dart';

/// AttributesRuleChainOutputStrategy
///
/// Properties:
/// * [type]
@BuiltValue()
abstract class AttributesRuleChainOutputStrategy
    implements
        AttributesOutputStrategy,
        Built<
          AttributesRuleChainOutputStrategy,
          AttributesRuleChainOutputStrategyBuilder
        > {
  AttributesRuleChainOutputStrategy._();

  factory AttributesRuleChainOutputStrategy([
    void updates(AttributesRuleChainOutputStrategyBuilder b),
  ]) = _$AttributesRuleChainOutputStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributesRuleChainOutputStrategyBuilder b) =>
      b..type = r'RULE_CHAIN';

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributesRuleChainOutputStrategy> get serializer =>
      _$AttributesRuleChainOutputStrategySerializer();
}

class _$AttributesRuleChainOutputStrategySerializer
    implements PrimitiveSerializer<AttributesRuleChainOutputStrategy> {
  @override
  final Iterable<Type> types = const [
    AttributesRuleChainOutputStrategy,
    _$AttributesRuleChainOutputStrategy,
  ];

  @override
  final String wireName = r'AttributesRuleChainOutputStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributesRuleChainOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributesRuleChainOutputStrategy object, {
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
    required AttributesRuleChainOutputStrategyBuilder result,
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
  AttributesRuleChainOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributesRuleChainOutputStrategyBuilder();
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

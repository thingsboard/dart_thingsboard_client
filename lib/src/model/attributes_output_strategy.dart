// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/attributes_rule_chain_output_strategy.dart';
import 'package:thingsboard_client/src/model/attributes_immediate_output_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attributes_output_strategy.g.dart';

/// AttributesOutputStrategy
///
/// Properties:
/// * [type]
@BuiltValue(instantiable: false)
abstract class AttributesOutputStrategy {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'IMMEDIATE': AttributesImmediateOutputStrategy,
    r'RULE_CHAIN': AttributesRuleChainOutputStrategy,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributesOutputStrategy> get serializer =>
      _$AttributesOutputStrategySerializer();
}

extension AttributesOutputStrategyDiscriminatorExt on AttributesOutputStrategy {
  String? get discriminatorValue {
    if (this is AttributesImmediateOutputStrategy) {
      return r'IMMEDIATE';
    }
    if (this is AttributesRuleChainOutputStrategy) {
      return r'RULE_CHAIN';
    }
    return null;
  }
}

extension AttributesOutputStrategyBuilderDiscriminatorExt
    on AttributesOutputStrategyBuilder {
  String? get discriminatorValue {
    if (this is AttributesImmediateOutputStrategyBuilder) {
      return r'IMMEDIATE';
    }
    if (this is AttributesRuleChainOutputStrategyBuilder) {
      return r'RULE_CHAIN';
    }
    return null;
  }
}

class _$AttributesOutputStrategySerializer
    implements PrimitiveSerializer<AttributesOutputStrategy> {
  @override
  final Iterable<Type> types = const [AttributesOutputStrategy];

  @override
  final String wireName = r'AttributesOutputStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributesOutputStrategy object, {
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
    AttributesOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AttributesImmediateOutputStrategy) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AttributesImmediateOutputStrategy),
      )!;
    }
    if (object is AttributesRuleChainOutputStrategy) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AttributesRuleChainOutputStrategy),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  AttributesOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          AttributesOutputStrategy.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'IMMEDIATE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AttributesImmediateOutputStrategy),
            )
            as AttributesImmediateOutputStrategy;
      case r'RULE_CHAIN':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AttributesRuleChainOutputStrategy),
            )
            as AttributesRuleChainOutputStrategy;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($AttributesOutputStrategy),
            )
            as $AttributesOutputStrategy;
    }
  }
}

/// a concrete implementation of [AttributesOutputStrategy], since [AttributesOutputStrategy] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AttributesOutputStrategy
    implements
        AttributesOutputStrategy,
        Built<$AttributesOutputStrategy, $AttributesOutputStrategyBuilder> {
  $AttributesOutputStrategy._();

  factory $AttributesOutputStrategy([
    void Function($AttributesOutputStrategyBuilder)? updates,
  ]) = _$$AttributesOutputStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AttributesOutputStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AttributesOutputStrategy> get serializer =>
      _$$AttributesOutputStrategySerializer();
}

class _$$AttributesOutputStrategySerializer
    implements PrimitiveSerializer<$AttributesOutputStrategy> {
  @override
  final Iterable<Type> types = const [
    $AttributesOutputStrategy,
    _$$AttributesOutputStrategy,
  ];

  @override
  final String wireName = r'$AttributesOutputStrategy';

  @override
  Object serialize(
    Serializers serializers,
    $AttributesOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(AttributesOutputStrategy),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttributesOutputStrategyBuilder result,
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
  $AttributesOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AttributesOutputStrategyBuilder();
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

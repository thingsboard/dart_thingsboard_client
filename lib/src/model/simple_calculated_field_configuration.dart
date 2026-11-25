// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/output.dart';
import 'package:thingsboard_client/src/model/calculated_field_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/argument.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_calculated_field_configuration.g.dart';

/// SimpleCalculatedFieldConfiguration
///
/// Properties:
/// * [output]
/// * [type]
/// * [arguments]
/// * [expression]
/// * [useLatestTs]
@BuiltValue()
abstract class SimpleCalculatedFieldConfiguration
    implements
        CalculatedFieldConfiguration,
        Built<
          SimpleCalculatedFieldConfiguration,
          SimpleCalculatedFieldConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueField(wireName: r'arguments')
  BuiltMap<String, Argument> get arguments;

  @BuiltValueField(wireName: r'useLatestTs')
  bool? get useLatestTs;

  SimpleCalculatedFieldConfiguration._();

  factory SimpleCalculatedFieldConfiguration([
    void updates(SimpleCalculatedFieldConfigurationBuilder b),
  ]) = _$SimpleCalculatedFieldConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SimpleCalculatedFieldConfigurationBuilder b) =>
      b..type = r'SIMPLE';

  @BuiltValueSerializer(custom: true)
  static Serializer<SimpleCalculatedFieldConfiguration> get serializer =>
      _$SimpleCalculatedFieldConfigurationSerializer();
}

class _$SimpleCalculatedFieldConfigurationSerializer
    implements PrimitiveSerializer<SimpleCalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [
    SimpleCalculatedFieldConfiguration,
    _$SimpleCalculatedFieldConfiguration,
  ];

  @override
  final String wireName = r'SimpleCalculatedFieldConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SimpleCalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(Output),
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
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SimpleCalculatedFieldConfiguration object, {
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
    required SimpleCalculatedFieldConfigurationBuilder result,
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
        case r'expression':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.expression = valueDes;
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
        case r'useLatestTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useLatestTs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SimpleCalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleCalculatedFieldConfigurationBuilder();
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

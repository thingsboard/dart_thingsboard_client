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
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'propagation_calculated_field_configuration.g.dart';

/// PropagationCalculatedFieldConfiguration
///
/// Properties:
/// * [output]
/// * [type]
/// * [arguments]
/// * [expression]
/// * [relation]
/// * [applyExpressionToResolvedArguments]
@BuiltValue()
abstract class PropagationCalculatedFieldConfiguration
    implements
        CalculatedFieldConfiguration,
        Built<
          PropagationCalculatedFieldConfiguration,
          PropagationCalculatedFieldConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueField(wireName: r'arguments')
  BuiltMap<String, Argument> get arguments;

  @BuiltValueField(wireName: r'applyExpressionToResolvedArguments')
  bool? get applyExpressionToResolvedArguments;

  @BuiltValueField(wireName: r'relation')
  RelationPathLevel get relation;

  PropagationCalculatedFieldConfiguration._();

  factory PropagationCalculatedFieldConfiguration([
    void updates(PropagationCalculatedFieldConfigurationBuilder b),
  ]) = _$PropagationCalculatedFieldConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropagationCalculatedFieldConfigurationBuilder b) =>
      b..type = r'PROPAGATION';

  @BuiltValueSerializer(custom: true)
  static Serializer<PropagationCalculatedFieldConfiguration> get serializer =>
      _$PropagationCalculatedFieldConfigurationSerializer();
}

class _$PropagationCalculatedFieldConfigurationSerializer
    implements PrimitiveSerializer<PropagationCalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [
    PropagationCalculatedFieldConfiguration,
    _$PropagationCalculatedFieldConfiguration,
  ];

  @override
  final String wireName = r'PropagationCalculatedFieldConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropagationCalculatedFieldConfiguration object, {
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
    if (object.applyExpressionToResolvedArguments != null) {
      yield r'applyExpressionToResolvedArguments';
      yield serializers.serialize(
        object.applyExpressionToResolvedArguments,
        specifiedType: const FullType(bool),
      );
    }
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
    yield r'relation';
    yield serializers.serialize(
      object.relation,
      specifiedType: const FullType(RelationPathLevel),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PropagationCalculatedFieldConfiguration object, {
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
    required PropagationCalculatedFieldConfigurationBuilder result,
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
        case r'applyExpressionToResolvedArguments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.applyExpressionToResolvedArguments = valueDes;
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
        case r'relation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RelationPathLevel),
                  )
                  as RelationPathLevel;
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
  PropagationCalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagationCalculatedFieldConfigurationBuilder();
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

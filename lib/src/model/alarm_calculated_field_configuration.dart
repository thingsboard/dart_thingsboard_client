// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/output.dart';
import 'package:thingsboard_client/src/model/alarm_rule.dart';
import 'package:thingsboard_client/src/model/calculated_field_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/argument.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_calculated_field_configuration.g.dart';

/// AlarmCalculatedFieldConfiguration
///
/// Properties:
/// * [output]
/// * [type]
/// * [arguments]
/// * [createRules]
/// * [clearRule]
/// * [propagate]
/// * [propagateToOwner]
/// * [propagateToOwnerHierarchy]
/// * [propagateToTenant]
/// * [propagateRelationTypes]
@BuiltValue()
abstract class AlarmCalculatedFieldConfiguration
    implements
        CalculatedFieldConfiguration,
        Built<
          AlarmCalculatedFieldConfiguration,
          AlarmCalculatedFieldConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'propagateToTenant')
  bool? get propagateToTenant;

  @BuiltValueField(wireName: r'propagateToOwner')
  bool? get propagateToOwner;

  @BuiltValueField(wireName: r'createRules')
  BuiltMap<String, AlarmRule> get createRules;

  @BuiltValueField(wireName: r'propagateRelationTypes')
  BuiltList<String>? get propagateRelationTypes;

  @BuiltValueField(wireName: r'clearRule')
  AlarmRule? get clearRule;

  @BuiltValueField(wireName: r'propagate')
  bool? get propagate;

  @BuiltValueField(wireName: r'arguments')
  BuiltMap<String, Argument> get arguments;

  @BuiltValueField(wireName: r'propagateToOwnerHierarchy')
  bool? get propagateToOwnerHierarchy;

  AlarmCalculatedFieldConfiguration._();

  factory AlarmCalculatedFieldConfiguration([
    void updates(AlarmCalculatedFieldConfigurationBuilder b),
  ]) = _$AlarmCalculatedFieldConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmCalculatedFieldConfigurationBuilder b) =>
      b..type = r'ALARM';

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmCalculatedFieldConfiguration> get serializer =>
      _$AlarmCalculatedFieldConfigurationSerializer();
}

class _$AlarmCalculatedFieldConfigurationSerializer
    implements PrimitiveSerializer<AlarmCalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [
    AlarmCalculatedFieldConfiguration,
    _$AlarmCalculatedFieldConfiguration,
  ];

  @override
  final String wireName = r'AlarmCalculatedFieldConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmCalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(Output),
      );
    }
    if (object.propagateToTenant != null) {
      yield r'propagateToTenant';
      yield serializers.serialize(
        object.propagateToTenant,
        specifiedType: const FullType(bool),
      );
    }
    if (object.propagateToOwner != null) {
      yield r'propagateToOwner';
      yield serializers.serialize(
        object.propagateToOwner,
        specifiedType: const FullType(bool),
      );
    }
    yield r'createRules';
    yield serializers.serialize(
      object.createRules,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(AlarmRule),
      ]),
    );
    if (object.propagateRelationTypes != null) {
      yield r'propagateRelationTypes';
      yield serializers.serialize(
        object.propagateRelationTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.clearRule != null) {
      yield r'clearRule';
      yield serializers.serialize(
        object.clearRule,
        specifiedType: const FullType(AlarmRule),
      );
    }
    if (object.propagate != null) {
      yield r'propagate';
      yield serializers.serialize(
        object.propagate,
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.propagateToOwnerHierarchy != null) {
      yield r'propagateToOwnerHierarchy';
      yield serializers.serialize(
        object.propagateToOwnerHierarchy,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmCalculatedFieldConfiguration object, {
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
    required AlarmCalculatedFieldConfigurationBuilder result,
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
        case r'propagateToTenant':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagateToTenant = valueDes;
          break;
        case r'propagateToOwner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagateToOwner = valueDes;
          break;
        case r'createRules':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(AlarmRule),
                    ]),
                  )
                  as BuiltMap<String, AlarmRule>;
          result.createRules.replace(valueDes);
          break;
        case r'propagateRelationTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.propagateRelationTypes.replace(valueDes);
          break;
        case r'clearRule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmRule),
                  )
                  as AlarmRule?;
          if (valueDes == null) continue;
          result.clearRule.replace(valueDes);
          break;
        case r'propagate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagate = valueDes;
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'propagateToOwnerHierarchy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagateToOwnerHierarchy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmCalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmCalculatedFieldConfigurationBuilder();
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

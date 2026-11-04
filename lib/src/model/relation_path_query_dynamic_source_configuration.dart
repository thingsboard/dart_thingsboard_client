// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/relation_path_level.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/cf_argument_dynamic_source_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relation_path_query_dynamic_source_configuration.g.dart';

/// RelationPathQueryDynamicSourceConfiguration
///
/// Properties:
/// * [type]
/// * [levels]
@BuiltValue()
abstract class RelationPathQueryDynamicSourceConfiguration
    implements
        CfArgumentDynamicSourceConfiguration,
        Built<
          RelationPathQueryDynamicSourceConfiguration,
          RelationPathQueryDynamicSourceConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'levels')
  BuiltList<RelationPathLevel>? get levels;

  RelationPathQueryDynamicSourceConfiguration._();

  factory RelationPathQueryDynamicSourceConfiguration([
    void updates(RelationPathQueryDynamicSourceConfigurationBuilder b),
  ]) = _$RelationPathQueryDynamicSourceConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationPathQueryDynamicSourceConfigurationBuilder b) =>
      b..type = r'RELATION_PATH_QUERY';

  @BuiltValueSerializer(custom: true)
  static Serializer<RelationPathQueryDynamicSourceConfiguration>
  get serializer => _$RelationPathQueryDynamicSourceConfigurationSerializer();
}

class _$RelationPathQueryDynamicSourceConfigurationSerializer
    implements
        PrimitiveSerializer<RelationPathQueryDynamicSourceConfiguration> {
  @override
  final Iterable<Type> types = const [
    RelationPathQueryDynamicSourceConfiguration,
    _$RelationPathQueryDynamicSourceConfiguration,
  ];

  @override
  final String wireName = r'RelationPathQueryDynamicSourceConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelationPathQueryDynamicSourceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.levels != null) {
      yield r'levels';
      yield serializers.serialize(
        object.levels,
        specifiedType: const FullType(BuiltList, [FullType(RelationPathLevel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RelationPathQueryDynamicSourceConfiguration object, {
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
    required RelationPathQueryDynamicSourceConfigurationBuilder result,
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
        case r'levels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RelationPathLevel),
                    ]),
                  )
                  as BuiltList<RelationPathLevel>?;
          if (valueDes == null) continue;
          result.levels.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelationPathQueryDynamicSourceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationPathQueryDynamicSourceConfigurationBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_app_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/agent_app_argument.dart';
import 'package:thingsboard_client/src/model/agent_app_config_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'docker_compose_config.g.dart';

/// DockerComposeConfig
///
/// Properties:
/// * [arguments] 
/// * [edgeRoutingKey] 
/// * [type] 
/// * [compose] - A value representing the any type (object or primitive)
/// * [composeType] 
@BuiltValue()
abstract class DockerComposeConfig implements AgentAppConfig, Built<DockerComposeConfig, DockerComposeConfigBuilder> {
  @BuiltValueField(wireName: r'composeType')
  String? get composeType;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'compose')
  JsonObject? get compose;

  DockerComposeConfig._();

  factory DockerComposeConfig([void updates(DockerComposeConfigBuilder b)]) = _$DockerComposeConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DockerComposeConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DockerComposeConfig> get serializer => _$DockerComposeConfigSerializer();
}

class _$DockerComposeConfigSerializer implements PrimitiveSerializer<DockerComposeConfig> {
  @override
  final Iterable<Type> types = const [DockerComposeConfig, _$DockerComposeConfig];

  @override
  final String wireName = r'DockerComposeConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DockerComposeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.arguments != null) {
      yield r'arguments';
      yield serializers.serialize(
        object.arguments,
        specifiedType: const FullType(BuiltList, [FullType(AgentAppArgument)]),
      );
    }
    if (object.edgeRoutingKey != null) {
      yield r'edgeRoutingKey';
      yield serializers.serialize(
        object.edgeRoutingKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.composeType != null) {
      yield r'composeType';
      yield serializers.serialize(
        object.composeType,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppConfigType),
      );
    }
    if (object.compose != null) {
      yield r'compose';
      yield serializers.serialize(
        object.compose,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DockerComposeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DockerComposeConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'arguments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AgentAppArgument)]),
          ) as BuiltList<AgentAppArgument>?;
          if (valueDes == null) continue;
          result.arguments.replace(valueDes);
          break;
        case r'edgeRoutingKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edgeRoutingKey = valueDes;
          break;
        case r'composeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.composeType = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentAppConfigType),
          ) as AgentAppConfigType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'compose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.compose = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DockerComposeConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DockerComposeConfigBuilder();
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



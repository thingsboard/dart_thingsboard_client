// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/docker_compose_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/agent_app_argument.dart';
import 'package:thingsboard_client/src/model/agent_app_config_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_config.g.dart';

/// AgentAppConfig
///
/// Properties:
/// * [arguments] 
/// * [edgeRoutingKey] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AgentAppConfig  {
  @BuiltValueField(wireName: r'arguments')
  BuiltList<AgentAppArgument>? get arguments;

  @BuiltValueField(wireName: r'edgeRoutingKey')
  String? get edgeRoutingKey;

  @BuiltValueField(wireName: r'type')
  AgentAppConfigType? get type;
  // enum typeEnum {  DOCKER_COMPOSE,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DockerComposeConfig': DockerComposeConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppConfig> get serializer => _$AgentAppConfigSerializer();
}

extension AgentAppConfigDiscriminatorExt on AgentAppConfig {
    String? get discriminatorValue {
        if (this is DockerComposeConfig) {
            return r'DockerComposeConfig';
        }
        return null;
    }
}
extension AgentAppConfigBuilderDiscriminatorExt on AgentAppConfigBuilder {
    String? get discriminatorValue {
        if (this is DockerComposeConfigBuilder) {
            return r'DockerComposeConfig';
        }
        return null;
    }
}

class _$AgentAppConfigSerializer implements PrimitiveSerializer<AgentAppConfig> {
  @override
  final Iterable<Type> types = const [AgentAppConfig];

  @override
  final String wireName = r'AgentAppConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppConfig object, {
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppConfigType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is DockerComposeConfig) {
      return serializers.serialize(object, specifiedType: FullType(DockerComposeConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AgentAppConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AgentAppConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'DockerComposeConfig':
        return serializers.deserialize(serialized, specifiedType: FullType(DockerComposeConfig)) as DockerComposeConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AgentAppConfig)) as $AgentAppConfig;
    }
  }
}


/// a concrete implementation of [AgentAppConfig], since [AgentAppConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AgentAppConfig implements AgentAppConfig, Built<$AgentAppConfig, $AgentAppConfigBuilder> {
  $AgentAppConfig._();

  factory $AgentAppConfig([void Function($AgentAppConfigBuilder)? updates]) = _$$AgentAppConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AgentAppConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AgentAppConfig> get serializer => _$$AgentAppConfigSerializer();
}

class _$$AgentAppConfigSerializer implements PrimitiveSerializer<$AgentAppConfig> {
  @override
  final Iterable<Type> types = const [$AgentAppConfig, _$$AgentAppConfig];

  @override
  final String wireName = r'$AgentAppConfig';

  @override
  Object serialize(
    Serializers serializers,
    $AgentAppConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AgentAppConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentAppConfigBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentAppConfigType),
          ) as AgentAppConfigType?;
          if (valueDes == null) continue;
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
  $AgentAppConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AgentAppConfigBuilder();
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


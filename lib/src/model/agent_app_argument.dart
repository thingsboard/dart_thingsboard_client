// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_app_argument_source.dart';
import 'package:thingsboard_client/src/model/agent_app_argument_value_type.dart';
import 'package:thingsboard_client/src/model/attribute_scope.dart';
import 'package:thingsboard_client/src/model/agent_app_argument_format.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_argument.g.dart';

/// AgentAppArgument
///
/// Properties:
/// * [name] - Argument name, referenced in the compose as ${tb.<name>}.
/// * [sourceType] - Source entity the value is resolved from.
/// * [sourceEntityId] - Concrete source entity id. Required when sourceType references a specific entity (DEVICE, ASSET, CUSTOMER, EDGE); ignored for the context-derived sources.
/// * [valueType] - Whether the value is read from an attribute or the latest telemetry.
/// * [scope] - Attribute scope. Applicable only when valueType is ATTRIBUTE. Defaults to SERVER_SCOPE.
/// * [key] - Attribute or latest telemetry key to read.
/// * [defaultValue] - Optional fallback value used when the source has no value for the key.
/// * [format] - How the resolved value is injected into the compose: STRING (quoted) or JSON (raw, for arrays/objects/numbers when the placeholder is the whole value). Defaults to STRING.
@BuiltValue()
abstract class AgentAppArgument
    implements Built<AgentAppArgument, AgentAppArgumentBuilder> {
  /// Argument name, referenced in the compose as ${tb.<name>}.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Source entity the value is resolved from.
  @BuiltValueField(wireName: r'sourceType')
  AgentAppArgumentSource? get sourceType;
  // enum sourceTypeEnum {  AGENT,  OWNER,  RELATED_ENTITY,  TENANT,  DEVICE,  ASSET,  CUSTOMER,  EDGE,  };

  /// Concrete source entity id. Required when sourceType references a specific entity (DEVICE, ASSET, CUSTOMER, EDGE); ignored for the context-derived sources.
  @BuiltValueField(wireName: r'sourceEntityId')
  EntityId? get sourceEntityId;

  /// Whether the value is read from an attribute or the latest telemetry.
  @BuiltValueField(wireName: r'valueType')
  AgentAppArgumentValueType? get valueType;
  // enum valueTypeEnum {  ATTRIBUTE,  LATEST_TELEMETRY,  };

  /// Attribute scope. Applicable only when valueType is ATTRIBUTE. Defaults to SERVER_SCOPE.
  @BuiltValueField(wireName: r'scope')
  AttributeScope? get scope;
  // enum scopeEnum {  CLIENT_SCOPE,  SERVER_SCOPE,  SHARED_SCOPE,  };

  /// Attribute or latest telemetry key to read.
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// Optional fallback value used when the source has no value for the key.
  @BuiltValueField(wireName: r'defaultValue')
  String? get defaultValue;

  /// How the resolved value is injected into the compose: STRING (quoted) or JSON (raw, for arrays/objects/numbers when the placeholder is the whole value). Defaults to STRING.
  @BuiltValueField(wireName: r'format')
  AgentAppArgumentFormat? get format;
  // enum formatEnum {  STRING,  JSON,  };

  AgentAppArgument._();

  factory AgentAppArgument([void updates(AgentAppArgumentBuilder b)]) =
      _$AgentAppArgument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppArgumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppArgument> get serializer =>
      _$AgentAppArgumentSerializer();
}

class _$AgentAppArgumentSerializer
    implements PrimitiveSerializer<AgentAppArgument> {
  @override
  final Iterable<Type> types = const [AgentAppArgument, _$AgentAppArgument];

  @override
  final String wireName = r'AgentAppArgument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppArgument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(AgentAppArgumentSource),
      );
    }
    if (object.sourceEntityId != null) {
      yield r'sourceEntityId';
      yield serializers.serialize(
        object.sourceEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.valueType != null) {
      yield r'valueType';
      yield serializers.serialize(
        object.valueType,
        specifiedType: const FullType(AgentAppArgumentValueType),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(AttributeScope),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(AgentAppArgumentFormat),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppArgument object, {
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
    required AgentAppArgumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'sourceType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AgentAppArgumentSource,
                    ),
                  )
                  as AgentAppArgumentSource?;
          if (valueDes == null) continue;
          result.sourceType = valueDes;
          break;
        case r'sourceEntityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.sourceEntityId = valueDes;
          break;
        case r'valueType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AgentAppArgumentValueType,
                    ),
                  )
                  as AgentAppArgumentValueType?;
          if (valueDes == null) continue;
          result.valueType = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AttributeScope),
                  )
                  as AttributeScope?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'defaultValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AgentAppArgumentFormat,
                    ),
                  )
                  as AgentAppArgumentFormat?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentAppArgument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppArgumentBuilder();
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

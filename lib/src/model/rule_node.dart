// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/debug_settings.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:built_value/json_object.dart';
import 'package:thingsboard_client/src/model/rule_node_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_node.g.dart';

/// RuleNode
///
/// Properties:
/// * [id] - JSON object with the Rule Node Id. Specify this field to update the Rule Node. Referencing non-existing Rule Node Id will cause error. Omit this field to create new rule node.
/// * [createdTime] - Timestamp of the rule node creation, in milliseconds
/// * [additionalInfo] - Additional parameters of the rule node. May include: 'layoutX' (number, X coordinate for visualization), 'layoutY' (number, Y coordinate for visualization), 'description' (string).
/// * [ruleChainId] - JSON object with the Rule Chain Id. 
/// * [type] - Full Java Class Name of the rule node implementation. 
/// * [name] - User defined name of the rule node. Used on UI and for logging. 
/// * [debugSettings] - Debug settings object.
/// * [singletonMode] - Enable/disable singleton mode. 
/// * [queueName] - Queue name. 
/// * [configurationVersion] - Version of rule node configuration. 
/// * [configuration] - JSON with the rule node configuration. Structure depends on the rule node implementation.
/// * [externalId] 
/// * [debugMode] 
@BuiltValue()
abstract class RuleNode implements Built<RuleNode, RuleNodeBuilder> {
  /// JSON object with the Rule Node Id. Specify this field to update the Rule Node. Referencing non-existing Rule Node Id will cause error. Omit this field to create new rule node.
  @BuiltValueField(wireName: r'id')
  RuleNodeId? get id;

  /// Timestamp of the rule node creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Additional parameters of the rule node. May include: 'layoutX' (number, X coordinate for visualization), 'layoutY' (number, Y coordinate for visualization), 'description' (string).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with the Rule Chain Id. 
  @BuiltValueField(wireName: r'ruleChainId')
  RuleChainId? get ruleChainId;

  /// Full Java Class Name of the rule node implementation. 
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// User defined name of the rule node. Used on UI and for logging. 
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Debug settings object.
  @BuiltValueField(wireName: r'debugSettings')
  DebugSettings? get debugSettings;

  /// Enable/disable singleton mode. 
  @BuiltValueField(wireName: r'singletonMode')
  bool? get singletonMode;

  /// Queue name. 
  @BuiltValueField(wireName: r'queueName')
  String? get queueName;

  /// Version of rule node configuration. 
  @BuiltValueField(wireName: r'configurationVersion')
  int? get configurationVersion;

  /// JSON with the rule node configuration. Structure depends on the rule node implementation.
  @BuiltValueField(wireName: r'configuration')
  JsonObject? get configuration;

  @BuiltValueField(wireName: r'externalId')
  RuleNodeId? get externalId;

  @Deprecated('debugMode has been deprecated')
  @BuiltValueField(wireName: r'debugMode')
  bool? get debugMode;

  RuleNode._();

  factory RuleNode([void updates(RuleNodeBuilder b)]) = _$RuleNode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleNodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleNode> get serializer => _$RuleNodeSerializer();
}

class _$RuleNodeSerializer implements PrimitiveSerializer<RuleNode> {
  @override
  final Iterable<Type> types = const [RuleNode, _$RuleNode];

  @override
  final String wireName = r'RuleNode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleNode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(RuleNodeId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.ruleChainId != null) {
      yield r'ruleChainId';
      yield serializers.serialize(
        object.ruleChainId,
        specifiedType: const FullType(RuleChainId),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.debugSettings != null) {
      yield r'debugSettings';
      yield serializers.serialize(
        object.debugSettings,
        specifiedType: const FullType(DebugSettings),
      );
    }
    if (object.singletonMode != null) {
      yield r'singletonMode';
      yield serializers.serialize(
        object.singletonMode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.queueName != null) {
      yield r'queueName';
      yield serializers.serialize(
        object.queueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.configurationVersion != null) {
      yield r'configurationVersion';
      yield serializers.serialize(
        object.configurationVersion,
        specifiedType: const FullType(int),
      );
    }
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(RuleNodeId),
      );
    }
    if (object.debugMode != null) {
      yield r'debugMode';
      yield serializers.serialize(
        object.debugMode,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleNode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuleNodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleNodeId),
          ) as RuleNodeId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'additionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        case r'ruleChainId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleChainId),
          ) as RuleChainId?;
          if (valueDes == null) continue;
          result.ruleChainId.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'debugSettings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DebugSettings),
          ) as DebugSettings?;
          if (valueDes == null) continue;
          result.debugSettings.replace(valueDes);
          break;
        case r'singletonMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.singletonMode = valueDes;
          break;
        case r'queueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.queueName = valueDes;
          break;
        case r'configurationVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.configurationVersion = valueDes;
          break;
        case r'configuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleNodeId),
          ) as RuleNodeId?;
          if (valueDes == null) continue;
          result.externalId.replace(valueDes);
          break;
        case r'debugMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.debugMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleNode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleNodeBuilder();
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



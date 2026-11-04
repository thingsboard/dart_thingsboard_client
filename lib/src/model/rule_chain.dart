// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/rule_chain_type.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/json_object.dart';
import 'package:thingsboard_client/src/model/rule_node_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_chain.g.dart';

/// A JSON value representing the rule chain.
///
/// Properties:
/// * [id] - JSON object with the Rule Chain Id. Specify this field to update the Rule Chain. Referencing non-existing Rule Chain Id will cause error. Omit this field to create new rule chain.
/// * [createdTime] - Timestamp of the rule chain creation, in milliseconds
/// * [additionalInfo] - A value representing the any type (object or primitive)
/// * [tenantId] - JSON object with Tenant Id.
/// * [name] - Rule Chain name
/// * [type] - Rule Chain type. 'EDGE' rule chains are processing messages on the edge devices only.
/// * [firstRuleNodeId] - JSON object with Rule Chain Id. Pointer to the first rule node that should receive all messages pushed to this rule chain.
/// * [root] - Indicates root rule chain. The root rule chain process messages from all devices and entities by default. User may configure default rule chain per device profile.
/// * [debugMode] - Reserved for future usage.
/// * [configuration] - A value representing the any type (object or primitive)
/// * [version] 
@BuiltValue()
abstract class RuleChain implements Built<RuleChain, RuleChainBuilder> {
  /// JSON object with the Rule Chain Id. Specify this field to update the Rule Chain. Referencing non-existing Rule Chain Id will cause error. Omit this field to create new rule chain.
  @BuiltValueField(wireName: r'id')
  RuleChainId? get id;

  /// Timestamp of the rule chain creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Rule Chain name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Rule Chain type. 'EDGE' rule chains are processing messages on the edge devices only.
  @BuiltValueField(wireName: r'type')
  RuleChainType? get type;
  // enum typeEnum {  CORE,  EDGE,  };

  /// JSON object with Rule Chain Id. Pointer to the first rule node that should receive all messages pushed to this rule chain.
  @BuiltValueField(wireName: r'firstRuleNodeId')
  RuleNodeId? get firstRuleNodeId;

  /// Indicates root rule chain. The root rule chain process messages from all devices and entities by default. User may configure default rule chain per device profile.
  @BuiltValueField(wireName: r'root')
  bool? get root;

  /// Reserved for future usage.
  @BuiltValueField(wireName: r'debugMode')
  bool? get debugMode;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'configuration')
  JsonObject? get configuration;

  @BuiltValueField(wireName: r'version')
  int? get version;

  RuleChain._();

  factory RuleChain([void updates(RuleChainBuilder b)]) = _$RuleChain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChain> get serializer => _$RuleChainSerializer();
}

class _$RuleChainSerializer implements PrimitiveSerializer<RuleChain> {
  @override
  final Iterable<Type> types = const [RuleChain, _$RuleChain];

  @override
  final String wireName = r'RuleChain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(RuleChainId),
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
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RuleChainType),
      );
    }
    if (object.firstRuleNodeId != null) {
      yield r'firstRuleNodeId';
      yield serializers.serialize(
        object.firstRuleNodeId,
        specifiedType: const FullType(RuleNodeId),
      );
    }
    if (object.root != null) {
      yield r'root';
      yield serializers.serialize(
        object.root,
        specifiedType: const FullType(bool),
      );
    }
    if (object.debugMode != null) {
      yield r'debugMode';
      yield serializers.serialize(
        object.debugMode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleChain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuleChainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleChainId),
          ) as RuleChainId?;
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
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleChainType),
          ) as RuleChainType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'firstRuleNodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleNodeId),
          ) as RuleNodeId?;
          if (valueDes == null) continue;
          result.firstRuleNodeId.replace(valueDes);
          break;
        case r'root':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.root = valueDes;
          break;
        case r'debugMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.debugMode = valueDes;
          break;
        case r'configuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleChain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/component_descriptor_id.dart';
import 'package:thingsboard_client/src/model/component_scope.dart';
import 'package:thingsboard_client/src/model/component_clustering_mode.dart';
import 'package:thingsboard_client/src/model/component_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'component_descriptor.g.dart';

/// ComponentDescriptor
///
/// Properties:
/// * [id] - JSON object with the descriptor Id. Specify existing descriptor id to update the descriptor. Referencing non-existing descriptor Id will cause error. Omit this field to create new descriptor.
/// * [createdTime] - Timestamp of the descriptor creation, in milliseconds
/// * [type] - Type of the Rule Node
/// * [scope] - Scope of the Rule Node. Always set to 'TENANT', since no rule chains on the 'SYSTEM' level yet.
/// * [clusteringMode] - Clustering mode of the RuleNode. This mode represents the ability to start Rule Node in multiple microservices.
/// * [name] - Name of the Rule Node. Taken from the @RuleNode annotation.
/// * [clazz] - Full name of the Java class that implements the Rule Engine Node interface.
/// * [configurationDescriptor] - A value representing the any type (object or primitive)
/// * [configurationVersion] - Rule node configuration version. By default, this value is 0. If the rule node is a versioned node, this value might be greater than 0.
/// * [actions] - Rule Node Actions. Deprecated. Always null.
/// * [hasQueueName] - Indicates that the RuleNode supports queue name configuration.
/// * [hasSecrets] - Indicates that the RuleNode configuration uses secrets placeholders.
@BuiltValue()
abstract class ComponentDescriptor implements Built<ComponentDescriptor, ComponentDescriptorBuilder> {
  /// JSON object with the descriptor Id. Specify existing descriptor id to update the descriptor. Referencing non-existing descriptor Id will cause error. Omit this field to create new descriptor.
  @BuiltValueField(wireName: r'id')
  ComponentDescriptorId? get id;

  /// Timestamp of the descriptor creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Type of the Rule Node
  @BuiltValueField(wireName: r'type')
  ComponentType? get type;
  // enum typeEnum {  ENRICHMENT,  FILTER,  TRANSFORMATION,  ACTION,  ANALYTICS,  EXTERNAL,  FLOW,  };

  /// Scope of the Rule Node. Always set to 'TENANT', since no rule chains on the 'SYSTEM' level yet.
  @BuiltValueField(wireName: r'scope')
  ComponentScope? get scope;
  // enum scopeEnum {  SYSTEM,  TENANT,  };

  /// Clustering mode of the RuleNode. This mode represents the ability to start Rule Node in multiple microservices.
  @BuiltValueField(wireName: r'clusteringMode')
  ComponentClusteringMode? get clusteringMode;
  // enum clusteringModeEnum {  USER_PREFERENCE,  ENABLED,  SINGLETON,  };

  /// Name of the Rule Node. Taken from the @RuleNode annotation.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Full name of the Java class that implements the Rule Engine Node interface.
  @BuiltValueField(wireName: r'clazz')
  String? get clazz;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'configurationDescriptor')
  JsonObject? get configurationDescriptor;

  /// Rule node configuration version. By default, this value is 0. If the rule node is a versioned node, this value might be greater than 0.
  @BuiltValueField(wireName: r'configurationVersion')
  int? get configurationVersion;

  /// Rule Node Actions. Deprecated. Always null.
  @BuiltValueField(wireName: r'actions')
  String? get actions;

  /// Indicates that the RuleNode supports queue name configuration.
  @BuiltValueField(wireName: r'hasQueueName')
  bool? get hasQueueName;

  /// Indicates that the RuleNode configuration uses secrets placeholders.
  @BuiltValueField(wireName: r'hasSecrets')
  bool? get hasSecrets;

  ComponentDescriptor._();

  factory ComponentDescriptor([void updates(ComponentDescriptorBuilder b)]) = _$ComponentDescriptor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComponentDescriptorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComponentDescriptor> get serializer => _$ComponentDescriptorSerializer();
}

class _$ComponentDescriptorSerializer implements PrimitiveSerializer<ComponentDescriptor> {
  @override
  final Iterable<Type> types = const [ComponentDescriptor, _$ComponentDescriptor];

  @override
  final String wireName = r'ComponentDescriptor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComponentDescriptor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(ComponentDescriptorId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ComponentType),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(ComponentScope),
      );
    }
    if (object.clusteringMode != null) {
      yield r'clusteringMode';
      yield serializers.serialize(
        object.clusteringMode,
        specifiedType: const FullType(ComponentClusteringMode),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.clazz != null) {
      yield r'clazz';
      yield serializers.serialize(
        object.clazz,
        specifiedType: const FullType(String),
      );
    }
    if (object.configurationDescriptor != null) {
      yield r'configurationDescriptor';
      yield serializers.serialize(
        object.configurationDescriptor,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.configurationVersion != null) {
      yield r'configurationVersion';
      yield serializers.serialize(
        object.configurationVersion,
        specifiedType: const FullType(int),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(String),
      );
    }
    if (object.hasQueueName != null) {
      yield r'hasQueueName';
      yield serializers.serialize(
        object.hasQueueName,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasSecrets != null) {
      yield r'hasSecrets';
      yield serializers.serialize(
        object.hasSecrets,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComponentDescriptor object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComponentDescriptorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ComponentDescriptorId),
          ) as ComponentDescriptorId?;
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ComponentType),
          ) as ComponentType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ComponentScope),
          ) as ComponentScope?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        case r'clusteringMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ComponentClusteringMode),
          ) as ComponentClusteringMode?;
          if (valueDes == null) continue;
          result.clusteringMode = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'clazz':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.clazz = valueDes;
          break;
        case r'configurationDescriptor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.configurationDescriptor = valueDes;
          break;
        case r'configurationVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.configurationVersion = valueDes;
          break;
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.actions = valueDes;
          break;
        case r'hasQueueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hasQueueName = valueDes;
          break;
        case r'hasSecrets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hasSecrets = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComponentDescriptor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComponentDescriptorBuilder();
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



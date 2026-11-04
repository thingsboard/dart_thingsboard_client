// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/docker_compose_config.dart';
import 'package:thingsboard_client/src/model/agent_application_type.dart';
import 'package:thingsboard_client/src/model/agent_app_profile_id.dart';
import 'package:thingsboard_client/src/model/agent_profile_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_profile_relation_info.g.dart';

/// AgentAppProfileRelationInfo
///
/// Properties:
/// * [id] - JSON object with the Agent Application Profile Id.
/// * [createdTime] - Timestamp of the profile creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id.
/// * [name] - Unique profile name within tenant
/// * [description] - Profile description
/// * [appType] - Application type: EDGE, GATEWAY, or GENERIC
/// * [templateVersion] - Template version this profile is based on
/// * [config] - Shared config (compose definition)
/// * [version] 
/// * [templateCurrentVersion] - Current version of the template this profile points to.
/// * [agentProfileId] - JSON object with the Agent Profile Id this app profile is assigned to.
/// * [assignedApplicationsCount] - Number of AgentApplications using this app profile within the agent profile.
/// * [additionalInfo] - Additional info of the assignment relation between the agent profile and this app profile.
@BuiltValue()
abstract class AgentAppProfileRelationInfo implements Built<AgentAppProfileRelationInfo, AgentAppProfileRelationInfoBuilder> {
  /// JSON object with the Agent Application Profile Id.
  @BuiltValueField(wireName: r'id')
  AgentAppProfileId? get id;

  /// Timestamp of the profile creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Unique profile name within tenant
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Profile description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Application type: EDGE, GATEWAY, or GENERIC
  @BuiltValueField(wireName: r'appType')
  AgentApplicationType get appType;
  // enum appTypeEnum {  GENERIC,  EDGE,  GATEWAY,  };

  /// Template version this profile is based on
  @BuiltValueField(wireName: r'templateVersion')
  String get templateVersion;

  /// Shared config (compose definition)
  @BuiltValueField(wireName: r'config')
  DockerComposeConfig? get config;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Current version of the template this profile points to.
  @BuiltValueField(wireName: r'templateCurrentVersion')
  String? get templateCurrentVersion;

  /// JSON object with the Agent Profile Id this app profile is assigned to.
  @BuiltValueField(wireName: r'agentProfileId')
  AgentProfileId? get agentProfileId;

  /// Number of AgentApplications using this app profile within the agent profile.
  @BuiltValueField(wireName: r'assignedApplicationsCount')
  int? get assignedApplicationsCount;

  /// Additional info of the assignment relation between the agent profile and this app profile.
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  AgentAppProfileRelationInfo._();

  factory AgentAppProfileRelationInfo([void updates(AgentAppProfileRelationInfoBuilder b)]) = _$AgentAppProfileRelationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppProfileRelationInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppProfileRelationInfo> get serializer => _$AgentAppProfileRelationInfoSerializer();
}

class _$AgentAppProfileRelationInfoSerializer implements PrimitiveSerializer<AgentAppProfileRelationInfo> {
  @override
  final Iterable<Type> types = const [AgentAppProfileRelationInfo, _$AgentAppProfileRelationInfo];

  @override
  final String wireName = r'AgentAppProfileRelationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppProfileRelationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AgentAppProfileId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'appType';
    yield serializers.serialize(
      object.appType,
      specifiedType: const FullType(AgentApplicationType),
    );
    yield r'templateVersion';
    yield serializers.serialize(
      object.templateVersion,
      specifiedType: const FullType(String),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(DockerComposeConfig),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.templateCurrentVersion != null) {
      yield r'templateCurrentVersion';
      yield serializers.serialize(
        object.templateCurrentVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.agentProfileId != null) {
      yield r'agentProfileId';
      yield serializers.serialize(
        object.agentProfileId,
        specifiedType: const FullType(AgentProfileId),
      );
    }
    if (object.assignedApplicationsCount != null) {
      yield r'assignedApplicationsCount';
      yield serializers.serialize(
        object.assignedApplicationsCount,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppProfileRelationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentAppProfileRelationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentAppProfileId),
          ) as AgentAppProfileId?;
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'appType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AgentApplicationType),
          ) as AgentApplicationType;
          result.appType = valueDes;
          break;
        case r'templateVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateVersion = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DockerComposeConfig),
          ) as DockerComposeConfig?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'templateCurrentVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.templateCurrentVersion = valueDes;
          break;
        case r'agentProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentProfileId),
          ) as AgentProfileId?;
          if (valueDes == null) continue;
          result.agentProfileId.replace(valueDes);
          break;
        case r'assignedApplicationsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.assignedApplicationsCount = valueDes;
          break;
        case r'additionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentAppProfileRelationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppProfileRelationInfoBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/docker_compose_config.dart';
import 'package:thingsboard_client/src/model/agent_application_id.dart';
import 'package:thingsboard_client/src/model/agent_application_origin.dart';
import 'package:thingsboard_client/src/model/agent_application_type.dart';
import 'package:thingsboard_client/src/model/agent_id.dart';
import 'package:thingsboard_client/src/model/agent_app_profile_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_application.g.dart';

/// AgentApplication
///
/// Properties:
/// * [id] - JSON object with the Agent Application Id.
/// * [createdTime] - Timestamp of the agent application creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id.
/// * [agentId] - Agent this application belongs to
/// * [name] - Application name (not unique across tenant)
/// * [templateVersion] - Template version this application is based on
/// * [desiredTemplateVersion] 
/// * [appType] - Application type
/// * [config] - Config (with compose field and type = 'DOCKER_COMPOSE' for EDGE/GATEWAY)
/// * [version] 
/// * [projectName] 
/// * [pendingDeletion] 
/// * [origin] - Origin of the application (INSTALLED or DISCOVERED)
/// * [applicationProfileId] - Application Profile Id. When set, config is read-only and inherited from the profile.
/// * [profileConfigVersion] 
@BuiltValue()
abstract class AgentApplication implements Built<AgentApplication, AgentApplicationBuilder> {
  /// JSON object with the Agent Application Id.
  @BuiltValueField(wireName: r'id')
  AgentApplicationId? get id;

  /// Timestamp of the agent application creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Agent this application belongs to
  @BuiltValueField(wireName: r'agentId')
  AgentId get agentId;

  /// Application name (not unique across tenant)
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Template version this application is based on
  @BuiltValueField(wireName: r'templateVersion')
  String get templateVersion;

  @BuiltValueField(wireName: r'desiredTemplateVersion')
  String? get desiredTemplateVersion;

  /// Application type
  @BuiltValueField(wireName: r'appType')
  AgentApplicationType get appType;
  // enum appTypeEnum {  GENERIC,  EDGE,  GATEWAY,  };

  /// Config (with compose field and type = 'DOCKER_COMPOSE' for EDGE/GATEWAY)
  @BuiltValueField(wireName: r'config')
  DockerComposeConfig? get config;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'projectName')
  String? get projectName;

  @BuiltValueField(wireName: r'pendingDeletion')
  bool? get pendingDeletion;

  /// Origin of the application (INSTALLED or DISCOVERED)
  @BuiltValueField(wireName: r'origin')
  AgentApplicationOrigin? get origin;
  // enum originEnum {  INSTALLED,  DISCOVERED,  AUTO_PROVISIONED,  };

  /// Application Profile Id. When set, config is read-only and inherited from the profile.
  @BuiltValueField(wireName: r'applicationProfileId')
  AgentAppProfileId? get applicationProfileId;

  @BuiltValueField(wireName: r'profileConfigVersion')
  int? get profileConfigVersion;

  AgentApplication._();

  factory AgentApplication([void updates(AgentApplicationBuilder b)]) = _$AgentApplication;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentApplicationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentApplication> get serializer => _$AgentApplicationSerializer();
}

class _$AgentApplicationSerializer implements PrimitiveSerializer<AgentApplication> {
  @override
  final Iterable<Type> types = const [AgentApplication, _$AgentApplication];

  @override
  final String wireName = r'AgentApplication';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentApplication object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AgentApplicationId),
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
    yield r'agentId';
    yield serializers.serialize(
      object.agentId,
      specifiedType: const FullType(AgentId),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'templateVersion';
    yield serializers.serialize(
      object.templateVersion,
      specifiedType: const FullType(String),
    );
    if (object.desiredTemplateVersion != null) {
      yield r'desiredTemplateVersion';
      yield serializers.serialize(
        object.desiredTemplateVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'appType';
    yield serializers.serialize(
      object.appType,
      specifiedType: const FullType(AgentApplicationType),
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
    if (object.projectName != null) {
      yield r'projectName';
      yield serializers.serialize(
        object.projectName,
        specifiedType: const FullType(String),
      );
    }
    if (object.pendingDeletion != null) {
      yield r'pendingDeletion';
      yield serializers.serialize(
        object.pendingDeletion,
        specifiedType: const FullType(bool),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(AgentApplicationOrigin),
      );
    }
    if (object.applicationProfileId != null) {
      yield r'applicationProfileId';
      yield serializers.serialize(
        object.applicationProfileId,
        specifiedType: const FullType(AgentAppProfileId),
      );
    }
    if (object.profileConfigVersion != null) {
      yield r'profileConfigVersion';
      yield serializers.serialize(
        object.profileConfigVersion,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentApplication object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentApplicationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentApplicationId),
          ) as AgentApplicationId?;
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
        case r'agentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AgentId),
          ) as AgentId;
          result.agentId.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'templateVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateVersion = valueDes;
          break;
        case r'desiredTemplateVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.desiredTemplateVersion = valueDes;
          break;
        case r'appType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AgentApplicationType),
          ) as AgentApplicationType;
          result.appType = valueDes;
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
        case r'projectName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectName = valueDes;
          break;
        case r'pendingDeletion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.pendingDeletion = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentApplicationOrigin),
          ) as AgentApplicationOrigin?;
          if (valueDes == null) continue;
          result.origin = valueDes;
          break;
        case r'applicationProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentAppProfileId),
          ) as AgentAppProfileId?;
          if (valueDes == null) continue;
          result.applicationProfileId.replace(valueDes);
          break;
        case r'profileConfigVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.profileConfigVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentApplication deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentApplicationBuilder();
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



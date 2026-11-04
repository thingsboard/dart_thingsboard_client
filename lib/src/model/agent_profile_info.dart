// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_profile_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/agent_provision_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_profile_info.g.dart';

/// AgentProfileInfo
///
/// Properties:
/// * [id] - JSON object with the Agent Profile Id.
/// * [createdTime] - Timestamp of the profile creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id.
/// * [name] - Unique profile name within tenant
/// * [description] - Profile description
/// * [provisionKey] - Provision key for future auto-provisioning
/// * [provisionSecret] - Provision secret for future auto-provisioning
/// * [provisionType] - Provisioning strategy. DISABLED by default.
/// * [version] 
/// * [default_] - Used to mark the default profile that will be assigned to agents when no profile is specified.
@BuiltValue()
abstract class AgentProfileInfo implements Built<AgentProfileInfo, AgentProfileInfoBuilder> {
  /// JSON object with the Agent Profile Id.
  @BuiltValueField(wireName: r'id')
  AgentProfileId? get id;

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

  /// Provision key for future auto-provisioning
  @BuiltValueField(wireName: r'provisionKey')
  String? get provisionKey;

  /// Provision secret for future auto-provisioning
  @BuiltValueField(wireName: r'provisionSecret')
  String? get provisionSecret;

  /// Provisioning strategy. DISABLED by default.
  @BuiltValueField(wireName: r'provisionType')
  AgentProvisionType? get provisionType;
  // enum provisionTypeEnum {  DISABLED,  NO_AUTO_INSTALL,  AUTO_INSTALL_PER_APP_TYPE,  AUTO_INSTALL_PER_APP_PROFILE,  };

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Used to mark the default profile that will be assigned to agents when no profile is specified.
  @BuiltValueField(wireName: r'default')
  bool? get default_;

  AgentProfileInfo._();

  factory AgentProfileInfo([void updates(AgentProfileInfoBuilder b)]) = _$AgentProfileInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentProfileInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentProfileInfo> get serializer => _$AgentProfileInfoSerializer();
}

class _$AgentProfileInfoSerializer implements PrimitiveSerializer<AgentProfileInfo> {
  @override
  final Iterable<Type> types = const [AgentProfileInfo, _$AgentProfileInfo];

  @override
  final String wireName = r'AgentProfileInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentProfileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AgentProfileId),
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
    if (object.provisionKey != null) {
      yield r'provisionKey';
      yield serializers.serialize(
        object.provisionKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.provisionSecret != null) {
      yield r'provisionSecret';
      yield serializers.serialize(
        object.provisionSecret,
        specifiedType: const FullType(String),
      );
    }
    if (object.provisionType != null) {
      yield r'provisionType';
      yield serializers.serialize(
        object.provisionType,
        specifiedType: const FullType(AgentProvisionType),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentProfileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentProfileInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentProfileId),
          ) as AgentProfileId?;
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
        case r'provisionKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.provisionKey = valueDes;
          break;
        case r'provisionSecret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.provisionSecret = valueDes;
          break;
        case r'provisionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentProvisionType),
          ) as AgentProvisionType?;
          if (valueDes == null) continue;
          result.provisionType = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentProfileInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentProfileInfoBuilder();
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



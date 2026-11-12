// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_application_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/agent_app_template_start_steps_inner.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/agent_app_config_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_template.g.dart';

/// AgentAppTemplate
///
/// Properties:
/// * [tenantId] - JSON object with Tenant Id.
/// * [appType] - Application type
/// * [configType] - Config type (e.g. 'DOCKER_COMPOSE'); the compose body lives in the template's compose-template step, not here
/// * [currentVersion] - Current template version
/// * [nextVersion] - Next template version
/// * [startSteps] - Start steps
/// * [upgradeSteps] - Upgrade steps
/// * [deleteSteps] - Delete steps
/// * [rollbackSteps] - Rollback steps
/// * [restartSteps] - Restart steps
@BuiltValue()
abstract class AgentAppTemplate
    implements Built<AgentAppTemplate, AgentAppTemplateBuilder> {
  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Application type
  @BuiltValueField(wireName: r'appType')
  AgentApplicationType get appType;
  // enum appTypeEnum {  GENERIC,  EDGE,  GATEWAY,  };

  /// Config type (e.g. 'DOCKER_COMPOSE'); the compose body lives in the template's compose-template step, not here
  @BuiltValueField(wireName: r'configType')
  AgentAppConfigType? get configType;
  // enum configTypeEnum {  DOCKER_COMPOSE,  };

  /// Current template version
  @BuiltValueField(wireName: r'currentVersion')
  String get currentVersion;

  /// Next template version
  @BuiltValueField(wireName: r'nextVersion')
  String? get nextVersion;

  /// Start steps
  @BuiltValueField(wireName: r'startSteps')
  BuiltList<AgentAppTemplateStartStepsInner>? get startSteps;

  /// Upgrade steps
  @BuiltValueField(wireName: r'upgradeSteps')
  BuiltList<AgentAppTemplateStartStepsInner>? get upgradeSteps;

  /// Delete steps
  @BuiltValueField(wireName: r'deleteSteps')
  BuiltList<AgentAppTemplateStartStepsInner>? get deleteSteps;

  /// Rollback steps
  @BuiltValueField(wireName: r'rollbackSteps')
  BuiltList<AgentAppTemplateStartStepsInner>? get rollbackSteps;

  /// Restart steps
  @BuiltValueField(wireName: r'restartSteps')
  BuiltList<AgentAppTemplateStartStepsInner>? get restartSteps;

  AgentAppTemplate._();

  factory AgentAppTemplate([void updates(AgentAppTemplateBuilder b)]) =
      _$AgentAppTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppTemplate> get serializer =>
      _$AgentAppTemplateSerializer();
}

class _$AgentAppTemplateSerializer
    implements PrimitiveSerializer<AgentAppTemplate> {
  @override
  final Iterable<Type> types = const [AgentAppTemplate, _$AgentAppTemplate];

  @override
  final String wireName = r'AgentAppTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    yield r'appType';
    yield serializers.serialize(
      object.appType,
      specifiedType: const FullType(AgentApplicationType),
    );
    if (object.configType != null) {
      yield r'configType';
      yield serializers.serialize(
        object.configType,
        specifiedType: const FullType(AgentAppConfigType),
      );
    }
    yield r'currentVersion';
    yield serializers.serialize(
      object.currentVersion,
      specifiedType: const FullType(String),
    );
    if (object.nextVersion != null) {
      yield r'nextVersion';
      yield serializers.serialize(
        object.nextVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.startSteps != null) {
      yield r'startSteps';
      yield serializers.serialize(
        object.startSteps,
        specifiedType: const FullType(BuiltList, [
          FullType(AgentAppTemplateStartStepsInner),
        ]),
      );
    }
    if (object.upgradeSteps != null) {
      yield r'upgradeSteps';
      yield serializers.serialize(
        object.upgradeSteps,
        specifiedType: const FullType(BuiltList, [
          FullType(AgentAppTemplateStartStepsInner),
        ]),
      );
    }
    if (object.deleteSteps != null) {
      yield r'deleteSteps';
      yield serializers.serialize(
        object.deleteSteps,
        specifiedType: const FullType(BuiltList, [
          FullType(AgentAppTemplateStartStepsInner),
        ]),
      );
    }
    if (object.rollbackSteps != null) {
      yield r'rollbackSteps';
      yield serializers.serialize(
        object.rollbackSteps,
        specifiedType: const FullType(BuiltList, [
          FullType(AgentAppTemplateStartStepsInner),
        ]),
      );
    }
    if (object.restartSteps != null) {
      yield r'restartSteps';
      yield serializers.serialize(
        object.restartSteps,
        specifiedType: const FullType(BuiltList, [
          FullType(AgentAppTemplateStartStepsInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppTemplate object, {
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
    required AgentAppTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'appType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AgentApplicationType),
                  )
                  as AgentApplicationType;
          result.appType = valueDes;
          break;
        case r'configType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentAppConfigType),
                  )
                  as AgentAppConfigType?;
          if (valueDes == null) continue;
          result.configType = valueDes;
          break;
        case r'currentVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.currentVersion = valueDes;
          break;
        case r'nextVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextVersion = valueDes;
          break;
        case r'startSteps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AgentAppTemplateStartStepsInner),
                    ]),
                  )
                  as BuiltList<AgentAppTemplateStartStepsInner>?;
          if (valueDes == null) continue;
          result.startSteps.replace(valueDes);
          break;
        case r'upgradeSteps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AgentAppTemplateStartStepsInner),
                    ]),
                  )
                  as BuiltList<AgentAppTemplateStartStepsInner>?;
          if (valueDes == null) continue;
          result.upgradeSteps.replace(valueDes);
          break;
        case r'deleteSteps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AgentAppTemplateStartStepsInner),
                    ]),
                  )
                  as BuiltList<AgentAppTemplateStartStepsInner>?;
          if (valueDes == null) continue;
          result.deleteSteps.replace(valueDes);
          break;
        case r'rollbackSteps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AgentAppTemplateStartStepsInner),
                    ]),
                  )
                  as BuiltList<AgentAppTemplateStartStepsInner>?;
          if (valueDes == null) continue;
          result.rollbackSteps.replace(valueDes);
          break;
        case r'restartSteps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AgentAppTemplateStartStepsInner),
                    ]),
                  )
                  as BuiltList<AgentAppTemplateStartStepsInner>?;
          if (valueDes == null) continue;
          result.restartSteps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentAppTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppTemplateBuilder();
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

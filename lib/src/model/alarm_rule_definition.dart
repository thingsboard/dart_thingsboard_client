// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/debug_settings.dart';
import 'package:thingsboard_client/src/model/calculated_field_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_rule_definition.g.dart';

/// AlarmRuleDefinition
///
/// Properties:
/// * [id] - JSON object with the Alarm Rule Id. Referencing non-existing Alarm Rule Id will cause error.
/// * [createdTime] - Timestamp of the alarm rule creation, in milliseconds
/// * [tenantId]
/// * [entityId]
/// * [name] - User defined name of the alarm rule.
/// * [debugSettings] - Debug settings object.
/// * [configurationVersion] - Version of alarm rule configuration.
/// * [configuration]
/// * [version]
/// * [additionalInfo] - Additional parameters of the alarm rule. May include: 'description' (string).
/// * [debugMode]
@BuiltValue()
abstract class AlarmRuleDefinition
    implements Built<AlarmRuleDefinition, AlarmRuleDefinitionBuilder> {
  /// JSON object with the Alarm Rule Id. Referencing non-existing Alarm Rule Id will cause error.
  @BuiltValueField(wireName: r'id')
  CalculatedFieldId? get id;

  /// Timestamp of the alarm rule creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'entityId')
  EntityId? get entityId;

  /// User defined name of the alarm rule.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Debug settings object.
  @BuiltValueField(wireName: r'debugSettings')
  DebugSettings? get debugSettings;

  /// Version of alarm rule configuration.
  @BuiltValueField(wireName: r'configurationVersion')
  int? get configurationVersion;

  @BuiltValueField(wireName: r'configuration')
  AlarmCalculatedFieldConfiguration get configuration;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Additional parameters of the alarm rule. May include: 'description' (string).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  @Deprecated('debugMode has been deprecated')
  @BuiltValueField(wireName: r'debugMode')
  bool? get debugMode;

  AlarmRuleDefinition._();

  factory AlarmRuleDefinition([void updates(AlarmRuleDefinitionBuilder b)]) =
      _$AlarmRuleDefinition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmRuleDefinitionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmRuleDefinition> get serializer =>
      _$AlarmRuleDefinitionSerializer();
}

class _$AlarmRuleDefinitionSerializer
    implements PrimitiveSerializer<AlarmRuleDefinition> {
  @override
  final Iterable<Type> types = const [
    AlarmRuleDefinition,
    _$AlarmRuleDefinition,
  ];

  @override
  final String wireName = r'AlarmRuleDefinition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmRuleDefinition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(CalculatedFieldId),
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
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType(EntityId),
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
    if (object.configurationVersion != null) {
      yield r'configurationVersion';
      yield serializers.serialize(
        object.configurationVersion,
        specifiedType: const FullType(int),
      );
    }
    yield r'configuration';
    yield serializers.serialize(
      object.configuration,
      specifiedType: const FullType(AlarmCalculatedFieldConfiguration),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
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
    AlarmRuleDefinition object, {
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
    required AlarmRuleDefinitionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CalculatedFieldId),
                  )
                  as CalculatedFieldId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
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
        case r'entityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
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
        case r'debugSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DebugSettings),
                  )
                  as DebugSettings?;
          if (valueDes == null) continue;
          result.debugSettings.replace(valueDes);
          break;
        case r'configurationVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.configurationVersion = valueDes;
          break;
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AlarmCalculatedFieldConfiguration,
                    ),
                  )
                  as AlarmCalculatedFieldConfiguration;
          result.configuration.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'additionalInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        case r'debugMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
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
  AlarmRuleDefinition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmRuleDefinitionBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_application_id.dart';
import 'package:thingsboard_client/src/model/agent_app_unit_id.dart';
import 'package:thingsboard_client/src/model/agent_app_unit_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_unit.g.dart';

/// AgentAppUnit
///
/// Properties:
/// * [id] - JSON object with the Agent App Unit Id.
/// * [createdTime] - Timestamp of the agent app unit creation, in milliseconds
/// * [tenantId] - Tenant this unit belongs to
/// * [agentApplicationId] - Agent application this unit belongs to
/// * [identifier] - Unit identifier
/// * [type] - Unit type
@BuiltValue()
abstract class AgentAppUnit
    implements Built<AgentAppUnit, AgentAppUnitBuilder> {
  /// JSON object with the Agent App Unit Id.
  @BuiltValueField(wireName: r'id')
  AgentAppUnitId? get id;

  /// Timestamp of the agent app unit creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Tenant this unit belongs to
  @BuiltValueField(wireName: r'tenantId')
  TenantId get tenantId;

  /// Agent application this unit belongs to
  @BuiltValueField(wireName: r'agentApplicationId')
  AgentApplicationId get agentApplicationId;

  /// Unit identifier
  @BuiltValueField(wireName: r'identifier')
  String get identifier;

  /// Unit type
  @BuiltValueField(wireName: r'type')
  AgentAppUnitType get type;
  // enum typeEnum {  CONTAINER,  VOLUME,  NETWORK,  };

  AgentAppUnit._();

  factory AgentAppUnit([void updates(AgentAppUnitBuilder b)]) = _$AgentAppUnit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppUnitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppUnit> get serializer => _$AgentAppUnitSerializer();
}

class _$AgentAppUnitSerializer implements PrimitiveSerializer<AgentAppUnit> {
  @override
  final Iterable<Type> types = const [AgentAppUnit, _$AgentAppUnit];

  @override
  final String wireName = r'AgentAppUnit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppUnit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AgentAppUnitId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    yield r'tenantId';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(TenantId),
    );
    yield r'agentApplicationId';
    yield serializers.serialize(
      object.agentApplicationId,
      specifiedType: const FullType(AgentApplicationId),
    );
    yield r'identifier';
    yield serializers.serialize(
      object.identifier,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AgentAppUnitType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppUnit object, {
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
    required AgentAppUnitBuilder result,
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
                    specifiedType: const FullType.nullable(AgentAppUnitId),
                  )
                  as AgentAppUnitId?;
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
                    specifiedType: const FullType(TenantId),
                  )
                  as TenantId;
          result.tenantId.replace(valueDes);
          break;
        case r'agentApplicationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AgentApplicationId),
                  )
                  as AgentApplicationId;
          result.agentApplicationId.replace(valueDes);
          break;
        case r'identifier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.identifier = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AgentAppUnitType),
                  )
                  as AgentAppUnitType;
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
  AgentAppUnit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppUnitBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_application_id.dart';
import 'package:thingsboard_client/src/model/agent_id.dart';
import 'package:thingsboard_client/src/model/skip_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skipped_app.g.dart';

/// SkippedApp
///
/// Properties:
/// * [agentId] - Agent Id owning the application
/// * [agentName] - Agent name
/// * [applicationId] - Application Id
/// * [applicationName] - Application name
/// * [reason] - Reason for skipping
/// * [msg] - Optional message in case of a failure
@BuiltValue()
abstract class SkippedApp implements Built<SkippedApp, SkippedAppBuilder> {
  /// Agent Id owning the application
  @BuiltValueField(wireName: r'agentId')
  AgentId? get agentId;

  /// Agent name
  @BuiltValueField(wireName: r'agentName')
  String? get agentName;

  /// Application Id
  @BuiltValueField(wireName: r'applicationId')
  AgentApplicationId? get applicationId;

  /// Application name
  @BuiltValueField(wireName: r'applicationName')
  String? get applicationName;

  /// Reason for skipping
  @BuiltValueField(wireName: r'reason')
  SkipReason? get reason;
  // enum reasonEnum {  VERSION_MISMATCH,  ACTIVE_EVENT,  RATE_LIMIT_EXCEEDED,  ERROR,  };

  /// Optional message in case of a failure
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  SkippedApp._();

  factory SkippedApp([void updates(SkippedAppBuilder b)]) = _$SkippedApp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkippedAppBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkippedApp> get serializer => _$SkippedAppSerializer();
}

class _$SkippedAppSerializer implements PrimitiveSerializer<SkippedApp> {
  @override
  final Iterable<Type> types = const [SkippedApp, _$SkippedApp];

  @override
  final String wireName = r'SkippedApp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkippedApp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.agentId != null) {
      yield r'agentId';
      yield serializers.serialize(
        object.agentId,
        specifiedType: const FullType(AgentId),
      );
    }
    if (object.agentName != null) {
      yield r'agentName';
      yield serializers.serialize(
        object.agentName,
        specifiedType: const FullType(String),
      );
    }
    if (object.applicationId != null) {
      yield r'applicationId';
      yield serializers.serialize(
        object.applicationId,
        specifiedType: const FullType(AgentApplicationId),
      );
    }
    if (object.applicationName != null) {
      yield r'applicationName';
      yield serializers.serialize(
        object.applicationName,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(SkipReason),
      );
    }
    if (object.msg != null) {
      yield r'msg';
      yield serializers.serialize(
        object.msg,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SkippedApp object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkippedAppBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'agentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentId),
          ) as AgentId?;
          if (valueDes == null) continue;
          result.agentId.replace(valueDes);
          break;
        case r'agentName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentName = valueDes;
          break;
        case r'applicationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentApplicationId),
          ) as AgentApplicationId?;
          if (valueDes == null) continue;
          result.applicationId.replace(valueDes);
          break;
        case r'applicationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.applicationName = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SkipReason),
          ) as SkipReason?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.msg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SkippedApp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkippedAppBuilder();
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



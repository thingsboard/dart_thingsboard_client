// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_application.dart';
import 'package:thingsboard_client/src/model/agent_app_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_install_response.g.dart';

/// Response payload for the install-agent-application endpoint. Carries both the created application and the INSTALL event so the caller can open a progress dialog without a second round-trip.
///
/// Properties:
/// * [application] - The newly created agent application.
/// * [event] - The INSTALL event created alongside the application.
@BuiltValue()
abstract class AgentAppInstallResponse
    implements Built<AgentAppInstallResponse, AgentAppInstallResponseBuilder> {
  /// The newly created agent application.
  @BuiltValueField(wireName: r'application')
  AgentApplication? get application;

  /// The INSTALL event created alongside the application.
  @BuiltValueField(wireName: r'event')
  AgentAppEvent? get event;

  AgentAppInstallResponse._();

  factory AgentAppInstallResponse([
    void updates(AgentAppInstallResponseBuilder b),
  ]) = _$AgentAppInstallResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppInstallResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppInstallResponse> get serializer =>
      _$AgentAppInstallResponseSerializer();
}

class _$AgentAppInstallResponseSerializer
    implements PrimitiveSerializer<AgentAppInstallResponse> {
  @override
  final Iterable<Type> types = const [
    AgentAppInstallResponse,
    _$AgentAppInstallResponse,
  ];

  @override
  final String wireName = r'AgentAppInstallResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppInstallResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.application != null) {
      yield r'application';
      yield serializers.serialize(
        object.application,
        specifiedType: const FullType(AgentApplication),
      );
    }
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(AgentAppEvent),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppInstallResponse object, {
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
    required AgentAppInstallResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'application':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentApplication),
                  )
                  as AgentApplication?;
          if (valueDes == null) continue;
          result.application.replace(valueDes);
          break;
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentAppEvent),
                  )
                  as AgentAppEvent?;
          if (valueDes == null) continue;
          result.event.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentAppInstallResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppInstallResponseBuilder();
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

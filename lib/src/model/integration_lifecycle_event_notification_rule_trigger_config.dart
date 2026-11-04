// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/integration_type.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/component_lifecycle_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_lifecycle_event_notification_rule_trigger_config.g.dart';

/// IntegrationLifecycleEventNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [integrationTypes]
/// * [integrations]
/// * [notifyOn]
/// * [onlyOnError]
@BuiltValue()
abstract class IntegrationLifecycleEventNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          IntegrationLifecycleEventNotificationRuleTriggerConfig,
          IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'integrationTypes')
  BuiltSet<IntegrationType>? get integrationTypes;

  @BuiltValueField(wireName: r'onlyOnError')
  bool? get onlyOnError;

  @BuiltValueField(wireName: r'notifyOn')
  BuiltSet<ComponentLifecycleEvent>? get notifyOn;

  @BuiltValueField(wireName: r'integrations')
  BuiltSet<String>? get integrations;

  IntegrationLifecycleEventNotificationRuleTriggerConfig._();

  factory IntegrationLifecycleEventNotificationRuleTriggerConfig([
    void updates(
      IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder b,
    ),
  ]) = _$IntegrationLifecycleEventNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationLifecycleEventNotificationRuleTriggerConfig>
  get serializer =>
      _$IntegrationLifecycleEventNotificationRuleTriggerConfigSerializer();
}

class _$IntegrationLifecycleEventNotificationRuleTriggerConfigSerializer
    implements
        PrimitiveSerializer<
          IntegrationLifecycleEventNotificationRuleTriggerConfig
        > {
  @override
  final Iterable<Type> types = const [
    IntegrationLifecycleEventNotificationRuleTriggerConfig,
    _$IntegrationLifecycleEventNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName =
      r'IntegrationLifecycleEventNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationLifecycleEventNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    if (object.integrationTypes != null) {
      yield r'integrationTypes';
      yield serializers.serialize(
        object.integrationTypes,
        specifiedType: const FullType(BuiltSet, [FullType(IntegrationType)]),
      );
    }
    if (object.onlyOnError != null) {
      yield r'onlyOnError';
      yield serializers.serialize(
        object.onlyOnError,
        specifiedType: const FullType(bool),
      );
    }
    if (object.integrations != null) {
      yield r'integrations';
      yield serializers.serialize(
        object.integrations,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.notifyOn != null) {
      yield r'notifyOn';
      yield serializers.serialize(
        object.notifyOn,
        specifiedType: const FullType(BuiltSet, [
          FullType(ComponentLifecycleEvent),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntegrationLifecycleEventNotificationRuleTriggerConfig object, {
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
    required IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder
    result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationRuleTriggerType),
                  )
                  as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        case r'integrationTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(IntegrationType),
                    ]),
                  )
                  as BuiltSet<IntegrationType>?;
          if (valueDes == null) continue;
          result.integrationTypes.replace(valueDes);
          break;
        case r'onlyOnError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.onlyOnError = valueDes;
          break;
        case r'integrations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.integrations.replace(valueDes);
          break;
        case r'notifyOn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(ComponentLifecycleEvent),
                    ]),
                  )
                  as BuiltSet<ComponentLifecycleEvent>?;
          if (valueDes == null) continue;
          result.notifyOn.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntegrationLifecycleEventNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder();
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

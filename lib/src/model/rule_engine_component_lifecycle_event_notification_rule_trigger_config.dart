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
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/component_lifecycle_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_engine_component_lifecycle_event_notification_rule_trigger_config.g.dart';

/// RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [ruleChains]
/// * [ruleChainEvents]
/// * [onlyRuleChainLifecycleFailures]
/// * [trackRuleNodeEvents]
/// * [ruleNodeEvents]
/// * [onlyRuleNodeLifecycleFailures]
@BuiltValue()
abstract class RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig,
          RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'trackRuleNodeEvents')
  bool? get trackRuleNodeEvents;

  @BuiltValueField(wireName: r'ruleNodeEvents')
  BuiltSet<ComponentLifecycleEvent>? get ruleNodeEvents;

  @BuiltValueField(wireName: r'ruleChains')
  BuiltSet<String>? get ruleChains;

  @BuiltValueField(wireName: r'ruleChainEvents')
  BuiltSet<ComponentLifecycleEvent>? get ruleChainEvents;

  @BuiltValueField(wireName: r'onlyRuleNodeLifecycleFailures')
  bool? get onlyRuleNodeLifecycleFailures;

  @BuiltValueField(wireName: r'onlyRuleChainLifecycleFailures')
  bool? get onlyRuleChainLifecycleFailures;

  RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig._();

  factory RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig([
    void updates(
      RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder b,
    ),
  ]) = _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<
    RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig
  >
  get serializer =>
      _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigSerializer();
}

class _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigSerializer
    implements
        PrimitiveSerializer<
          RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig
        > {
  @override
  final Iterable<Type> types = const [
    RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig,
    _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName =
      r'RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.trackRuleNodeEvents != null) {
      yield r'trackRuleNodeEvents';
      yield serializers.serialize(
        object.trackRuleNodeEvents,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ruleNodeEvents != null) {
      yield r'ruleNodeEvents';
      yield serializers.serialize(
        object.ruleNodeEvents,
        specifiedType: const FullType(BuiltSet, [
          FullType(ComponentLifecycleEvent),
        ]),
      );
    }
    if (object.ruleChains != null) {
      yield r'ruleChains';
      yield serializers.serialize(
        object.ruleChains,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    if (object.ruleChainEvents != null) {
      yield r'ruleChainEvents';
      yield serializers.serialize(
        object.ruleChainEvents,
        specifiedType: const FullType(BuiltSet, [
          FullType(ComponentLifecycleEvent),
        ]),
      );
    }
    if (object.onlyRuleNodeLifecycleFailures != null) {
      yield r'onlyRuleNodeLifecycleFailures';
      yield serializers.serialize(
        object.onlyRuleNodeLifecycleFailures,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onlyRuleChainLifecycleFailures != null) {
      yield r'onlyRuleChainLifecycleFailures';
      yield serializers.serialize(
        object.onlyRuleChainLifecycleFailures,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig object, {
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
    required RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder
    result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trackRuleNodeEvents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.trackRuleNodeEvents = valueDes;
          break;
        case r'ruleNodeEvents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(ComponentLifecycleEvent),
                    ]),
                  )
                  as BuiltSet<ComponentLifecycleEvent>?;
          if (valueDes == null) continue;
          result.ruleNodeEvents.replace(valueDes);
          break;
        case r'ruleChains':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.ruleChains.replace(valueDes);
          break;
        case r'triggerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationRuleTriggerType),
                  )
                  as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        case r'ruleChainEvents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(ComponentLifecycleEvent),
                    ]),
                  )
                  as BuiltSet<ComponentLifecycleEvent>?;
          if (valueDes == null) continue;
          result.ruleChainEvents.replace(valueDes);
          break;
        case r'onlyRuleNodeLifecycleFailures':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.onlyRuleNodeLifecycleFailures = valueDes;
          break;
        case r'onlyRuleChainLifecycleFailures':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.onlyRuleChainLifecycleFailures = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder();
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

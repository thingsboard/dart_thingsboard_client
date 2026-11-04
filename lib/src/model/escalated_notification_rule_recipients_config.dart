// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/notification_rule_recipients_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'escalated_notification_rule_recipients_config.g.dart';

/// Escalated notification rule recipients configuration
///
/// Properties:
/// * [triggerType]
/// * [escalationTable]
@BuiltValue()
abstract class EscalatedNotificationRuleRecipientsConfig
    implements
        NotificationRuleRecipientsConfig,
        Built<
          EscalatedNotificationRuleRecipientsConfig,
          EscalatedNotificationRuleRecipientsConfigBuilder
        > {
  @BuiltValueField(wireName: r'escalationTable')
  BuiltMap<String, BuiltList<String>> get escalationTable;

  EscalatedNotificationRuleRecipientsConfig._();

  factory EscalatedNotificationRuleRecipientsConfig([
    void updates(EscalatedNotificationRuleRecipientsConfigBuilder b),
  ]) = _$EscalatedNotificationRuleRecipientsConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EscalatedNotificationRuleRecipientsConfigBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EscalatedNotificationRuleRecipientsConfig> get serializer =>
      _$EscalatedNotificationRuleRecipientsConfigSerializer();
}

class _$EscalatedNotificationRuleRecipientsConfigSerializer
    implements PrimitiveSerializer<EscalatedNotificationRuleRecipientsConfig> {
  @override
  final Iterable<Type> types = const [
    EscalatedNotificationRuleRecipientsConfig,
    _$EscalatedNotificationRuleRecipientsConfig,
  ];

  @override
  final String wireName = r'EscalatedNotificationRuleRecipientsConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EscalatedNotificationRuleRecipientsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'escalationTable';
    yield serializers.serialize(
      object.escalationTable,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(BuiltList, [FullType(String)]),
      ]),
    );
    if (object.triggerType != null) {
      yield r'triggerType';
      yield serializers.serialize(
        object.triggerType,
        specifiedType: const FullType(NotificationRuleTriggerType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EscalatedNotificationRuleRecipientsConfig object, {
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
    required EscalatedNotificationRuleRecipientsConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'escalationTable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(BuiltList, [FullType(String)]),
                    ]),
                  )
                  as BuiltMap<String, BuiltList<String>>;
          result.escalationTable.replace(valueDes);
          break;
        case r'triggerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationRuleTriggerType,
                    ),
                  )
                  as NotificationRuleTriggerType?;
          if (valueDes == null) continue;
          result.triggerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EscalatedNotificationRuleRecipientsConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EscalatedNotificationRuleRecipientsConfigBuilder();
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

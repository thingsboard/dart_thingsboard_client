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
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edge_communication_failure_notification_rule_trigger_config.g.dart';

/// EdgeCommunicationFailureNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [edges]
@BuiltValue()
abstract class EdgeCommunicationFailureNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          EdgeCommunicationFailureNotificationRuleTriggerConfig,
          EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'edges')
  BuiltSet<String>? get edges;

  EdgeCommunicationFailureNotificationRuleTriggerConfig._();

  factory EdgeCommunicationFailureNotificationRuleTriggerConfig([
    void updates(
      EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder b,
    ),
  ]) = _$EdgeCommunicationFailureNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder b,
  ) => b..triggerType = NotificationRuleTriggerType.EDGE_COMMUNICATION_FAILURE;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeCommunicationFailureNotificationRuleTriggerConfig>
  get serializer =>
      _$EdgeCommunicationFailureNotificationRuleTriggerConfigSerializer();
}

class _$EdgeCommunicationFailureNotificationRuleTriggerConfigSerializer
    implements
        PrimitiveSerializer<
          EdgeCommunicationFailureNotificationRuleTriggerConfig
        > {
  @override
  final Iterable<Type> types = const [
    EdgeCommunicationFailureNotificationRuleTriggerConfig,
    _$EdgeCommunicationFailureNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName =
      r'EdgeCommunicationFailureNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeCommunicationFailureNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.edges != null) {
      yield r'edges';
      yield serializers.serialize(
        object.edges,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EdgeCommunicationFailureNotificationRuleTriggerConfig object, {
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
    required EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder
    result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'edges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.edges.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdgeCommunicationFailureNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder();
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

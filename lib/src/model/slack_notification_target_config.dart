// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/slack_conversation.dart';
import 'package:thingsboard_client/src/model/slack_conversation_type.dart';
import 'package:thingsboard_client/src/model/notification_target_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'slack_notification_target_config.g.dart';

/// SlackNotificationTargetConfig
///
/// Properties:
/// * [description]
/// * [type]
/// * [conversationType]
/// * [conversation]
@BuiltValue()
abstract class SlackNotificationTargetConfig
    implements
        NotificationTargetConfig,
        Built<
          SlackNotificationTargetConfig,
          SlackNotificationTargetConfigBuilder
        > {
  @BuiltValueField(wireName: r'conversationType')
  SlackConversationType? get conversationType;
  // enum conversationTypeEnum {  DIRECT,  PUBLIC_CHANNEL,  PRIVATE_CHANNEL,  };

  @BuiltValueField(wireName: r'conversation')
  SlackConversation get conversation;

  SlackNotificationTargetConfig._();

  factory SlackNotificationTargetConfig([
    void updates(SlackNotificationTargetConfigBuilder b),
  ]) = _$SlackNotificationTargetConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SlackNotificationTargetConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SlackNotificationTargetConfig> get serializer =>
      _$SlackNotificationTargetConfigSerializer();
}

class _$SlackNotificationTargetConfigSerializer
    implements PrimitiveSerializer<SlackNotificationTargetConfig> {
  @override
  final Iterable<Type> types = const [
    SlackNotificationTargetConfig,
    _$SlackNotificationTargetConfig,
  ];

  @override
  final String wireName = r'SlackNotificationTargetConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SlackNotificationTargetConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conversationType != null) {
      yield r'conversationType';
      yield serializers.serialize(
        object.conversationType,
        specifiedType: const FullType(SlackConversationType),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'conversation';
    yield serializers.serialize(
      object.conversation,
      specifiedType: const FullType(SlackConversation),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SlackNotificationTargetConfig object, {
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
    required SlackNotificationTargetConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conversationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SlackConversationType,
                    ),
                  )
                  as SlackConversationType?;
          if (valueDes == null) continue;
          result.conversationType = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'conversation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SlackConversation),
                  )
                  as SlackConversation;
          result.conversation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SlackNotificationTargetConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SlackNotificationTargetConfigBuilder();
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

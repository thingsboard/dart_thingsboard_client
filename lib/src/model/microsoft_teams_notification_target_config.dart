// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_target_config.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'microsoft_teams_notification_target_config.g.dart';

/// MicrosoftTeamsNotificationTargetConfig
///
/// Properties:
/// * [description]
/// * [type]
/// * [webhookUrl]
/// * [channelName]
/// * [useOldApi]
/// * [email]
/// * [firstName]
/// * [id]
/// * [lastName]
/// * [title]
@BuiltValue()
abstract class MicrosoftTeamsNotificationTargetConfig
    implements
        NotificationTargetConfig,
        Built<
          MicrosoftTeamsNotificationTargetConfig,
          MicrosoftTeamsNotificationTargetConfigBuilder
        > {
  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'useOldApi')
  bool? get useOldApi;

  @BuiltValueField(wireName: r'channelName')
  String get channelName;

  @BuiltValueField(wireName: r'id')
  JsonObject? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'webhookUrl')
  String get webhookUrl;

  @BuiltValueField(wireName: r'email')
  String? get email;

  MicrosoftTeamsNotificationTargetConfig._();

  factory MicrosoftTeamsNotificationTargetConfig([
    void updates(MicrosoftTeamsNotificationTargetConfigBuilder b),
  ]) = _$MicrosoftTeamsNotificationTargetConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MicrosoftTeamsNotificationTargetConfigBuilder b) =>
      b..type = r'MICROSOFT_TEAMS';

  @BuiltValueSerializer(custom: true)
  static Serializer<MicrosoftTeamsNotificationTargetConfig> get serializer =>
      _$MicrosoftTeamsNotificationTargetConfigSerializer();
}

class _$MicrosoftTeamsNotificationTargetConfigSerializer
    implements PrimitiveSerializer<MicrosoftTeamsNotificationTargetConfig> {
  @override
  final Iterable<Type> types = const [
    MicrosoftTeamsNotificationTargetConfig,
    _$MicrosoftTeamsNotificationTargetConfig,
  ];

  @override
  final String wireName = r'MicrosoftTeamsNotificationTargetConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MicrosoftTeamsNotificationTargetConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.useOldApi != null) {
      yield r'useOldApi';
      yield serializers.serialize(
        object.useOldApi,
        specifiedType: const FullType(bool),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'channelName';
    yield serializers.serialize(
      object.channelName,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'webhookUrl';
    yield serializers.serialize(
      object.webhookUrl,
      specifiedType: const FullType(String),
    );
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MicrosoftTeamsNotificationTargetConfig object, {
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
    required MicrosoftTeamsNotificationTargetConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firstName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'useOldApi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useOldApi = valueDes;
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
        case r'channelName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.channelName = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
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
        case r'webhookUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.webhookUrl = valueDes;
          break;
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MicrosoftTeamsNotificationTargetConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MicrosoftTeamsNotificationTargetConfigBuilder();
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

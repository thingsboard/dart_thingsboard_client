// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/platform_users_notification_target_config.dart';
import 'package:thingsboard_client/src/model/microsoft_teams_notification_target_config.dart';
import 'package:thingsboard_client/src/model/slack_notification_target_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_target_config.g.dart';

/// NotificationTargetConfig
///
/// Properties:
/// * [description] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class NotificationTargetConfig  {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'MICROSOFT_TEAMS': MicrosoftTeamsNotificationTargetConfig,
    r'PLATFORM_USERS': PlatformUsersNotificationTargetConfig,
    r'SLACK': SlackNotificationTargetConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationTargetConfig> get serializer => _$NotificationTargetConfigSerializer();
}

extension NotificationTargetConfigDiscriminatorExt on NotificationTargetConfig {
    String? get discriminatorValue {
        if (this is MicrosoftTeamsNotificationTargetConfig) {
            return r'MICROSOFT_TEAMS';
        }
        if (this is PlatformUsersNotificationTargetConfig) {
            return r'PLATFORM_USERS';
        }
        if (this is SlackNotificationTargetConfig) {
            return r'SLACK';
        }
        return null;
    }
}
extension NotificationTargetConfigBuilderDiscriminatorExt on NotificationTargetConfigBuilder {
    String? get discriminatorValue {
        if (this is MicrosoftTeamsNotificationTargetConfigBuilder) {
            return r'MICROSOFT_TEAMS';
        }
        if (this is PlatformUsersNotificationTargetConfigBuilder) {
            return r'PLATFORM_USERS';
        }
        if (this is SlackNotificationTargetConfigBuilder) {
            return r'SLACK';
        }
        return null;
    }
}

class _$NotificationTargetConfigSerializer implements PrimitiveSerializer<NotificationTargetConfig> {
  @override
  final Iterable<Type> types = const [NotificationTargetConfig];

  @override
  final String wireName = r'NotificationTargetConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationTargetConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationTargetConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is MicrosoftTeamsNotificationTargetConfig) {
      return serializers.serialize(object, specifiedType: FullType(MicrosoftTeamsNotificationTargetConfig))!;
    }
    if (object is PlatformUsersNotificationTargetConfig) {
      return serializers.serialize(object, specifiedType: FullType(PlatformUsersNotificationTargetConfig))!;
    }
    if (object is SlackNotificationTargetConfig) {
      return serializers.serialize(object, specifiedType: FullType(SlackNotificationTargetConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  NotificationTargetConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(NotificationTargetConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'MICROSOFT_TEAMS':
        return serializers.deserialize(serialized, specifiedType: FullType(MicrosoftTeamsNotificationTargetConfig)) as MicrosoftTeamsNotificationTargetConfig;
      case r'PLATFORM_USERS':
        return serializers.deserialize(serialized, specifiedType: FullType(PlatformUsersNotificationTargetConfig)) as PlatformUsersNotificationTargetConfig;
      case r'SLACK':
        return serializers.deserialize(serialized, specifiedType: FullType(SlackNotificationTargetConfig)) as SlackNotificationTargetConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($NotificationTargetConfig)) as $NotificationTargetConfig;
    }
  }
}


/// a concrete implementation of [NotificationTargetConfig], since [NotificationTargetConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NotificationTargetConfig implements NotificationTargetConfig, Built<$NotificationTargetConfig, $NotificationTargetConfigBuilder> {
  $NotificationTargetConfig._();

  factory $NotificationTargetConfig([void Function($NotificationTargetConfigBuilder)? updates]) = _$$NotificationTargetConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NotificationTargetConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NotificationTargetConfig> get serializer => _$$NotificationTargetConfigSerializer();
}

class _$$NotificationTargetConfigSerializer implements PrimitiveSerializer<$NotificationTargetConfig> {
  @override
  final Iterable<Type> types = const [$NotificationTargetConfig, _$$NotificationTargetConfig];

  @override
  final String wireName = r'$NotificationTargetConfig';

  @override
  Object serialize(
    Serializers serializers,
    $NotificationTargetConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(NotificationTargetConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationTargetConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  $NotificationTargetConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NotificationTargetConfigBuilder();
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


// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/api_feature.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/api_usage_state_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_usage_limit_notification_rule_trigger_config.g.dart';

/// ApiUsageLimitNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [apiFeatures]
/// * [notifyOn]
@BuiltValue()
abstract class ApiUsageLimitNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          ApiUsageLimitNotificationRuleTriggerConfig,
          ApiUsageLimitNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'apiFeatures')
  BuiltSet<ApiFeature>? get apiFeatures;

  @BuiltValueField(wireName: r'notifyOn')
  BuiltSet<ApiUsageStateValue>? get notifyOn;

  ApiUsageLimitNotificationRuleTriggerConfig._();

  factory ApiUsageLimitNotificationRuleTriggerConfig([
    void updates(ApiUsageLimitNotificationRuleTriggerConfigBuilder b),
  ]) = _$ApiUsageLimitNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiUsageLimitNotificationRuleTriggerConfigBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiUsageLimitNotificationRuleTriggerConfig>
  get serializer => _$ApiUsageLimitNotificationRuleTriggerConfigSerializer();
}

class _$ApiUsageLimitNotificationRuleTriggerConfigSerializer
    implements PrimitiveSerializer<ApiUsageLimitNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [
    ApiUsageLimitNotificationRuleTriggerConfig,
    _$ApiUsageLimitNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName = r'ApiUsageLimitNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiUsageLimitNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiFeatures != null) {
      yield r'apiFeatures';
      yield serializers.serialize(
        object.apiFeatures,
        specifiedType: const FullType(BuiltSet, [FullType(ApiFeature)]),
      );
    }
    if (object.notifyOn != null) {
      yield r'notifyOn';
      yield serializers.serialize(
        object.notifyOn,
        specifiedType: const FullType(BuiltSet, [FullType(ApiUsageStateValue)]),
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
    ApiUsageLimitNotificationRuleTriggerConfig object, {
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
    required ApiUsageLimitNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiFeatures':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(ApiFeature),
                    ]),
                  )
                  as BuiltSet<ApiFeature>?;
          if (valueDes == null) continue;
          result.apiFeatures.replace(valueDes);
          break;
        case r'notifyOn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(ApiUsageStateValue),
                    ]),
                  )
                  as BuiltSet<ApiUsageStateValue>?;
          if (valueDes == null) continue;
          result.notifyOn.replace(valueDes);
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
  ApiUsageLimitNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiUsageLimitNotificationRuleTriggerConfigBuilder();
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

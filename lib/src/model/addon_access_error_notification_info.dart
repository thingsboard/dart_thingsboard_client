// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/addon_type.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'addon_access_error_notification_info.g.dart';

/// AddonAccessErrorNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [addonType]
/// * [addonNameOverride]
/// * [userEmail]
/// * [checkConfigurationActionLabel]
/// * [checkConfigurationLink]
/// * [baseUrl]
@BuiltValue()
abstract class AddonAccessErrorNotificationInfo
    implements
        NotificationInfo,
        Built<
          AddonAccessErrorNotificationInfo,
          AddonAccessErrorNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'checkConfigurationActionLabel')
  String? get checkConfigurationActionLabel;

  @BuiltValueField(wireName: r'baseUrl')
  String? get baseUrl;

  @BuiltValueField(wireName: r'addonNameOverride')
  String? get addonNameOverride;

  @BuiltValueField(wireName: r'checkConfigurationLink')
  String? get checkConfigurationLink;

  @BuiltValueField(wireName: r'addonType')
  AddonType? get addonType;
  // enum addonTypeEnum {  EDGE,  TRENDZ,  WHITE_LABELING,  PROFESSIONAL_UPGRADE,  };

  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  AddonAccessErrorNotificationInfo._();

  factory AddonAccessErrorNotificationInfo([
    void updates(AddonAccessErrorNotificationInfoBuilder b),
  ]) = _$AddonAccessErrorNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddonAccessErrorNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.AddonAccessErrorNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<AddonAccessErrorNotificationInfo> get serializer =>
      _$AddonAccessErrorNotificationInfoSerializer();
}

class _$AddonAccessErrorNotificationInfoSerializer
    implements PrimitiveSerializer<AddonAccessErrorNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    AddonAccessErrorNotificationInfo,
    _$AddonAccessErrorNotificationInfo,
  ];

  @override
  final String wireName = r'AddonAccessErrorNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddonAccessErrorNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.checkConfigurationActionLabel != null) {
      yield r'checkConfigurationActionLabel';
      yield serializers.serialize(
        object.checkConfigurationActionLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.baseUrl != null) {
      yield r'baseUrl';
      yield serializers.serialize(
        object.baseUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.addonNameOverride != null) {
      yield r'addonNameOverride';
      yield serializers.serialize(
        object.addonNameOverride,
        specifiedType: const FullType(String),
      );
    }
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.checkConfigurationLink != null) {
      yield r'checkConfigurationLink';
      yield serializers.serialize(
        object.checkConfigurationLink,
        specifiedType: const FullType(String),
      );
    }
    if (object.stateEntityId != null) {
      yield r'stateEntityId';
      yield serializers.serialize(
        object.stateEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.addonType != null) {
      yield r'addonType';
      yield serializers.serialize(
        object.addonType,
        specifiedType: const FullType(AddonType),
      );
    }
    if (object.userEmail != null) {
      yield r'userEmail';
      yield serializers.serialize(
        object.userEmail,
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
    AddonAccessErrorNotificationInfo object, {
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
    required AddonAccessErrorNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'checkConfigurationActionLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.checkConfigurationActionLabel = valueDes;
          break;
        case r'baseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.baseUrl = valueDes;
          break;
        case r'addonNameOverride':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.addonNameOverride = valueDes;
          break;
        case r'dashboardId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DashboardId),
                  )
                  as DashboardId?;
          if (valueDes == null) continue;
          result.dashboardId.replace(valueDes);
          break;
        case r'checkConfigurationLink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.checkConfigurationLink = valueDes;
          break;
        case r'stateEntityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.stateEntityId = valueDes;
          break;
        case r'addonType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AddonType),
                  )
                  as AddonType?;
          if (valueDes == null) continue;
          result.addonType = valueDes;
          break;
        case r'userEmail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userEmail = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddonAccessErrorNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddonAccessErrorNotificationInfoBuilder();
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

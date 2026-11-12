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

part 'addon_access_request_notification_info.g.dart';

/// AddonAccessRequestNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [addonType]
/// * [addonNameOverride]
/// * [userEmail]
/// * [enableAddonActionLabel]
/// * [enableAddonLink]
/// * [baseUrl]
@BuiltValue()
abstract class AddonAccessRequestNotificationInfo
    implements
        NotificationInfo,
        Built<
          AddonAccessRequestNotificationInfo,
          AddonAccessRequestNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'baseUrl')
  String? get baseUrl;

  @BuiltValueField(wireName: r'addonNameOverride')
  String? get addonNameOverride;

  @BuiltValueField(wireName: r'addonType')
  AddonType? get addonType;
  // enum addonTypeEnum {  EDGE,  TRENDZ,  WHITE_LABELING,  PROFESSIONAL_UPGRADE,  };

  @BuiltValueField(wireName: r'enableAddonActionLabel')
  String? get enableAddonActionLabel;

  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  @BuiltValueField(wireName: r'enableAddonLink')
  String? get enableAddonLink;

  AddonAccessRequestNotificationInfo._();

  factory AddonAccessRequestNotificationInfo([
    void updates(AddonAccessRequestNotificationInfoBuilder b),
  ]) = _$AddonAccessRequestNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddonAccessRequestNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.AddonAccessRequestNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<AddonAccessRequestNotificationInfo> get serializer =>
      _$AddonAccessRequestNotificationInfoSerializer();
}

class _$AddonAccessRequestNotificationInfoSerializer
    implements PrimitiveSerializer<AddonAccessRequestNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    AddonAccessRequestNotificationInfo,
    _$AddonAccessRequestNotificationInfo,
  ];

  @override
  final String wireName = r'AddonAccessRequestNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddonAccessRequestNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.enableAddonActionLabel != null) {
      yield r'enableAddonActionLabel';
      yield serializers.serialize(
        object.enableAddonActionLabel,
        specifiedType: const FullType(String),
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
    if (object.enableAddonLink != null) {
      yield r'enableAddonLink';
      yield serializers.serialize(
        object.enableAddonLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddonAccessRequestNotificationInfo object, {
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
    required AddonAccessRequestNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'enableAddonActionLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.enableAddonActionLabel = valueDes;
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
        case r'enableAddonLink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.enableAddonLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddonAccessRequestNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddonAccessRequestNotificationInfoBuilder();
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

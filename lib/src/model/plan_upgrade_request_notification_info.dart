// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'plan_upgrade_request_notification_info.g.dart';

/// PlanUpgradeRequestNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [planName]
/// * [userEmail]
/// * [upgradePlanLink]
/// * [baseUrl]
@BuiltValue()
abstract class PlanUpgradeRequestNotificationInfo
    implements
        NotificationInfo,
        Built<
          PlanUpgradeRequestNotificationInfo,
          PlanUpgradeRequestNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'baseUrl')
  String? get baseUrl;

  @BuiltValueField(wireName: r'planName')
  String? get planName;

  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  @BuiltValueField(wireName: r'upgradePlanLink')
  String? get upgradePlanLink;

  PlanUpgradeRequestNotificationInfo._();

  factory PlanUpgradeRequestNotificationInfo([
    void updates(PlanUpgradeRequestNotificationInfoBuilder b),
  ]) = _$PlanUpgradeRequestNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlanUpgradeRequestNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.PlanUpgradeRequestNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<PlanUpgradeRequestNotificationInfo> get serializer =>
      _$PlanUpgradeRequestNotificationInfoSerializer();
}

class _$PlanUpgradeRequestNotificationInfoSerializer
    implements PrimitiveSerializer<PlanUpgradeRequestNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    PlanUpgradeRequestNotificationInfo,
    _$PlanUpgradeRequestNotificationInfo,
  ];

  @override
  final String wireName = r'PlanUpgradeRequestNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlanUpgradeRequestNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.baseUrl != null) {
      yield r'baseUrl';
      yield serializers.serialize(
        object.baseUrl,
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
    if (object.planName != null) {
      yield r'planName';
      yield serializers.serialize(
        object.planName,
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
    if (object.upgradePlanLink != null) {
      yield r'upgradePlanLink';
      yield serializers.serialize(
        object.upgradePlanLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlanUpgradeRequestNotificationInfo object, {
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
    required PlanUpgradeRequestNotificationInfoBuilder result,
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
        case r'planName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.planName = valueDes;
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
        case r'upgradePlanLink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.upgradePlanLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlanUpgradeRequestNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlanUpgradeRequestNotificationInfoBuilder();
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

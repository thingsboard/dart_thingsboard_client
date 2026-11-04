// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'new_platform_version_notification_info.g.dart';

/// NewPlatformVersionNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [latestVersion]
/// * [latestVersionReleaseNotesUrl]
/// * [upgradeInstructionsUrl]
/// * [currentVersion]
/// * [currentVersionReleaseNotesUrl]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class NewPlatformVersionNotificationInfo
    implements
        NotificationInfo,
        Built<
          NewPlatformVersionNotificationInfo,
          NewPlatformVersionNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'latestVersionReleaseNotesUrl')
  String? get latestVersionReleaseNotesUrl;

  @BuiltValueField(wireName: r'latestVersion')
  String? get latestVersion;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'currentVersionReleaseNotesUrl')
  String? get currentVersionReleaseNotesUrl;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  @BuiltValueField(wireName: r'upgradeInstructionsUrl')
  String? get upgradeInstructionsUrl;

  @BuiltValueField(wireName: r'currentVersion')
  String? get currentVersion;

  NewPlatformVersionNotificationInfo._();

  factory NewPlatformVersionNotificationInfo([
    void updates(NewPlatformVersionNotificationInfoBuilder b),
  ]) = _$NewPlatformVersionNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewPlatformVersionNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.NewPlatformVersionNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<NewPlatformVersionNotificationInfo> get serializer =>
      _$NewPlatformVersionNotificationInfoSerializer();
}

class _$NewPlatformVersionNotificationInfoSerializer
    implements PrimitiveSerializer<NewPlatformVersionNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    NewPlatformVersionNotificationInfo,
    _$NewPlatformVersionNotificationInfo,
  ];

  @override
  final String wireName = r'NewPlatformVersionNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewPlatformVersionNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.latestVersionReleaseNotesUrl != null) {
      yield r'latestVersionReleaseNotesUrl';
      yield serializers.serialize(
        object.latestVersionReleaseNotesUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.latestVersion != null) {
      yield r'latestVersion';
      yield serializers.serialize(
        object.latestVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.affectedUserId != null) {
      yield r'affectedUserId';
      yield serializers.serialize(
        object.affectedUserId,
        specifiedType: const FullType(UserId),
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
    if (object.affectedCustomerId != null) {
      yield r'affectedCustomerId';
      yield serializers.serialize(
        object.affectedCustomerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.currentVersionReleaseNotesUrl != null) {
      yield r'currentVersionReleaseNotesUrl';
      yield serializers.serialize(
        object.currentVersionReleaseNotesUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.affectedTenantId != null) {
      yield r'affectedTenantId';
      yield serializers.serialize(
        object.affectedTenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.upgradeInstructionsUrl != null) {
      yield r'upgradeInstructionsUrl';
      yield serializers.serialize(
        object.upgradeInstructionsUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.currentVersion != null) {
      yield r'currentVersion';
      yield serializers.serialize(
        object.currentVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewPlatformVersionNotificationInfo object, {
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
    required NewPlatformVersionNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'latestVersionReleaseNotesUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestVersionReleaseNotesUrl = valueDes;
          break;
        case r'latestVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestVersion = valueDes;
          break;
        case r'affectedUserId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.affectedUserId.replace(valueDes);
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
        case r'affectedCustomerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.affectedCustomerId.replace(valueDes);
          break;
        case r'currentVersionReleaseNotesUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.currentVersionReleaseNotesUrl = valueDes;
          break;
        case r'affectedTenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.affectedTenantId.replace(valueDes);
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
        case r'upgradeInstructionsUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.upgradeInstructionsUrl = valueDes;
          break;
        case r'currentVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.currentVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewPlatformVersionNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewPlatformVersionNotificationInfoBuilder();
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

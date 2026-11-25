// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'general_notification_info.g.dart';

/// GeneralNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [data]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class GeneralNotificationInfo
    implements
        NotificationInfo,
        Built<GeneralNotificationInfo, GeneralNotificationInfoBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltMap<String, String>? get data;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  GeneralNotificationInfo._();

  factory GeneralNotificationInfo([
    void updates(GeneralNotificationInfoBuilder b),
  ]) = _$GeneralNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GeneralNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.GeneralNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<GeneralNotificationInfo> get serializer =>
      _$GeneralNotificationInfoSerializer();
}

class _$GeneralNotificationInfoSerializer
    implements PrimitiveSerializer<GeneralNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    GeneralNotificationInfo,
    _$GeneralNotificationInfo,
  ];

  @override
  final String wireName = r'GeneralNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GeneralNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GeneralNotificationInfo object, {
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
    required GeneralNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GeneralNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GeneralNotificationInfoBuilder();
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

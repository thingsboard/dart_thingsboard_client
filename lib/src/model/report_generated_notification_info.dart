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
import 'package:thingsboard_client/src/model/tb_report_format.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_generated_notification_info.g.dart';

/// ReportGeneratedNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [tenantId]
/// * [customerId]
/// * [reportFormat]
/// * [reportName]
/// * [userId]
/// * [reportPublicUrl]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class ReportGeneratedNotificationInfo
    implements
        NotificationInfo,
        Built<
          ReportGeneratedNotificationInfo,
          ReportGeneratedNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'reportName')
  String? get reportName;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  @BuiltValueField(wireName: r'reportFormat')
  TbReportFormat? get reportFormat;
  // enum reportFormatEnum {  PDF,  CSV,  };

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  @BuiltValueField(wireName: r'reportPublicUrl')
  String? get reportPublicUrl;

  @BuiltValueField(wireName: r'userId')
  UserId? get userId;

  ReportGeneratedNotificationInfo._();

  factory ReportGeneratedNotificationInfo([
    void updates(ReportGeneratedNotificationInfoBuilder b),
  ]) = _$ReportGeneratedNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportGeneratedNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.ReportGeneratedNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportGeneratedNotificationInfo> get serializer =>
      _$ReportGeneratedNotificationInfoSerializer();
}

class _$ReportGeneratedNotificationInfoSerializer
    implements PrimitiveSerializer<ReportGeneratedNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    ReportGeneratedNotificationInfo,
    _$ReportGeneratedNotificationInfo,
  ];

  @override
  final String wireName = r'ReportGeneratedNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportGeneratedNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reportName != null) {
      yield r'reportName';
      yield serializers.serialize(
        object.reportName,
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
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.reportFormat != null) {
      yield r'reportFormat';
      yield serializers.serialize(
        object.reportFormat,
        specifiedType: const FullType(TbReportFormat),
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
    if (object.reportPublicUrl != null) {
      yield r'reportPublicUrl';
      yield serializers.serialize(
        object.reportPublicUrl,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(UserId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportGeneratedNotificationInfo object, {
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
    required ReportGeneratedNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reportName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reportName = valueDes;
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
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'reportFormat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TbReportFormat),
                  )
                  as TbReportFormat?;
          if (valueDes == null) continue;
          result.reportFormat = valueDes;
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
        case r'reportPublicUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reportPublicUrl = valueDes;
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
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.userId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportGeneratedNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportGeneratedNotificationInfoBuilder();
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

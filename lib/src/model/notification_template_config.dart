// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/delivery_method_notification_template.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/report_template_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_template_config.g.dart';

/// NotificationTemplateConfig
///
/// Properties:
/// * [deliveryMethodsTemplates] 
/// * [attachReport] 
/// * [reportTemplateId] 
/// * [userId] 
/// * [timezone] 
/// * [makePublic] 
@BuiltValue()
abstract class NotificationTemplateConfig implements Built<NotificationTemplateConfig, NotificationTemplateConfigBuilder> {
  @BuiltValueField(wireName: r'deliveryMethodsTemplates')
  BuiltMap<String, DeliveryMethodNotificationTemplate> get deliveryMethodsTemplates;

  @BuiltValueField(wireName: r'attachReport')
  bool? get attachReport;

  @BuiltValueField(wireName: r'reportTemplateId')
  ReportTemplateId? get reportTemplateId;

  @BuiltValueField(wireName: r'userId')
  UserId? get userId;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'makePublic')
  bool? get makePublic;

  NotificationTemplateConfig._();

  factory NotificationTemplateConfig([void updates(NotificationTemplateConfigBuilder b)]) = _$NotificationTemplateConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationTemplateConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationTemplateConfig> get serializer => _$NotificationTemplateConfigSerializer();
}

class _$NotificationTemplateConfigSerializer implements PrimitiveSerializer<NotificationTemplateConfig> {
  @override
  final Iterable<Type> types = const [NotificationTemplateConfig, _$NotificationTemplateConfig];

  @override
  final String wireName = r'NotificationTemplateConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deliveryMethodsTemplates';
    yield serializers.serialize(
      object.deliveryMethodsTemplates,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DeliveryMethodNotificationTemplate)]),
    );
    if (object.attachReport != null) {
      yield r'attachReport';
      yield serializers.serialize(
        object.attachReport,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reportTemplateId != null) {
      yield r'reportTemplateId';
      yield serializers.serialize(
        object.reportTemplateId,
        specifiedType: const FullType(ReportTemplateId),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.makePublic != null) {
      yield r'makePublic';
      yield serializers.serialize(
        object.makePublic,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationTemplateConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deliveryMethodsTemplates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DeliveryMethodNotificationTemplate)]),
          ) as BuiltMap<String, DeliveryMethodNotificationTemplate>;
          result.deliveryMethodsTemplates.replace(valueDes);
          break;
        case r'attachReport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.attachReport = valueDes;
          break;
        case r'reportTemplateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReportTemplateId),
          ) as ReportTemplateId?;
          if (valueDes == null) continue;
          result.reportTemplateId.replace(valueDes);
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserId),
          ) as UserId?;
          if (valueDes == null) continue;
          result.userId.replace(valueDes);
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'makePublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.makePublic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationTemplateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationTemplateConfigBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_template_id.dart';
import 'package:thingsboard_client/src/model/report_template_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/report_template_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_request.g.dart';

/// ReportRequest
///
/// Properties:
/// * [reportTemplateId] - Json object representing the report template id.
/// * [reportTemplateConfig] - Json object representing the report template config.
/// * [timezone] - Timezone used for report generation.
/// * [userId] - A string value representing the user id.
/// * [makePublic] - A boolean value indicating whether the generated report should be made public.
/// * [originator] - Json object representing the originator id.
/// * [targets] 
/// * [notificationTemplateId] 
@BuiltValue()
abstract class ReportRequest implements Built<ReportRequest, ReportRequestBuilder> {
  /// Json object representing the report template id.
  @BuiltValueField(wireName: r'reportTemplateId')
  ReportTemplateId? get reportTemplateId;

  /// Json object representing the report template config.
  @BuiltValueField(wireName: r'reportTemplateConfig')
  ReportTemplateConfig? get reportTemplateConfig;

  /// Timezone used for report generation.
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  /// A string value representing the user id.
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  /// A boolean value indicating whether the generated report should be made public.
  @BuiltValueField(wireName: r'makePublic')
  bool? get makePublic;

  /// Json object representing the originator id.
  @BuiltValueField(wireName: r'originator')
  EntityId? get originator;

  @BuiltValueField(wireName: r'targets')
  BuiltList<String>? get targets;

  @BuiltValueField(wireName: r'notificationTemplateId')
  NotificationTemplateId? get notificationTemplateId;

  ReportRequest._();

  factory ReportRequest([void updates(ReportRequestBuilder b)]) = _$ReportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportRequest> get serializer => _$ReportRequestSerializer();
}

class _$ReportRequestSerializer implements PrimitiveSerializer<ReportRequest> {
  @override
  final Iterable<Type> types = const [ReportRequest, _$ReportRequest];

  @override
  final String wireName = r'ReportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reportTemplateId != null) {
      yield r'reportTemplateId';
      yield serializers.serialize(
        object.reportTemplateId,
        specifiedType: const FullType(ReportTemplateId),
      );
    }
    if (object.reportTemplateConfig != null) {
      yield r'reportTemplateConfig';
      yield serializers.serialize(
        object.reportTemplateConfig,
        specifiedType: const FullType(ReportTemplateConfig),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
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
    if (object.originator != null) {
      yield r'originator';
      yield serializers.serialize(
        object.originator,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.targets != null) {
      yield r'targets';
      yield serializers.serialize(
        object.targets,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.notificationTemplateId != null) {
      yield r'notificationTemplateId';
      yield serializers.serialize(
        object.notificationTemplateId,
        specifiedType: const FullType(NotificationTemplateId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reportTemplateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReportTemplateId),
          ) as ReportTemplateId?;
          if (valueDes == null) continue;
          result.reportTemplateId.replace(valueDes);
          break;
        case r'reportTemplateConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReportTemplateConfig),
          ) as ReportTemplateConfig?;
          if (valueDes == null) continue;
          result.reportTemplateConfig = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'makePublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.makePublic = valueDes;
          break;
        case r'originator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.originator = valueDes;
          break;
        case r'targets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.targets.replace(valueDes);
          break;
        case r'notificationTemplateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationTemplateId),
          ) as NotificationTemplateId?;
          if (valueDes == null) continue;
          result.notificationTemplateId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportRequestBuilder();
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



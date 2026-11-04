// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:thingsboard_client/src/model/task_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_template_id.dart';
import 'package:thingsboard_client/src/model/report_template_id.dart';
import 'package:thingsboard_client/src/model/job_configuration.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/rule_node.dart';
import 'package:thingsboard_client/src/model/notification_request.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_job_configuration.g.dart';

/// ReportJobConfiguration
///
/// Properties:
/// * [tasksKey]
/// * [toReprocess]
/// * [type]
/// * [reportTemplateId]
/// * [userId]
/// * [timezone]
/// * [makePublic]
/// * [targets]
/// * [notificationTemplateId]
/// * [notificationRequests]
/// * [originator]
/// * [ruleNode]
/// * [outputTbMsgProto]
/// * [queueName]
/// * [schedulerEventInfo]
@BuiltValue()
abstract class ReportJobConfiguration
    implements
        JobConfiguration,
        Built<ReportJobConfiguration, ReportJobConfigurationBuilder> {
  @BuiltValueField(wireName: r'ruleNode')
  RuleNode? get ruleNode;

  @BuiltValueField(wireName: r'notificationRequests')
  BuiltList<NotificationRequest>? get notificationRequests;

  @BuiltValueField(wireName: r'queueName')
  String? get queueName;

  @BuiltValueField(wireName: r'schedulerEventInfo')
  EntityInfo? get schedulerEventInfo;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'originator')
  EntityId? get originator;

  @BuiltValueField(wireName: r'outputTbMsgProto')
  String? get outputTbMsgProto;

  @BuiltValueField(wireName: r'reportTemplateId')
  ReportTemplateId? get reportTemplateId;

  @BuiltValueField(wireName: r'notificationTemplateId')
  NotificationTemplateId? get notificationTemplateId;

  @BuiltValueField(wireName: r'userId')
  UserId? get userId;

  @BuiltValueField(wireName: r'targets')
  BuiltList<String>? get targets;

  @BuiltValueField(wireName: r'makePublic')
  bool? get makePublic;

  ReportJobConfiguration._();

  factory ReportJobConfiguration([
    void updates(ReportJobConfigurationBuilder b),
  ]) = _$ReportJobConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportJobConfigurationBuilder b) => b..type = r'REPORT';

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportJobConfiguration> get serializer =>
      _$ReportJobConfigurationSerializer();
}

class _$ReportJobConfigurationSerializer
    implements PrimitiveSerializer<ReportJobConfiguration> {
  @override
  final Iterable<Type> types = const [
    ReportJobConfiguration,
    _$ReportJobConfiguration,
  ];

  @override
  final String wireName = r'ReportJobConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportJobConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ruleNode != null) {
      yield r'ruleNode';
      yield serializers.serialize(
        object.ruleNode,
        specifiedType: const FullType(RuleNode),
      );
    }
    if (object.notificationRequests != null) {
      yield r'notificationRequests';
      yield serializers.serialize(
        object.notificationRequests,
        specifiedType: const FullType(BuiltList, [
          FullType(NotificationRequest),
        ]),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.toReprocess != null) {
      yield r'toReprocess';
      yield serializers.serialize(
        object.toReprocess,
        specifiedType: const FullType(BuiltList, [FullType(TaskResult)]),
      );
    }
    yield r'tasksKey';
    yield serializers.serialize(
      object.tasksKey,
      specifiedType: const FullType(String),
    );
    if (object.originator != null) {
      yield r'originator';
      yield serializers.serialize(
        object.originator,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.outputTbMsgProto != null) {
      yield r'outputTbMsgProto';
      yield serializers.serialize(
        object.outputTbMsgProto,
        specifiedType: const FullType(String),
      );
    }
    if (object.reportTemplateId != null) {
      yield r'reportTemplateId';
      yield serializers.serialize(
        object.reportTemplateId,
        specifiedType: const FullType(ReportTemplateId),
      );
    }
    if (object.notificationTemplateId != null) {
      yield r'notificationTemplateId';
      yield serializers.serialize(
        object.notificationTemplateId,
        specifiedType: const FullType(NotificationTemplateId),
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
    if (object.targets != null) {
      yield r'targets';
      yield serializers.serialize(
        object.targets,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.queueName != null) {
      yield r'queueName';
      yield serializers.serialize(
        object.queueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.schedulerEventInfo != null) {
      yield r'schedulerEventInfo';
      yield serializers.serialize(
        object.schedulerEventInfo,
        specifiedType: const FullType(EntityInfo),
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
    ReportJobConfiguration object, {
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
    required ReportJobConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleNode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RuleNode),
                  )
                  as RuleNode?;
          if (valueDes == null) continue;
          result.ruleNode.replace(valueDes);
          break;
        case r'notificationRequests':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(NotificationRequest),
                    ]),
                  )
                  as BuiltList<NotificationRequest>?;
          if (valueDes == null) continue;
          result.notificationRequests.replace(valueDes);
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'toReprocess':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TaskResult),
                    ]),
                  )
                  as BuiltList<TaskResult>?;
          if (valueDes == null) continue;
          result.toReprocess.replace(valueDes);
          break;
        case r'tasksKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tasksKey = valueDes;
          break;
        case r'originator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.originator = valueDes;
          break;
        case r'outputTbMsgProto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.outputTbMsgProto = valueDes;
          break;
        case r'reportTemplateId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReportTemplateId),
                  )
                  as ReportTemplateId?;
          if (valueDes == null) continue;
          result.reportTemplateId.replace(valueDes);
          break;
        case r'notificationTemplateId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationTemplateId,
                    ),
                  )
                  as NotificationTemplateId?;
          if (valueDes == null) continue;
          result.notificationTemplateId.replace(valueDes);
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
        case r'targets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.targets.replace(valueDes);
          break;
        case r'queueName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.queueName = valueDes;
          break;
        case r'schedulerEventInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityInfo),
                  )
                  as EntityInfo?;
          if (valueDes == null) continue;
          result.schedulerEventInfo.replace(valueDes);
          break;
        case r'makePublic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
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
  ReportJobConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportJobConfigurationBuilder();
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

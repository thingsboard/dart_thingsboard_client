// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/operation.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'merged_group_permission_info.g.dart';

/// MergedGroupPermissionInfo
///
/// Properties:
/// * [entityType] 
/// * [operations] 
@BuiltValue()
abstract class MergedGroupPermissionInfo implements Built<MergedGroupPermissionInfo, MergedGroupPermissionInfoBuilder> {
  @BuiltValueField(wireName: r'entityType')
  EntityType? get entityType;
  // enum entityTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'operations')
  BuiltSet<Operation>? get operations;

  MergedGroupPermissionInfo._();

  factory MergedGroupPermissionInfo([void updates(MergedGroupPermissionInfoBuilder b)]) = _$MergedGroupPermissionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MergedGroupPermissionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MergedGroupPermissionInfo> get serializer => _$MergedGroupPermissionInfoSerializer();
}

class _$MergedGroupPermissionInfoSerializer implements PrimitiveSerializer<MergedGroupPermissionInfo> {
  @override
  final Iterable<Type> types = const [MergedGroupPermissionInfo, _$MergedGroupPermissionInfo];

  @override
  final String wireName = r'MergedGroupPermissionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MergedGroupPermissionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityType != null) {
      yield r'entityType';
      yield serializers.serialize(
        object.entityType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.operations != null) {
      yield r'operations';
      yield serializers.serialize(
        object.operations,
        specifiedType: const FullType(BuiltSet, [FullType(Operation)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MergedGroupPermissionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MergedGroupPermissionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityType),
          ) as EntityType?;
          if (valueDes == null) continue;
          result.entityType = valueDes;
          break;
        case r'operations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(Operation)]),
          ) as BuiltSet<Operation>?;
          if (valueDes == null) continue;
          result.operations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MergedGroupPermissionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MergedGroupPermissionInfoBuilder();
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



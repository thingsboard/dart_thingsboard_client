// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_status.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/alarm_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm.g.dart';

/// Alarm
///
/// Properties:
/// * [id] - JSON object with the alarm Id. Specify this field to update the alarm. Referencing non-existing alarm Id will cause error. Omit this field to create new alarm.
/// * [createdTime] - Timestamp of the alarm creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id
/// * [customerId] - JSON object with Customer Id. Derived from the originator entity owner and cannot be set independently; any value supplied in the request body must match the originator's customer or the request is rejected.
/// * [type] - representing type of the Alarm
/// * [originator] - JSON object with alarm originator id
/// * [severity] - Alarm severity
/// * [acknowledged] - Acknowledged
/// * [cleared] - Cleared
/// * [assigneeId] - Alarm assignee user id
/// * [startTs] - Timestamp of the alarm start time, in milliseconds
/// * [endTs] - Timestamp of the alarm end time(last time update), in milliseconds
/// * [ackTs] - Timestamp of the alarm acknowledgement, in milliseconds
/// * [clearTs] - Timestamp of the alarm clearing, in milliseconds
/// * [assignTs] - Timestamp of the alarm assignment, in milliseconds
/// * [details] - JSON object with alarm details
/// * [propagate] - Propagation flag to specify if alarm should be propagated to parent entities of alarm originator
/// * [propagateToOwner] - Propagation flag to specify if alarm should be propagated to the owner (tenant or customer) of alarm originator
/// * [propagateToOwnerHierarchy] - Propagation flag to specify if alarm should be propagated to the owner (tenant or customer) and all parent owners in the customer hierarchy
/// * [propagateToTenant] - Propagation flag to specify if alarm should be propagated to the tenant entity
/// * [propagateRelationTypes] - JSON array of relation types that should be used for propagation. By default, 'propagateRelationTypes' array is empty which means that the alarm will be propagated based on any relation type to parent entities. This parameter should be used only in case when 'propagate' parameter is set to true, otherwise, 'propagateRelationTypes' array will be ignored.
/// * [name] - representing type of the Alarm
/// * [status] - status of the Alarm
@BuiltValue()
abstract class Alarm implements Built<Alarm, AlarmBuilder> {
  /// JSON object with the alarm Id. Specify this field to update the alarm. Referencing non-existing alarm Id will cause error. Omit this field to create new alarm.
  @BuiltValueField(wireName: r'id')
  AlarmId? get id;

  /// Timestamp of the alarm creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id. Derived from the originator entity owner and cannot be set independently; any value supplied in the request body must match the originator's customer or the request is rejected.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// representing type of the Alarm
  @BuiltValueField(wireName: r'type')
  String get type;

  /// JSON object with alarm originator id
  @BuiltValueField(wireName: r'originator')
  EntityId get originator;

  /// Alarm severity
  @BuiltValueField(wireName: r'severity')
  AlarmSeverity get severity;
  // enum severityEnum {  CRITICAL,  MAJOR,  MINOR,  WARNING,  INDETERMINATE,  };

  /// Acknowledged
  @BuiltValueField(wireName: r'acknowledged')
  bool get acknowledged;

  /// Cleared
  @BuiltValueField(wireName: r'cleared')
  bool get cleared;

  /// Alarm assignee user id
  @BuiltValueField(wireName: r'assigneeId')
  UserId? get assigneeId;

  /// Timestamp of the alarm start time, in milliseconds
  @BuiltValueField(wireName: r'startTs')
  int? get startTs;

  /// Timestamp of the alarm end time(last time update), in milliseconds
  @BuiltValueField(wireName: r'endTs')
  int? get endTs;

  /// Timestamp of the alarm acknowledgement, in milliseconds
  @BuiltValueField(wireName: r'ackTs')
  int? get ackTs;

  /// Timestamp of the alarm clearing, in milliseconds
  @BuiltValueField(wireName: r'clearTs')
  int? get clearTs;

  /// Timestamp of the alarm assignment, in milliseconds
  @BuiltValueField(wireName: r'assignTs')
  int? get assignTs;

  /// JSON object with alarm details
  @BuiltValueField(wireName: r'details')
  JsonObject? get details;

  /// Propagation flag to specify if alarm should be propagated to parent entities of alarm originator
  @BuiltValueField(wireName: r'propagate')
  bool? get propagate;

  /// Propagation flag to specify if alarm should be propagated to the owner (tenant or customer) of alarm originator
  @BuiltValueField(wireName: r'propagateToOwner')
  bool? get propagateToOwner;

  /// Propagation flag to specify if alarm should be propagated to the owner (tenant or customer) and all parent owners in the customer hierarchy
  @BuiltValueField(wireName: r'propagateToOwnerHierarchy')
  bool? get propagateToOwnerHierarchy;

  /// Propagation flag to specify if alarm should be propagated to the tenant entity
  @BuiltValueField(wireName: r'propagateToTenant')
  bool? get propagateToTenant;

  /// JSON array of relation types that should be used for propagation. By default, 'propagateRelationTypes' array is empty which means that the alarm will be propagated based on any relation type to parent entities. This parameter should be used only in case when 'propagate' parameter is set to true, otherwise, 'propagateRelationTypes' array will be ignored.
  @BuiltValueField(wireName: r'propagateRelationTypes')
  BuiltList<String>? get propagateRelationTypes;

  /// representing type of the Alarm
  @BuiltValueField(wireName: r'name')
  String get name;

  /// status of the Alarm
  @BuiltValueField(wireName: r'status')
  AlarmStatus get status;
  // enum statusEnum {  ACTIVE_UNACK,  ACTIVE_ACK,  CLEARED_UNACK,  CLEARED_ACK,  };

  Alarm._();

  factory Alarm([void updates(AlarmBuilder b)]) = _$Alarm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Alarm> get serializer => _$AlarmSerializer();
}

class _$AlarmSerializer implements PrimitiveSerializer<Alarm> {
  @override
  final Iterable<Type> types = const [Alarm, _$Alarm];

  @override
  final String wireName = r'Alarm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Alarm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AlarmId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'originator';
    yield serializers.serialize(
      object.originator,
      specifiedType: const FullType(EntityId),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(AlarmSeverity),
    );
    yield r'acknowledged';
    yield serializers.serialize(
      object.acknowledged,
      specifiedType: const FullType(bool),
    );
    yield r'cleared';
    yield serializers.serialize(
      object.cleared,
      specifiedType: const FullType(bool),
    );
    if (object.assigneeId != null) {
      yield r'assigneeId';
      yield serializers.serialize(
        object.assigneeId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.startTs != null) {
      yield r'startTs';
      yield serializers.serialize(
        object.startTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.endTs != null) {
      yield r'endTs';
      yield serializers.serialize(
        object.endTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.ackTs != null) {
      yield r'ackTs';
      yield serializers.serialize(
        object.ackTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.clearTs != null) {
      yield r'clearTs';
      yield serializers.serialize(
        object.clearTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.assignTs != null) {
      yield r'assignTs';
      yield serializers.serialize(
        object.assignTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.propagate != null) {
      yield r'propagate';
      yield serializers.serialize(
        object.propagate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.propagateToOwner != null) {
      yield r'propagateToOwner';
      yield serializers.serialize(
        object.propagateToOwner,
        specifiedType: const FullType(bool),
      );
    }
    if (object.propagateToOwnerHierarchy != null) {
      yield r'propagateToOwnerHierarchy';
      yield serializers.serialize(
        object.propagateToOwnerHierarchy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.propagateToTenant != null) {
      yield r'propagateToTenant';
      yield serializers.serialize(
        object.propagateToTenant,
        specifiedType: const FullType(bool),
      );
    }
    if (object.propagateRelationTypes != null) {
      yield r'propagateRelationTypes';
      yield serializers.serialize(
        object.propagateRelationTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AlarmStatus),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Alarm object, {
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
    required AlarmBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmId),
                  )
                  as AlarmId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'originator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityId),
                  )
                  as EntityId;
          result.originator = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlarmSeverity),
                  )
                  as AlarmSeverity;
          result.severity = valueDes;
          break;
        case r'acknowledged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.acknowledged = valueDes;
          break;
        case r'cleared':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.cleared = valueDes;
          break;
        case r'assigneeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.assigneeId.replace(valueDes);
          break;
        case r'startTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.startTs = valueDes;
          break;
        case r'endTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.endTs = valueDes;
          break;
        case r'ackTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.ackTs = valueDes;
          break;
        case r'clearTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.clearTs = valueDes;
          break;
        case r'assignTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.assignTs = valueDes;
          break;
        case r'details':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.details = valueDes;
          break;
        case r'propagate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagate = valueDes;
          break;
        case r'propagateToOwner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagateToOwner = valueDes;
          break;
        case r'propagateToOwnerHierarchy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagateToOwnerHierarchy = valueDes;
          break;
        case r'propagateToTenant':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.propagateToTenant = valueDes;
          break;
        case r'propagateRelationTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.propagateRelationTypes.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlarmStatus),
                  )
                  as AlarmStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Alarm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/job_type.dart';
import 'package:thingsboard_client/src/model/job_id.dart';
import 'package:thingsboard_client/src/model/job_configuration.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/job_result.dart';
import 'package:thingsboard_client/src/model/job_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job.g.dart';

/// Job
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId]
/// * [customerId]
/// * [type]
/// * [key]
/// * [entityId]
/// * [entityName]
/// * [status]
/// * [configuration]
/// * [result]
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class Job implements Built<Job, JobBuilder> {
  @BuiltValueField(wireName: r'id')
  JobId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId get tenantId;

  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  @BuiltValueField(wireName: r'type')
  JobType get type;
  // enum typeEnum {  CF_REPROCESSING,  REPORT,  DUMMY,  };

  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'entityId')
  EntityId get entityId;

  @BuiltValueField(wireName: r'entityName')
  String? get entityName;

  @BuiltValueField(wireName: r'status')
  JobStatus get status;
  // enum statusEnum {  QUEUED,  PENDING,  RUNNING,  COMPLETED,  FAILED,  CANCELLED,  };

  @BuiltValueField(wireName: r'configuration')
  JobConfiguration get configuration;

  @BuiltValueField(wireName: r'result')
  JobResult get result;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  Job._();

  factory Job([void updates(JobBuilder b)]) = _$Job;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JobBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Job> get serializer => _$JobSerializer();
}

class _$JobSerializer implements PrimitiveSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];

  @override
  final String wireName = r'Job';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Job object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(JobId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    yield r'tenantId';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(TenantId),
    );
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
      specifiedType: const FullType(JobType),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'entityId';
    yield serializers.serialize(
      object.entityId,
      specifiedType: const FullType(EntityId),
    );
    if (object.entityName != null) {
      yield r'entityName';
      yield serializers.serialize(
        object.entityName,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(JobStatus),
    );
    yield r'configuration';
    yield serializers.serialize(
      object.configuration,
      specifiedType: const FullType(JobConfiguration),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(JobResult),
    );
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Job object, {
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
    required JobBuilder result,
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
                    specifiedType: const FullType.nullable(JobId),
                  )
                  as JobId?;
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
                    specifiedType: const FullType(TenantId),
                  )
                  as TenantId;
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
                    specifiedType: const FullType(JobType),
                  )
                  as JobType;
          result.type = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.key = valueDes;
          break;
        case r'entityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityId),
                  )
                  as EntityId;
          result.entityId = valueDes;
          break;
        case r'entityName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityName = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(JobStatus),
                  )
                  as JobStatus;
          result.status = valueDes;
          break;
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(JobConfiguration),
                  )
                  as JobConfiguration;
          result.configuration = valueDes;
          break;
        case r'result':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(JobResult),
                  )
                  as JobResult;
          result.result = valueDes;
          break;
        case r'ownerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Job deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JobBuilder();
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

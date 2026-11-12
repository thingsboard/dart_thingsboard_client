// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/queue_stats_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_stats.g.dart';

/// QueueStats
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId]
/// * [queueName]
/// * [serviceId]
@BuiltValue()
abstract class QueueStats implements Built<QueueStats, QueueStatsBuilder> {
  @BuiltValueField(wireName: r'id')
  QueueStatsId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'queueName')
  String? get queueName;

  @BuiltValueField(wireName: r'serviceId')
  String? get serviceId;

  QueueStats._();

  factory QueueStats([void updates(QueueStatsBuilder b)]) = _$QueueStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueStats> get serializer => _$QueueStatsSerializer();
}

class _$QueueStatsSerializer implements PrimitiveSerializer<QueueStats> {
  @override
  final Iterable<Type> types = const [QueueStats, _$QueueStats];

  @override
  final String wireName = r'QueueStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(QueueStatsId),
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
    if (object.queueName != null) {
      yield r'queueName';
      yield serializers.serialize(
        object.queueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceId != null) {
      yield r'serviceId';
      yield serializers.serialize(
        object.serviceId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueStats object, {
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
    required QueueStatsBuilder result,
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
                    specifiedType: const FullType.nullable(QueueStatsId),
                  )
                  as QueueStatsId?;
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
        case r'serviceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.serviceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueStatsBuilder();
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

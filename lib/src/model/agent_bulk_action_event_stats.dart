// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_bulk_action_event_stats.g.dart';

/// AgentBulkActionEventStats
///
/// Properties:
/// * [countsByStatus] - Number of events produced by the bulk action per processing status
/// * [total] - Total number of events produced by the bulk action
@BuiltValue()
abstract class AgentBulkActionEventStats
    implements
        Built<AgentBulkActionEventStats, AgentBulkActionEventStatsBuilder> {
  /// Number of events produced by the bulk action per processing status
  @BuiltValueField(wireName: r'countsByStatus')
  BuiltMap<String, int>? get countsByStatus;

  /// Total number of events produced by the bulk action
  @BuiltValueField(wireName: r'total')
  int? get total;

  AgentBulkActionEventStats._();

  factory AgentBulkActionEventStats([
    void updates(AgentBulkActionEventStatsBuilder b),
  ]) = _$AgentBulkActionEventStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentBulkActionEventStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentBulkActionEventStats> get serializer =>
      _$AgentBulkActionEventStatsSerializer();
}

class _$AgentBulkActionEventStatsSerializer
    implements PrimitiveSerializer<AgentBulkActionEventStats> {
  @override
  final Iterable<Type> types = const [
    AgentBulkActionEventStats,
    _$AgentBulkActionEventStats,
  ];

  @override
  final String wireName = r'AgentBulkActionEventStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentBulkActionEventStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.countsByStatus != null) {
      yield r'countsByStatus';
      yield serializers.serialize(
        object.countsByStatus,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentBulkActionEventStats object, {
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
    required AgentBulkActionEventStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'countsByStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.countsByStatus.replace(valueDes);
          break;
        case r'total':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentBulkActionEventStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentBulkActionEventStatsBuilder();
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

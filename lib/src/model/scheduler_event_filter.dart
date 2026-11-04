// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alias_entity_id.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduler_event_filter.g.dart';

/// SchedulerEventFilter
///
/// Properties:
/// * [type] 
/// * [originator] 
/// * [eventType] 
/// * [originatorStateEntity] 
/// * [defaultStateEntity] 
@BuiltValue()
abstract class SchedulerEventFilter implements EntityFilter, Built<SchedulerEventFilter, SchedulerEventFilterBuilder> {
  @BuiltValueField(wireName: r'defaultStateEntity')
  AliasEntityId? get defaultStateEntity;

  @BuiltValueField(wireName: r'originatorStateEntity')
  bool? get originatorStateEntity;

  @BuiltValueField(wireName: r'originator')
  AliasEntityId? get originator;

  @BuiltValueField(wireName: r'eventType')
  String? get eventType;

  SchedulerEventFilter._();

  factory SchedulerEventFilter([void updates(SchedulerEventFilterBuilder b)]) = _$SchedulerEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SchedulerEventFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SchedulerEventFilter> get serializer => _$SchedulerEventFilterSerializer();
}

class _$SchedulerEventFilterSerializer implements PrimitiveSerializer<SchedulerEventFilter> {
  @override
  final Iterable<Type> types = const [SchedulerEventFilter, _$SchedulerEventFilter];

  @override
  final String wireName = r'SchedulerEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SchedulerEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaultStateEntity != null) {
      yield r'defaultStateEntity';
      yield serializers.serialize(
        object.defaultStateEntity,
        specifiedType: const FullType(AliasEntityId),
      );
    }
    if (object.originatorStateEntity != null) {
      yield r'originatorStateEntity';
      yield serializers.serialize(
        object.originatorStateEntity,
        specifiedType: const FullType(bool),
      );
    }
    if (object.originator != null) {
      yield r'originator';
      yield serializers.serialize(
        object.originator,
        specifiedType: const FullType(AliasEntityId),
      );
    }
    if (object.eventType != null) {
      yield r'eventType';
      yield serializers.serialize(
        object.eventType,
        specifiedType: const FullType(String),
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
    SchedulerEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SchedulerEventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaultStateEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AliasEntityId),
          ) as AliasEntityId?;
          if (valueDes == null) continue;
          result.defaultStateEntity.replace(valueDes);
          break;
        case r'originatorStateEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.originatorStateEntity = valueDes;
          break;
        case r'originator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AliasEntityId),
          ) as AliasEntityId?;
          if (valueDes == null) continue;
          result.originator.replace(valueDes);
          break;
        case r'eventType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.eventType = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  SchedulerEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SchedulerEventFilterBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/event_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/event_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'life_cycle_event_filter.g.dart';

/// LifeCycleEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [event] - String value representing the lifecycle event type
/// * [status] - String value representing status of the lifecycle event
/// * [errorStr] - The case insensitive 'contains' filter based on error message
@BuiltValue()
abstract class LifeCycleEventFilter
    implements
        EventFilter,
        Built<LifeCycleEventFilter, LifeCycleEventFilterBuilder> {
  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  /// String value representing the lifecycle event type
  @BuiltValueField(wireName: r'event')
  String? get event;

  /// String value representing status of the lifecycle event
  @BuiltValueField(wireName: r'status')
  LifeCycleEventFilterStatusEnum? get status;
  // enum statusEnum {  Success,  Failure,  };

  /// The case insensitive 'contains' filter based on error message
  @BuiltValueField(wireName: r'errorStr')
  String? get errorStr;

  LifeCycleEventFilter._();

  factory LifeCycleEventFilter([void updates(LifeCycleEventFilterBuilder b)]) =
      _$LifeCycleEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LifeCycleEventFilterBuilder b) =>
      b..eventType = EventType.LC_EVENT;

  @BuiltValueSerializer(custom: true)
  static Serializer<LifeCycleEventFilter> get serializer =>
      _$LifeCycleEventFilterSerializer();
}

class _$LifeCycleEventFilterSerializer
    implements PrimitiveSerializer<LifeCycleEventFilter> {
  @override
  final Iterable<Type> types = const [
    LifeCycleEventFilter,
    _$LifeCycleEventFilter,
  ];

  @override
  final String wireName = r'LifeCycleEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LifeCycleEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(String),
      );
    }
    yield r'eventType';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(EventType),
    );
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(String),
      );
    }
    if (object.notEmpty != null) {
      yield r'notEmpty';
      yield serializers.serialize(
        object.notEmpty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(LifeCycleEventFilterStatusEnum),
      );
    }
    if (object.errorStr != null) {
      yield r'errorStr';
      yield serializers.serialize(
        object.errorStr,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LifeCycleEventFilter object, {
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
    required LifeCycleEventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'server':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.server = valueDes;
          break;
        case r'eventType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EventType),
                  )
                  as EventType;
          result.eventType = valueDes;
          break;
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.event = valueDes;
          break;
        case r'notEmpty':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notEmpty = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      LifeCycleEventFilterStatusEnum,
                    ),
                  )
                  as LifeCycleEventFilterStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'errorStr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.errorStr = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LifeCycleEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LifeCycleEventFilterBuilder();
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

/// String value representing status of the lifecycle event
class LifeCycleEventFilterStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Success')
  static const LifeCycleEventFilterStatusEnum success =
      _$lifeCycleEventFilterStatusEnum_success;
  @BuiltValueEnumConst(wireName: r'Failure')
  static const LifeCycleEventFilterStatusEnum failure =
      _$lifeCycleEventFilterStatusEnum_failure;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LifeCycleEventFilterStatusEnum unknownDefaultOpenApi =
      _$lifeCycleEventFilterStatusEnum_unknownDefaultOpenApi;

  static Serializer<LifeCycleEventFilterStatusEnum> get serializer =>
      _$lifeCycleEventFilterStatusEnumSerializer;

  const LifeCycleEventFilterStatusEnum._(String name) : super(name);

  static BuiltSet<LifeCycleEventFilterStatusEnum> get values =>
      _$lifeCycleEventFilterStatusEnumValues;
  static LifeCycleEventFilterStatusEnum valueOf(String name) =>
      _$lifeCycleEventFilterStatusEnumValueOf(name);
}

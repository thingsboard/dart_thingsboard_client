// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/event_type.dart';
import 'package:thingsboard_client/src/model/event_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raw_data_event_filter.g.dart';

/// RawDataEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty] 
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [uuid] - String value representing the uuid
/// * [messageType] - String value representing the message type
/// * [message] - String value representing the message
@BuiltValue()
abstract class RawDataEventFilter implements EventFilter, Built<RawDataEventFilter, RawDataEventFilterBuilder> {
  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  /// String value representing the message type
  @BuiltValueField(wireName: r'messageType')
  String? get messageType;

  /// String value representing the message
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// String value representing the uuid
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  RawDataEventFilter._();

  factory RawDataEventFilter([void updates(RawDataEventFilterBuilder b)]) = _$RawDataEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RawDataEventFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RawDataEventFilter> get serializer => _$RawDataEventFilterSerializer();
}

class _$RawDataEventFilterSerializer implements PrimitiveSerializer<RawDataEventFilter> {
  @override
  final Iterable<Type> types = const [RawDataEventFilter, _$RawDataEventFilter];

  @override
  final String wireName = r'RawDataEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RawDataEventFilter object, {
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
    if (object.messageType != null) {
      yield r'messageType';
      yield serializers.serialize(
        object.messageType,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
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
    if (object.uuid != null) {
      yield r'uuid';
      yield serializers.serialize(
        object.uuid,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RawDataEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RawDataEventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'server':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.server = valueDes;
          break;
        case r'eventType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EventType),
          ) as EventType;
          result.eventType = valueDes;
          break;
        case r'messageType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.messageType = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'notEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.notEmpty = valueDes;
          break;
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uuid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RawDataEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RawDataEventFilterBuilder();
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



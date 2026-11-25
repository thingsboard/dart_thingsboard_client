// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_id.g.dart';

/// EventId
///
/// Properties:
/// * [id] - string
@BuiltValue()
abstract class EventId implements Built<EventId, EventIdBuilder> {
  /// string
  @BuiltValueField(wireName: r'id')
  String get id;

  EventId._();

  factory EventId([void updates(EventIdBuilder b)]) = _$EventId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventId> get serializer => _$EventIdSerializer();
}

class _$EventIdSerializer implements PrimitiveSerializer<EventId> {
  @override
  final Iterable<Type> types = const [EventId, _$EventId];

  @override
  final String wireName = r'EventId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventId object, {
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
    required EventIdBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventIdBuilder();
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

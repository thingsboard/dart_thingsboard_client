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

part 'edge_event_id.g.dart';

/// EdgeEventId
///
/// Properties:
/// * [id] - string
@BuiltValue()
abstract class EdgeEventId implements Built<EdgeEventId, EdgeEventIdBuilder> {
  /// string
  @BuiltValueField(wireName: r'id')
  String get id;

  EdgeEventId._();

  factory EdgeEventId([void updates(EdgeEventIdBuilder b)]) = _$EdgeEventId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeEventIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeEventId> get serializer => _$EdgeEventIdSerializer();
}

class _$EdgeEventIdSerializer implements PrimitiveSerializer<EdgeEventId> {
  @override
  final Iterable<Type> types = const [EdgeEventId, _$EdgeEventId];

  @override
  final String wireName = r'EdgeEventId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeEventId object, {
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
    EdgeEventId object, {
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
    required EdgeEventIdBuilder result,
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
  EdgeEventId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeEventIdBuilder();
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

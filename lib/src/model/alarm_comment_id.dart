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

part 'alarm_comment_id.g.dart';

/// AlarmCommentId
///
/// Properties:
/// * [id] - string
@BuiltValue()
abstract class AlarmCommentId implements Built<AlarmCommentId, AlarmCommentIdBuilder> {
  /// string
  @BuiltValueField(wireName: r'id')
  String get id;

  AlarmCommentId._();

  factory AlarmCommentId([void updates(AlarmCommentIdBuilder b)]) = _$AlarmCommentId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmCommentIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmCommentId> get serializer => _$AlarmCommentIdSerializer();
}

class _$AlarmCommentIdSerializer implements PrimitiveSerializer<AlarmCommentId> {
  @override
  final Iterable<Type> types = const [AlarmCommentId, _$AlarmCommentId];

  @override
  final String wireName = r'AlarmCommentId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmCommentId object, {
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
    AlarmCommentId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmCommentIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AlarmCommentId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmCommentIdBuilder();
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



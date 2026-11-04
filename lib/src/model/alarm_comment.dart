// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_comment_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/alarm_comment_type.dart';
import 'package:thingsboard_client/src/model/alarm_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_comment.g.dart';

/// AlarmComment
///
/// Properties:
/// * [id] - JSON object with the alarm comment Id. Specify this field to update the alarm comment. Referencing non-existing alarm Id will cause error. Omit this field to create new alarm.
/// * [createdTime] - Timestamp of the alarm comment creation, in milliseconds
/// * [alarmId] - JSON object with Alarm id.
/// * [userId] - JSON object with User id.
/// * [type] - Defines origination of comment. System type means comment was created by TB. OTHER type means comment was created by user.
/// * [comment] - JSON object with text of comment.
/// * [name] - representing comment text
@BuiltValue()
abstract class AlarmComment
    implements Built<AlarmComment, AlarmCommentBuilder> {
  /// JSON object with the alarm comment Id. Specify this field to update the alarm comment. Referencing non-existing alarm Id will cause error. Omit this field to create new alarm.
  @BuiltValueField(wireName: r'id')
  AlarmCommentId? get id;

  /// Timestamp of the alarm comment creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Alarm id.
  @BuiltValueField(wireName: r'alarmId')
  AlarmId? get alarmId;

  /// JSON object with User id.
  @BuiltValueField(wireName: r'userId')
  UserId? get userId;

  /// Defines origination of comment. System type means comment was created by TB. OTHER type means comment was created by user.
  @BuiltValueField(wireName: r'type')
  AlarmCommentType? get type;
  // enum typeEnum {  SYSTEM,  OTHER,  };

  /// JSON object with text of comment.
  @BuiltValueField(wireName: r'comment')
  JsonObject? get comment;

  /// representing comment text
  @BuiltValueField(wireName: r'name')
  String? get name;

  AlarmComment._();

  factory AlarmComment([void updates(AlarmCommentBuilder b)]) = _$AlarmComment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmCommentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmComment> get serializer => _$AlarmCommentSerializer();
}

class _$AlarmCommentSerializer implements PrimitiveSerializer<AlarmComment> {
  @override
  final Iterable<Type> types = const [AlarmComment, _$AlarmComment];

  @override
  final String wireName = r'AlarmComment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmComment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AlarmCommentId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.alarmId != null) {
      yield r'alarmId';
      yield serializers.serialize(
        object.alarmId,
        specifiedType: const FullType(AlarmId),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AlarmCommentType),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmComment object, {
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
    required AlarmCommentBuilder result,
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
                    specifiedType: const FullType.nullable(AlarmCommentId),
                  )
                  as AlarmCommentId?;
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
        case r'alarmId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmId),
                  )
                  as AlarmId?;
          if (valueDes == null) continue;
          result.alarmId.replace(valueDes);
          break;
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.userId.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmCommentType),
                  )
                  as AlarmCommentType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'comment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmComment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmCommentBuilder();
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

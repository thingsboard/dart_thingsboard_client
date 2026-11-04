// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_email_info.g.dart';

/// UserEmailInfo
///
/// Properties:
/// * [id] - User id
/// * [email] - User email
/// * [firstName] - User first name
/// * [lastName] - User last name
@BuiltValue()
abstract class UserEmailInfo
    implements Built<UserEmailInfo, UserEmailInfoBuilder> {
  /// User id
  @BuiltValueField(wireName: r'id')
  UserId? get id;

  /// User email
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// User first name
  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  /// User last name
  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  UserEmailInfo._();

  factory UserEmailInfo([void updates(UserEmailInfoBuilder b)]) =
      _$UserEmailInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserEmailInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserEmailInfo> get serializer =>
      _$UserEmailInfoSerializer();
}

class _$UserEmailInfoSerializer implements PrimitiveSerializer<UserEmailInfo> {
  @override
  final Iterable<Type> types = const [UserEmailInfo, _$UserEmailInfo];

  @override
  final String wireName = r'UserEmailInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserEmailInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserEmailInfo object, {
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
    required UserEmailInfoBuilder result,
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
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'firstName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserEmailInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserEmailInfoBuilder();
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

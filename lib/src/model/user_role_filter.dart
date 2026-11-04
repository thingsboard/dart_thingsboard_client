// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/users_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_role_filter.g.dart';

/// UserRoleFilter
///
/// Properties:
/// * [type]
/// * [rolesIds]
@BuiltValue()
abstract class UserRoleFilter
    implements UsersFilter, Built<UserRoleFilter, UserRoleFilterBuilder> {
  @BuiltValueField(wireName: r'rolesIds')
  BuiltList<String> get rolesIds;

  UserRoleFilter._();

  factory UserRoleFilter([void updates(UserRoleFilterBuilder b)]) =
      _$UserRoleFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserRoleFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserRoleFilter> get serializer =>
      _$UserRoleFilterSerializer();
}

class _$UserRoleFilterSerializer
    implements PrimitiveSerializer<UserRoleFilter> {
  @override
  final Iterable<Type> types = const [UserRoleFilter, _$UserRoleFilter];

  @override
  final String wireName = r'UserRoleFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserRoleFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'rolesIds';
    yield serializers.serialize(
      object.rolesIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserRoleFilter object, {
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
    required UserRoleFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'rolesIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.rolesIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserRoleFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserRoleFilterBuilder();
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

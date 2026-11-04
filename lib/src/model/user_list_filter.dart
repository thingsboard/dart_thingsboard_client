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

part 'user_list_filter.g.dart';

/// UserListFilter
///
/// Properties:
/// * [type] 
/// * [usersIds] 
@BuiltValue()
abstract class UserListFilter implements UsersFilter, Built<UserListFilter, UserListFilterBuilder> {
  @BuiltValueField(wireName: r'usersIds')
  BuiltList<String> get usersIds;

  UserListFilter._();

  factory UserListFilter([void updates(UserListFilterBuilder b)]) = _$UserListFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserListFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserListFilter> get serializer => _$UserListFilterSerializer();
}

class _$UserListFilterSerializer implements PrimitiveSerializer<UserListFilter> {
  @override
  final Iterable<Type> types = const [UserListFilter, _$UserListFilter];

  @override
  final String wireName = r'UserListFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserListFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'usersIds';
    yield serializers.serialize(
      object.usersIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserListFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserListFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'usersIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.usersIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserListFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserListFilterBuilder();
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



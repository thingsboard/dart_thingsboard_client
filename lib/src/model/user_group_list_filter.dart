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

part 'user_group_list_filter.g.dart';

/// UserGroupListFilter
///
/// Properties:
/// * [type] 
/// * [groupsIds] 
@BuiltValue()
abstract class UserGroupListFilter implements UsersFilter, Built<UserGroupListFilter, UserGroupListFilterBuilder> {
  @BuiltValueField(wireName: r'groupsIds')
  BuiltList<String> get groupsIds;

  UserGroupListFilter._();

  factory UserGroupListFilter([void updates(UserGroupListFilterBuilder b)]) = _$UserGroupListFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserGroupListFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserGroupListFilter> get serializer => _$UserGroupListFilterSerializer();
}

class _$UserGroupListFilterSerializer implements PrimitiveSerializer<UserGroupListFilter> {
  @override
  final Iterable<Type> types = const [UserGroupListFilter, _$UserGroupListFilter];

  @override
  final String wireName = r'UserGroupListFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserGroupListFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'groupsIds';
    yield serializers.serialize(
      object.groupsIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserGroupListFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserGroupListFilterBuilder result,
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
        case r'groupsIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.groupsIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserGroupListFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserGroupListFilterBuilder();
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



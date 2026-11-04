// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/customer_users_filter.dart';
import 'package:thingsboard_client/src/model/affected_tenant_administrators_filter.dart';
import 'package:thingsboard_client/src/model/tenant_administrators_filter.dart';
import 'package:thingsboard_client/src/model/affected_user_filter.dart';
import 'package:thingsboard_client/src/model/user_role_filter.dart';
import 'package:thingsboard_client/src/model/system_administrators_filter.dart';
import 'package:thingsboard_client/src/model/all_users_filter.dart';
import 'package:thingsboard_client/src/model/user_group_list_filter.dart';
import 'package:thingsboard_client/src/model/originator_entity_owner_users_filter.dart';
import 'package:thingsboard_client/src/model/user_list_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_filter.g.dart';

/// UsersFilter
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class UsersFilter  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'AFFECTED_TENANT_ADMINISTRATORS': AffectedTenantAdministratorsFilter,
    r'AFFECTED_USER': AffectedUserFilter,
    r'ALL_USERS': AllUsersFilter,
    r'CUSTOMER_USERS': CustomerUsersFilter,
    r'ORIGINATOR_ENTITY_OWNER_USERS': OriginatorEntityOwnerUsersFilter,
    r'SYSTEM_ADMINISTRATORS': SystemAdministratorsFilter,
    r'TENANT_ADMINISTRATORS': TenantAdministratorsFilter,
    r'USER_GROUP_LIST': UserGroupListFilter,
    r'USER_LIST': UserListFilter,
    r'USER_ROLE': UserRoleFilter,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersFilter> get serializer => _$UsersFilterSerializer();
}

extension UsersFilterDiscriminatorExt on UsersFilter {
    String? get discriminatorValue {
        if (this is AffectedTenantAdministratorsFilter) {
            return r'AFFECTED_TENANT_ADMINISTRATORS';
        }
        if (this is AffectedUserFilter) {
            return r'AFFECTED_USER';
        }
        if (this is AllUsersFilter) {
            return r'ALL_USERS';
        }
        if (this is CustomerUsersFilter) {
            return r'CUSTOMER_USERS';
        }
        if (this is OriginatorEntityOwnerUsersFilter) {
            return r'ORIGINATOR_ENTITY_OWNER_USERS';
        }
        if (this is SystemAdministratorsFilter) {
            return r'SYSTEM_ADMINISTRATORS';
        }
        if (this is TenantAdministratorsFilter) {
            return r'TENANT_ADMINISTRATORS';
        }
        if (this is UserGroupListFilter) {
            return r'USER_GROUP_LIST';
        }
        if (this is UserListFilter) {
            return r'USER_LIST';
        }
        if (this is UserRoleFilter) {
            return r'USER_ROLE';
        }
        return null;
    }
}
extension UsersFilterBuilderDiscriminatorExt on UsersFilterBuilder {
    String? get discriminatorValue {
        if (this is AffectedTenantAdministratorsFilterBuilder) {
            return r'AFFECTED_TENANT_ADMINISTRATORS';
        }
        if (this is AffectedUserFilterBuilder) {
            return r'AFFECTED_USER';
        }
        if (this is AllUsersFilterBuilder) {
            return r'ALL_USERS';
        }
        if (this is CustomerUsersFilterBuilder) {
            return r'CUSTOMER_USERS';
        }
        if (this is OriginatorEntityOwnerUsersFilterBuilder) {
            return r'ORIGINATOR_ENTITY_OWNER_USERS';
        }
        if (this is SystemAdministratorsFilterBuilder) {
            return r'SYSTEM_ADMINISTRATORS';
        }
        if (this is TenantAdministratorsFilterBuilder) {
            return r'TENANT_ADMINISTRATORS';
        }
        if (this is UserGroupListFilterBuilder) {
            return r'USER_GROUP_LIST';
        }
        if (this is UserListFilterBuilder) {
            return r'USER_LIST';
        }
        if (this is UserRoleFilterBuilder) {
            return r'USER_ROLE';
        }
        return null;
    }
}

class _$UsersFilterSerializer implements PrimitiveSerializer<UsersFilter> {
  @override
  final Iterable<Type> types = const [UsersFilter];

  @override
  final String wireName = r'UsersFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AffectedTenantAdministratorsFilter) {
      return serializers.serialize(object, specifiedType: FullType(AffectedTenantAdministratorsFilter))!;
    }
    if (object is AffectedUserFilter) {
      return serializers.serialize(object, specifiedType: FullType(AffectedUserFilter))!;
    }
    if (object is AllUsersFilter) {
      return serializers.serialize(object, specifiedType: FullType(AllUsersFilter))!;
    }
    if (object is CustomerUsersFilter) {
      return serializers.serialize(object, specifiedType: FullType(CustomerUsersFilter))!;
    }
    if (object is OriginatorEntityOwnerUsersFilter) {
      return serializers.serialize(object, specifiedType: FullType(OriginatorEntityOwnerUsersFilter))!;
    }
    if (object is SystemAdministratorsFilter) {
      return serializers.serialize(object, specifiedType: FullType(SystemAdministratorsFilter))!;
    }
    if (object is TenantAdministratorsFilter) {
      return serializers.serialize(object, specifiedType: FullType(TenantAdministratorsFilter))!;
    }
    if (object is UserGroupListFilter) {
      return serializers.serialize(object, specifiedType: FullType(UserGroupListFilter))!;
    }
    if (object is UserListFilter) {
      return serializers.serialize(object, specifiedType: FullType(UserListFilter))!;
    }
    if (object is UserRoleFilter) {
      return serializers.serialize(object, specifiedType: FullType(UserRoleFilter))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  UsersFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(UsersFilter.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'AFFECTED_TENANT_ADMINISTRATORS':
        return serializers.deserialize(serialized, specifiedType: FullType(AffectedTenantAdministratorsFilter)) as AffectedTenantAdministratorsFilter;
      case r'AFFECTED_USER':
        return serializers.deserialize(serialized, specifiedType: FullType(AffectedUserFilter)) as AffectedUserFilter;
      case r'ALL_USERS':
        return serializers.deserialize(serialized, specifiedType: FullType(AllUsersFilter)) as AllUsersFilter;
      case r'CUSTOMER_USERS':
        return serializers.deserialize(serialized, specifiedType: FullType(CustomerUsersFilter)) as CustomerUsersFilter;
      case r'ORIGINATOR_ENTITY_OWNER_USERS':
        return serializers.deserialize(serialized, specifiedType: FullType(OriginatorEntityOwnerUsersFilter)) as OriginatorEntityOwnerUsersFilter;
      case r'SYSTEM_ADMINISTRATORS':
        return serializers.deserialize(serialized, specifiedType: FullType(SystemAdministratorsFilter)) as SystemAdministratorsFilter;
      case r'TENANT_ADMINISTRATORS':
        return serializers.deserialize(serialized, specifiedType: FullType(TenantAdministratorsFilter)) as TenantAdministratorsFilter;
      case r'USER_GROUP_LIST':
        return serializers.deserialize(serialized, specifiedType: FullType(UserGroupListFilter)) as UserGroupListFilter;
      case r'USER_LIST':
        return serializers.deserialize(serialized, specifiedType: FullType(UserListFilter)) as UserListFilter;
      case r'USER_ROLE':
        return serializers.deserialize(serialized, specifiedType: FullType(UserRoleFilter)) as UserRoleFilter;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($UsersFilter)) as $UsersFilter;
    }
  }
}


/// a concrete implementation of [UsersFilter], since [UsersFilter] is not instantiable
@BuiltValue(instantiable: true)
abstract class $UsersFilter implements UsersFilter, Built<$UsersFilter, $UsersFilterBuilder> {
  $UsersFilter._();

  factory $UsersFilter([void Function($UsersFilterBuilder)? updates]) = _$$UsersFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($UsersFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$UsersFilter> get serializer => _$$UsersFilterSerializer();
}

class _$$UsersFilterSerializer implements PrimitiveSerializer<$UsersFilter> {
  @override
  final Iterable<Type> types = const [$UsersFilter, _$$UsersFilter];

  @override
  final String wireName = r'$UsersFilter';

  @override
  Object serialize(
    Serializers serializers,
    $UsersFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(UsersFilter))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersFilterBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $UsersFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $UsersFilterBuilder();
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


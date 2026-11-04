// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/custom_menu_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/cm_scope.dart';
import 'package:thingsboard_client/src/model/custom_menu_config.dart';
import 'package:thingsboard_client/src/model/cm_assignee_type.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_menu.g.dart';

/// CustomMenu
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object with Tenant Id that owns the menu.
/// * [customerId] - JSON object with Customer Id that owns the menu.
/// * [name] - Custom menu name
/// * [scope] - Custom menu scope. Possible values: SYSTEM, TENANT, CUSTOMER
/// * [assigneeType] - Custom menu assignee type. Possible values are: All (all users of specified scope), CUSTOMERS (specified customers), USERS (specified list of users), NO_ASSIGN (no assignees), USER_GROUPS (user groups)
/// * [userGroupNames] - User group names menu is applied to
/// * [config] - Custom menu configuration
@BuiltValue()
abstract class CustomMenu implements Built<CustomMenu, CustomMenuBuilder> {
  @BuiltValueField(wireName: r'id')
  CustomMenuId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id that owns the menu.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id that owns the menu.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Custom menu name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Custom menu scope. Possible values: SYSTEM, TENANT, CUSTOMER
  @BuiltValueField(wireName: r'scope')
  CMScope get scope;
  // enum scopeEnum {  SYSTEM,  TENANT,  CUSTOMER,  };

  /// Custom menu assignee type. Possible values are: All (all users of specified scope), CUSTOMERS (specified customers), USERS (specified list of users), NO_ASSIGN (no assignees), USER_GROUPS (user groups)
  @BuiltValueField(wireName: r'assigneeType')
  CMAssigneeType get assigneeType;
  // enum assigneeTypeEnum {  NO_ASSIGN,  ALL,  CUSTOMERS,  USERS,  USER_GROUPS,  };

  /// User group names menu is applied to
  @BuiltValueField(wireName: r'userGroupNames')
  BuiltList<String>? get userGroupNames;

  /// Custom menu configuration
  @BuiltValueField(wireName: r'config')
  CustomMenuConfig? get config;

  CustomMenu._();

  factory CustomMenu([void updates(CustomMenuBuilder b)]) = _$CustomMenu;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomMenuBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomMenu> get serializer => _$CustomMenuSerializer();
}

class _$CustomMenuSerializer implements PrimitiveSerializer<CustomMenu> {
  @override
  final Iterable<Type> types = const [CustomMenu, _$CustomMenu];

  @override
  final String wireName = r'CustomMenu';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomMenu object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(CustomMenuId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(CMScope),
    );
    yield r'assigneeType';
    yield serializers.serialize(
      object.assigneeType,
      specifiedType: const FullType(CMAssigneeType),
    );
    if (object.userGroupNames != null) {
      yield r'userGroupNames';
      yield serializers.serialize(
        object.userGroupNames,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(CustomMenuConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomMenu object, {
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
    required CustomMenuBuilder result,
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
                    specifiedType: const FullType.nullable(CustomMenuId),
                  )
                  as CustomMenuId?;
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
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CMScope),
                  )
                  as CMScope;
          result.scope = valueDes;
          break;
        case r'assigneeType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CMAssigneeType),
                  )
                  as CMAssigneeType;
          result.assigneeType = valueDes;
          break;
        case r'userGroupNames':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.userGroupNames.replace(valueDes);
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomMenuConfig),
                  )
                  as CustomMenuConfig?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomMenu deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomMenuBuilder();
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

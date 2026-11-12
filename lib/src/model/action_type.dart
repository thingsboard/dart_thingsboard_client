// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_type.g.dart';

class ActionType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ADDED')
  static const ActionType ADDED = _$ADDED;
  @BuiltValueEnumConst(wireName: r'DELETED')
  static const ActionType DELETED = _$DELETED;
  @BuiltValueEnumConst(wireName: r'UPDATED')
  static const ActionType UPDATED = _$UPDATED;
  @BuiltValueEnumConst(wireName: r'ATTRIBUTES_UPDATED')
  static const ActionType ATTRIBUTES_UPDATED = _$ATTRIBUTES_UPDATED;
  @BuiltValueEnumConst(wireName: r'ATTRIBUTES_DELETED')
  static const ActionType ATTRIBUTES_DELETED = _$ATTRIBUTES_DELETED;
  @BuiltValueEnumConst(wireName: r'TIMESERIES_UPDATED')
  static const ActionType TIMESERIES_UPDATED = _$TIMESERIES_UPDATED;
  @BuiltValueEnumConst(wireName: r'TIMESERIES_DELETED')
  static const ActionType TIMESERIES_DELETED = _$TIMESERIES_DELETED;
  @BuiltValueEnumConst(wireName: r'RPC_CALL')
  static const ActionType RPC_CALL = _$RPC_CALL;
  @BuiltValueEnumConst(wireName: r'CREDENTIALS_UPDATED')
  static const ActionType CREDENTIALS_UPDATED = _$CREDENTIALS_UPDATED;
  @BuiltValueEnumConst(wireName: r'ASSIGNED_TO_CUSTOMER')
  static const ActionType ASSIGNED_TO_CUSTOMER = _$ASSIGNED_TO_CUSTOMER;
  @BuiltValueEnumConst(wireName: r'UNASSIGNED_FROM_CUSTOMER')
  static const ActionType UNASSIGNED_FROM_CUSTOMER = _$UNASSIGNED_FROM_CUSTOMER;
  @BuiltValueEnumConst(wireName: r'CHANGE_OWNER')
  static const ActionType CHANGE_OWNER = _$CHANGE_OWNER;
  @BuiltValueEnumConst(wireName: r'ACTIVATED')
  static const ActionType ACTIVATED = _$ACTIVATED;
  @BuiltValueEnumConst(wireName: r'SUSPENDED')
  static const ActionType SUSPENDED = _$SUSPENDED;
  @BuiltValueEnumConst(wireName: r'CREDENTIALS_READ')
  static const ActionType CREDENTIALS_READ = _$CREDENTIALS_READ;
  @BuiltValueEnumConst(wireName: r'ATTRIBUTES_READ')
  static const ActionType ATTRIBUTES_READ = _$ATTRIBUTES_READ;
  @BuiltValueEnumConst(wireName: r'RELATION_ADD_OR_UPDATE')
  static const ActionType RELATION_ADD_OR_UPDATE = _$RELATION_ADD_OR_UPDATE;
  @BuiltValueEnumConst(wireName: r'RELATION_DELETED')
  static const ActionType RELATION_DELETED = _$RELATION_DELETED;
  @BuiltValueEnumConst(wireName: r'RELATIONS_DELETED')
  static const ActionType RELATIONS_DELETED = _$RELATIONS_DELETED;
  @BuiltValueEnumConst(wireName: r'ALARM_ACK')
  static const ActionType ALARM_ACK = _$ALARM_ACK;
  @BuiltValueEnumConst(wireName: r'ALARM_CLEAR')
  static const ActionType ALARM_CLEAR = _$ALARM_CLEAR;
  @BuiltValueEnumConst(wireName: r'ALARM_DELETE')
  static const ActionType ALARM_DELETE = _$ALARM_DELETE;
  @BuiltValueEnumConst(wireName: r'ALARM_ASSIGNED')
  static const ActionType ALARM_ASSIGNED = _$ALARM_ASSIGNED;
  @BuiltValueEnumConst(wireName: r'ALARM_UNASSIGNED')
  static const ActionType ALARM_UNASSIGNED = _$ALARM_UNASSIGNED;
  @BuiltValueEnumConst(wireName: r'ADDED_TO_ENTITY_GROUP')
  static const ActionType ADDED_TO_ENTITY_GROUP = _$ADDED_TO_ENTITY_GROUP;
  @BuiltValueEnumConst(wireName: r'REMOVED_FROM_ENTITY_GROUP')
  static const ActionType REMOVED_FROM_ENTITY_GROUP =
      _$REMOVED_FROM_ENTITY_GROUP;
  @BuiltValueEnumConst(wireName: r'REST_API_RULE_ENGINE_CALL')
  static const ActionType REST_API_RULE_ENGINE_CALL =
      _$REST_API_RULE_ENGINE_CALL;
  @BuiltValueEnumConst(wireName: r'MADE_PUBLIC')
  static const ActionType MADE_PUBLIC = _$MADE_PUBLIC;
  @BuiltValueEnumConst(wireName: r'MADE_PRIVATE')
  static const ActionType MADE_PRIVATE = _$MADE_PRIVATE;
  @BuiltValueEnumConst(wireName: r'LOGIN')
  static const ActionType LOGIN = _$LOGIN;
  @BuiltValueEnumConst(wireName: r'LOGOUT')
  static const ActionType LOGOUT = _$LOGOUT;
  @BuiltValueEnumConst(wireName: r'LOCKOUT')
  static const ActionType LOCKOUT = _$LOCKOUT;
  @BuiltValueEnumConst(wireName: r'ASSIGNED_FROM_TENANT')
  static const ActionType ASSIGNED_FROM_TENANT = _$ASSIGNED_FROM_TENANT;
  @BuiltValueEnumConst(wireName: r'ASSIGNED_TO_TENANT')
  static const ActionType ASSIGNED_TO_TENANT = _$ASSIGNED_TO_TENANT;
  @BuiltValueEnumConst(wireName: r'PROVISION_SUCCESS')
  static const ActionType PROVISION_SUCCESS = _$PROVISION_SUCCESS;
  @BuiltValueEnumConst(wireName: r'PROVISION_FAILURE')
  static const ActionType PROVISION_FAILURE = _$PROVISION_FAILURE;
  @BuiltValueEnumConst(wireName: r'ASSIGNED_TO_EDGE')
  static const ActionType ASSIGNED_TO_EDGE = _$ASSIGNED_TO_EDGE;
  @BuiltValueEnumConst(wireName: r'UNASSIGNED_FROM_EDGE')
  static const ActionType UNASSIGNED_FROM_EDGE = _$UNASSIGNED_FROM_EDGE;
  @BuiltValueEnumConst(wireName: r'ADDED_COMMENT')
  static const ActionType ADDED_COMMENT = _$ADDED_COMMENT;
  @BuiltValueEnumConst(wireName: r'UPDATED_COMMENT')
  static const ActionType UPDATED_COMMENT = _$UPDATED_COMMENT;
  @BuiltValueEnumConst(wireName: r'DELETED_COMMENT')
  static const ActionType DELETED_COMMENT = _$DELETED_COMMENT;
  @BuiltValueEnumConst(wireName: r'SMS_SENT')
  static const ActionType SMS_SENT = _$SMS_SENT;
  @BuiltValueEnumConst(wireName: r'NON_PRODUCTION_CONFIRMED')
  static const ActionType NON_PRODUCTION_CONFIRMED = _$NON_PRODUCTION_CONFIRMED;
  @BuiltValueEnumConst(wireName: r'COMMUNITY_GRANT_OFFLINE_CHECKER_RUN')
  static const ActionType COMMUNITY_GRANT_OFFLINE_CHECKER_RUN =
      _$COMMUNITY_GRANT_OFFLINE_CHECKER_RUN;
  @BuiltValueEnumConst(wireName: r'COMMUNITY_GRANT_REQUEST_ACCESS')
  static const ActionType COMMUNITY_GRANT_REQUEST_ACCESS =
      _$COMMUNITY_GRANT_REQUEST_ACCESS;
  @BuiltValueEnumConst(wireName: r'COMMUNITY_GRANT_ENROLLMENT')
  static const ActionType COMMUNITY_GRANT_ENROLLMENT =
      _$COMMUNITY_GRANT_ENROLLMENT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ActionType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ActionType> get serializer => _$actionTypeSerializer;

  const ActionType._(String name) : super(name);

  static BuiltSet<ActionType> get values => _$values;
  static ActionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ActionTypeMixin = Object with _$ActionTypeMixin;

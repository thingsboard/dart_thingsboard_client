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

part 'edge_event_action_type.g.dart';

class EdgeEventActionType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ADDED')
  static const EdgeEventActionType ADDED = _$ADDED;
  @BuiltValueEnumConst(wireName: r'UPDATED')
  static const EdgeEventActionType UPDATED = _$UPDATED;
  @BuiltValueEnumConst(wireName: r'DELETED')
  static const EdgeEventActionType DELETED = _$DELETED;
  @BuiltValueEnumConst(wireName: r'POST_ATTRIBUTES')
  static const EdgeEventActionType POST_ATTRIBUTES = _$POST_ATTRIBUTES;
  @BuiltValueEnumConst(wireName: r'ATTRIBUTES_UPDATED')
  static const EdgeEventActionType ATTRIBUTES_UPDATED = _$ATTRIBUTES_UPDATED;
  @BuiltValueEnumConst(wireName: r'ATTRIBUTES_DELETED')
  static const EdgeEventActionType ATTRIBUTES_DELETED = _$ATTRIBUTES_DELETED;
  @BuiltValueEnumConst(wireName: r'TIMESERIES_UPDATED')
  static const EdgeEventActionType TIMESERIES_UPDATED = _$TIMESERIES_UPDATED;
  @BuiltValueEnumConst(wireName: r'CREDENTIALS_UPDATED')
  static const EdgeEventActionType CREDENTIALS_UPDATED = _$CREDENTIALS_UPDATED;
  @BuiltValueEnumConst(wireName: r'RELATION_ADD_OR_UPDATE')
  static const EdgeEventActionType RELATION_ADD_OR_UPDATE =
      _$RELATION_ADD_OR_UPDATE;
  @BuiltValueEnumConst(wireName: r'RELATION_DELETED')
  static const EdgeEventActionType RELATION_DELETED = _$RELATION_DELETED;
  @BuiltValueEnumConst(wireName: r'RPC_CALL')
  static const EdgeEventActionType RPC_CALL = _$RPC_CALL;
  @BuiltValueEnumConst(wireName: r'ALARM_ACK')
  static const EdgeEventActionType ALARM_ACK = _$ALARM_ACK;
  @BuiltValueEnumConst(wireName: r'ALARM_CLEAR')
  static const EdgeEventActionType ALARM_CLEAR = _$ALARM_CLEAR;
  @BuiltValueEnumConst(wireName: r'ALARM_DELETE')
  static const EdgeEventActionType ALARM_DELETE = _$ALARM_DELETE;
  @BuiltValueEnumConst(wireName: r'ALARM_ASSIGNED')
  static const EdgeEventActionType ALARM_ASSIGNED = _$ALARM_ASSIGNED;
  @BuiltValueEnumConst(wireName: r'ALARM_UNASSIGNED')
  static const EdgeEventActionType ALARM_UNASSIGNED = _$ALARM_UNASSIGNED;
  @BuiltValueEnumConst(wireName: r'ADDED_COMMENT')
  static const EdgeEventActionType ADDED_COMMENT = _$ADDED_COMMENT;
  @BuiltValueEnumConst(wireName: r'UPDATED_COMMENT')
  static const EdgeEventActionType UPDATED_COMMENT = _$UPDATED_COMMENT;
  @BuiltValueEnumConst(wireName: r'DELETED_COMMENT')
  static const EdgeEventActionType DELETED_COMMENT = _$DELETED_COMMENT;
  @BuiltValueEnumConst(wireName: r'ASSIGNED_TO_EDGE')
  static const EdgeEventActionType ASSIGNED_TO_EDGE = _$ASSIGNED_TO_EDGE;
  @BuiltValueEnumConst(wireName: r'UNASSIGNED_FROM_EDGE')
  static const EdgeEventActionType UNASSIGNED_FROM_EDGE =
      _$UNASSIGNED_FROM_EDGE;
  @BuiltValueEnumConst(wireName: r'CREDENTIALS_REQUEST')
  static const EdgeEventActionType CREDENTIALS_REQUEST = _$CREDENTIALS_REQUEST;
  @BuiltValueEnumConst(wireName: r'ADDED_TO_ENTITY_GROUP')
  static const EdgeEventActionType ADDED_TO_ENTITY_GROUP =
      _$ADDED_TO_ENTITY_GROUP;
  @BuiltValueEnumConst(wireName: r'REMOVED_FROM_ENTITY_GROUP')
  static const EdgeEventActionType REMOVED_FROM_ENTITY_GROUP =
      _$REMOVED_FROM_ENTITY_GROUP;
  @BuiltValueEnumConst(wireName: r'CHANGE_OWNER')
  static const EdgeEventActionType CHANGE_OWNER = _$CHANGE_OWNER;
  @BuiltValueEnumConst(wireName: r'ENTITY_MERGE_REQUEST')
  static const EdgeEventActionType ENTITY_MERGE_REQUEST =
      _$ENTITY_MERGE_REQUEST;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdgeEventActionType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<EdgeEventActionType> get serializer =>
      _$edgeEventActionTypeSerializer;

  const EdgeEventActionType._(String name) : super(name);

  static BuiltSet<EdgeEventActionType> get values => _$values;
  static EdgeEventActionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EdgeEventActionTypeMixin = Object
    with _$EdgeEventActionTypeMixin;

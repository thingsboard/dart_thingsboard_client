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

part 'cm_assignee_type.g.dart';

class CMAssigneeType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NO_ASSIGN')
  static const CMAssigneeType NO_ASSIGN = _$NO_ASSIGN;
  @BuiltValueEnumConst(wireName: r'ALL')
  static const CMAssigneeType ALL = _$ALL;
  @BuiltValueEnumConst(wireName: r'CUSTOMERS')
  static const CMAssigneeType CUSTOMERS = _$CUSTOMERS;
  @BuiltValueEnumConst(wireName: r'USERS')
  static const CMAssigneeType USERS = _$USERS;
  @BuiltValueEnumConst(wireName: r'USER_GROUPS')
  static const CMAssigneeType USER_GROUPS = _$USER_GROUPS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CMAssigneeType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<CMAssigneeType> get serializer =>
      _$cMAssigneeTypeSerializer;

  const CMAssigneeType._(String name) : super(name);

  static BuiltSet<CMAssigneeType> get values => _$values;
  static CMAssigneeType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CMAssigneeTypeMixin = Object with _$CMAssigneeTypeMixin;

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

part 'operation.g.dart';

class Operation extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ALL')
  static const Operation ALL = _$ALL;
  @BuiltValueEnumConst(wireName: r'CREATE')
  static const Operation CREATE = _$CREATE;
  @BuiltValueEnumConst(wireName: r'READ')
  static const Operation READ = _$READ;
  @BuiltValueEnumConst(wireName: r'WRITE')
  static const Operation WRITE = _$WRITE;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const Operation DELETE = _$DELETE;
  @BuiltValueEnumConst(wireName: r'RPC_CALL')
  static const Operation RPC_CALL = _$RPC_CALL;
  @BuiltValueEnumConst(wireName: r'READ_CREDENTIALS')
  static const Operation READ_CREDENTIALS = _$READ_CREDENTIALS;
  @BuiltValueEnumConst(wireName: r'WRITE_CREDENTIALS')
  static const Operation WRITE_CREDENTIALS = _$WRITE_CREDENTIALS;
  @BuiltValueEnumConst(wireName: r'READ_ATTRIBUTES')
  static const Operation READ_ATTRIBUTES = _$READ_ATTRIBUTES;
  @BuiltValueEnumConst(wireName: r'WRITE_ATTRIBUTES')
  static const Operation WRITE_ATTRIBUTES = _$WRITE_ATTRIBUTES;
  @BuiltValueEnumConst(wireName: r'READ_TELEMETRY')
  static const Operation READ_TELEMETRY = _$READ_TELEMETRY;
  @BuiltValueEnumConst(wireName: r'WRITE_TELEMETRY')
  static const Operation WRITE_TELEMETRY = _$WRITE_TELEMETRY;
  @BuiltValueEnumConst(wireName: r'ADD_TO_GROUP')
  static const Operation ADD_TO_GROUP = _$ADD_TO_GROUP;
  @BuiltValueEnumConst(wireName: r'REMOVE_FROM_GROUP')
  static const Operation REMOVE_FROM_GROUP = _$REMOVE_FROM_GROUP;
  @BuiltValueEnumConst(wireName: r'CHANGE_OWNER')
  static const Operation CHANGE_OWNER = _$CHANGE_OWNER;
  @BuiltValueEnumConst(wireName: r'IMPERSONATE')
  static const Operation IMPERSONATE = _$IMPERSONATE;
  @BuiltValueEnumConst(wireName: r'CLAIM_DEVICES')
  static const Operation CLAIM_DEVICES = _$CLAIM_DEVICES;
  @BuiltValueEnumConst(wireName: r'SHARE_GROUP')
  static const Operation SHARE_GROUP = _$SHARE_GROUP;
  @BuiltValueEnumConst(wireName: r'ASSIGN_TO_TENANT')
  static const Operation ASSIGN_TO_TENANT = _$ASSIGN_TO_TENANT;
  @BuiltValueEnumConst(wireName: r'READ_CALCULATED_FIELD')
  static const Operation READ_CALCULATED_FIELD = _$READ_CALCULATED_FIELD;
  @BuiltValueEnumConst(wireName: r'WRITE_CALCULATED_FIELD')
  static const Operation WRITE_CALCULATED_FIELD = _$WRITE_CALCULATED_FIELD;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const Operation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<Operation> get serializer => _$operationSerializer;

  const Operation._(String name) : super(name);

  static BuiltSet<Operation> get values => _$values;
  static Operation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OperationMixin = Object with _$OperationMixin;

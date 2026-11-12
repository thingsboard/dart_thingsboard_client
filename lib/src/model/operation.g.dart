// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Operation _$ALL = const Operation._('ALL');
const Operation _$CREATE = const Operation._('CREATE');
const Operation _$READ = const Operation._('READ');
const Operation _$WRITE = const Operation._('WRITE');
const Operation _$DELETE = const Operation._('DELETE');
const Operation _$RPC_CALL = const Operation._('RPC_CALL');
const Operation _$READ_CREDENTIALS = const Operation._('READ_CREDENTIALS');
const Operation _$WRITE_CREDENTIALS = const Operation._('WRITE_CREDENTIALS');
const Operation _$READ_ATTRIBUTES = const Operation._('READ_ATTRIBUTES');
const Operation _$WRITE_ATTRIBUTES = const Operation._('WRITE_ATTRIBUTES');
const Operation _$READ_TELEMETRY = const Operation._('READ_TELEMETRY');
const Operation _$WRITE_TELEMETRY = const Operation._('WRITE_TELEMETRY');
const Operation _$ADD_TO_GROUP = const Operation._('ADD_TO_GROUP');
const Operation _$REMOVE_FROM_GROUP = const Operation._('REMOVE_FROM_GROUP');
const Operation _$CHANGE_OWNER = const Operation._('CHANGE_OWNER');
const Operation _$IMPERSONATE = const Operation._('IMPERSONATE');
const Operation _$CLAIM_DEVICES = const Operation._('CLAIM_DEVICES');
const Operation _$SHARE_GROUP = const Operation._('SHARE_GROUP');
const Operation _$ASSIGN_TO_TENANT = const Operation._('ASSIGN_TO_TENANT');
const Operation _$READ_CALCULATED_FIELD = const Operation._(
  'READ_CALCULATED_FIELD',
);
const Operation _$WRITE_CALCULATED_FIELD = const Operation._(
  'WRITE_CALCULATED_FIELD',
);
const Operation _$INVOKE = const Operation._('INVOKE');
const Operation _$unknownDefaultOpenApi = const Operation._(
  'unknownDefaultOpenApi',
);

Operation _$valueOf(String name) {
  switch (name) {
    case 'ALL':
      return _$ALL;
    case 'CREATE':
      return _$CREATE;
    case 'READ':
      return _$READ;
    case 'WRITE':
      return _$WRITE;
    case 'DELETE':
      return _$DELETE;
    case 'RPC_CALL':
      return _$RPC_CALL;
    case 'READ_CREDENTIALS':
      return _$READ_CREDENTIALS;
    case 'WRITE_CREDENTIALS':
      return _$WRITE_CREDENTIALS;
    case 'READ_ATTRIBUTES':
      return _$READ_ATTRIBUTES;
    case 'WRITE_ATTRIBUTES':
      return _$WRITE_ATTRIBUTES;
    case 'READ_TELEMETRY':
      return _$READ_TELEMETRY;
    case 'WRITE_TELEMETRY':
      return _$WRITE_TELEMETRY;
    case 'ADD_TO_GROUP':
      return _$ADD_TO_GROUP;
    case 'REMOVE_FROM_GROUP':
      return _$REMOVE_FROM_GROUP;
    case 'CHANGE_OWNER':
      return _$CHANGE_OWNER;
    case 'IMPERSONATE':
      return _$IMPERSONATE;
    case 'CLAIM_DEVICES':
      return _$CLAIM_DEVICES;
    case 'SHARE_GROUP':
      return _$SHARE_GROUP;
    case 'ASSIGN_TO_TENANT':
      return _$ASSIGN_TO_TENANT;
    case 'READ_CALCULATED_FIELD':
      return _$READ_CALCULATED_FIELD;
    case 'WRITE_CALCULATED_FIELD':
      return _$WRITE_CALCULATED_FIELD;
    case 'INVOKE':
      return _$INVOKE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<Operation> _$values = BuiltSet<Operation>(const <Operation>[
  _$ALL,
  _$CREATE,
  _$READ,
  _$WRITE,
  _$DELETE,
  _$RPC_CALL,
  _$READ_CREDENTIALS,
  _$WRITE_CREDENTIALS,
  _$READ_ATTRIBUTES,
  _$WRITE_ATTRIBUTES,
  _$READ_TELEMETRY,
  _$WRITE_TELEMETRY,
  _$ADD_TO_GROUP,
  _$REMOVE_FROM_GROUP,
  _$CHANGE_OWNER,
  _$IMPERSONATE,
  _$CLAIM_DEVICES,
  _$SHARE_GROUP,
  _$ASSIGN_TO_TENANT,
  _$READ_CALCULATED_FIELD,
  _$WRITE_CALCULATED_FIELD,
  _$INVOKE,
  _$unknownDefaultOpenApi,
]);

class _$OperationMeta {
  const _$OperationMeta();
  Operation get ALL => _$ALL;
  Operation get CREATE => _$CREATE;
  Operation get READ => _$READ;
  Operation get WRITE => _$WRITE;
  Operation get DELETE => _$DELETE;
  Operation get RPC_CALL => _$RPC_CALL;
  Operation get READ_CREDENTIALS => _$READ_CREDENTIALS;
  Operation get WRITE_CREDENTIALS => _$WRITE_CREDENTIALS;
  Operation get READ_ATTRIBUTES => _$READ_ATTRIBUTES;
  Operation get WRITE_ATTRIBUTES => _$WRITE_ATTRIBUTES;
  Operation get READ_TELEMETRY => _$READ_TELEMETRY;
  Operation get WRITE_TELEMETRY => _$WRITE_TELEMETRY;
  Operation get ADD_TO_GROUP => _$ADD_TO_GROUP;
  Operation get REMOVE_FROM_GROUP => _$REMOVE_FROM_GROUP;
  Operation get CHANGE_OWNER => _$CHANGE_OWNER;
  Operation get IMPERSONATE => _$IMPERSONATE;
  Operation get CLAIM_DEVICES => _$CLAIM_DEVICES;
  Operation get SHARE_GROUP => _$SHARE_GROUP;
  Operation get ASSIGN_TO_TENANT => _$ASSIGN_TO_TENANT;
  Operation get READ_CALCULATED_FIELD => _$READ_CALCULATED_FIELD;
  Operation get WRITE_CALCULATED_FIELD => _$WRITE_CALCULATED_FIELD;
  Operation get INVOKE => _$INVOKE;
  Operation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  Operation valueOf(String name) => _$valueOf(name);
  BuiltSet<Operation> get values => _$values;
}

mixin _$OperationMixin {
  // ignore: non_constant_identifier_names
  _$OperationMeta get Operation => const _$OperationMeta();
}

Serializer<Operation> _$operationSerializer = _$OperationSerializer();

class _$OperationSerializer implements PrimitiveSerializer<Operation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ALL': 'ALL',
    'CREATE': 'CREATE',
    'READ': 'READ',
    'WRITE': 'WRITE',
    'DELETE': 'DELETE',
    'RPC_CALL': 'RPC_CALL',
    'READ_CREDENTIALS': 'READ_CREDENTIALS',
    'WRITE_CREDENTIALS': 'WRITE_CREDENTIALS',
    'READ_ATTRIBUTES': 'READ_ATTRIBUTES',
    'WRITE_ATTRIBUTES': 'WRITE_ATTRIBUTES',
    'READ_TELEMETRY': 'READ_TELEMETRY',
    'WRITE_TELEMETRY': 'WRITE_TELEMETRY',
    'ADD_TO_GROUP': 'ADD_TO_GROUP',
    'REMOVE_FROM_GROUP': 'REMOVE_FROM_GROUP',
    'CHANGE_OWNER': 'CHANGE_OWNER',
    'IMPERSONATE': 'IMPERSONATE',
    'CLAIM_DEVICES': 'CLAIM_DEVICES',
    'SHARE_GROUP': 'SHARE_GROUP',
    'ASSIGN_TO_TENANT': 'ASSIGN_TO_TENANT',
    'READ_CALCULATED_FIELD': 'READ_CALCULATED_FIELD',
    'WRITE_CALCULATED_FIELD': 'WRITE_CALCULATED_FIELD',
    'INVOKE': 'INVOKE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ALL': 'ALL',
    'CREATE': 'CREATE',
    'READ': 'READ',
    'WRITE': 'WRITE',
    'DELETE': 'DELETE',
    'RPC_CALL': 'RPC_CALL',
    'READ_CREDENTIALS': 'READ_CREDENTIALS',
    'WRITE_CREDENTIALS': 'WRITE_CREDENTIALS',
    'READ_ATTRIBUTES': 'READ_ATTRIBUTES',
    'WRITE_ATTRIBUTES': 'WRITE_ATTRIBUTES',
    'READ_TELEMETRY': 'READ_TELEMETRY',
    'WRITE_TELEMETRY': 'WRITE_TELEMETRY',
    'ADD_TO_GROUP': 'ADD_TO_GROUP',
    'REMOVE_FROM_GROUP': 'REMOVE_FROM_GROUP',
    'CHANGE_OWNER': 'CHANGE_OWNER',
    'IMPERSONATE': 'IMPERSONATE',
    'CLAIM_DEVICES': 'CLAIM_DEVICES',
    'SHARE_GROUP': 'SHARE_GROUP',
    'ASSIGN_TO_TENANT': 'ASSIGN_TO_TENANT',
    'READ_CALCULATED_FIELD': 'READ_CALCULATED_FIELD',
    'WRITE_CALCULATED_FIELD': 'WRITE_CALCULATED_FIELD',
    'INVOKE': 'INVOKE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[Operation];
  @override
  final String wireName = 'Operation';

  @override
  Object serialize(
    Serializers serializers,
    Operation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  Operation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => Operation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BooleanOperation _$EQUAL = const BooleanOperation._('EQUAL');
const BooleanOperation _$NOT_EQUAL = const BooleanOperation._('NOT_EQUAL');
const BooleanOperation _$unknownDefaultOpenApi = const BooleanOperation._(
  'unknownDefaultOpenApi',
);

BooleanOperation _$valueOf(String name) {
  switch (name) {
    case 'EQUAL':
      return _$EQUAL;
    case 'NOT_EQUAL':
      return _$NOT_EQUAL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<BooleanOperation> _$values = BuiltSet<BooleanOperation>(
  const <BooleanOperation>[_$EQUAL, _$NOT_EQUAL, _$unknownDefaultOpenApi],
);

class _$BooleanOperationMeta {
  const _$BooleanOperationMeta();
  BooleanOperation get EQUAL => _$EQUAL;
  BooleanOperation get NOT_EQUAL => _$NOT_EQUAL;
  BooleanOperation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  BooleanOperation valueOf(String name) => _$valueOf(name);
  BuiltSet<BooleanOperation> get values => _$values;
}

mixin _$BooleanOperationMixin {
  // ignore: non_constant_identifier_names
  _$BooleanOperationMeta get BooleanOperation => const _$BooleanOperationMeta();
}

Serializer<BooleanOperation> _$booleanOperationSerializer =
    _$BooleanOperationSerializer();

class _$BooleanOperationSerializer
    implements PrimitiveSerializer<BooleanOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BooleanOperation];
  @override
  final String wireName = 'BooleanOperation';

  @override
  Object serialize(
    Serializers serializers,
    BooleanOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BooleanOperation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BooleanOperation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

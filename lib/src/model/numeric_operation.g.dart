// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numeric_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NumericOperation _$EQUAL = const NumericOperation._('EQUAL');
const NumericOperation _$NOT_EQUAL = const NumericOperation._('NOT_EQUAL');
const NumericOperation _$GREATER = const NumericOperation._('GREATER');
const NumericOperation _$LESS = const NumericOperation._('LESS');
const NumericOperation _$GREATER_OR_EQUAL = const NumericOperation._(
  'GREATER_OR_EQUAL',
);
const NumericOperation _$LESS_OR_EQUAL = const NumericOperation._(
  'LESS_OR_EQUAL',
);
const NumericOperation _$unknownDefaultOpenApi = const NumericOperation._(
  'unknownDefaultOpenApi',
);

NumericOperation _$valueOf(String name) {
  switch (name) {
    case 'EQUAL':
      return _$EQUAL;
    case 'NOT_EQUAL':
      return _$NOT_EQUAL;
    case 'GREATER':
      return _$GREATER;
    case 'LESS':
      return _$LESS;
    case 'GREATER_OR_EQUAL':
      return _$GREATER_OR_EQUAL;
    case 'LESS_OR_EQUAL':
      return _$LESS_OR_EQUAL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<NumericOperation> _$values =
    BuiltSet<NumericOperation>(const <NumericOperation>[
      _$EQUAL,
      _$NOT_EQUAL,
      _$GREATER,
      _$LESS,
      _$GREATER_OR_EQUAL,
      _$LESS_OR_EQUAL,
      _$unknownDefaultOpenApi,
    ]);

class _$NumericOperationMeta {
  const _$NumericOperationMeta();
  NumericOperation get EQUAL => _$EQUAL;
  NumericOperation get NOT_EQUAL => _$NOT_EQUAL;
  NumericOperation get GREATER => _$GREATER;
  NumericOperation get LESS => _$LESS;
  NumericOperation get GREATER_OR_EQUAL => _$GREATER_OR_EQUAL;
  NumericOperation get LESS_OR_EQUAL => _$LESS_OR_EQUAL;
  NumericOperation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  NumericOperation valueOf(String name) => _$valueOf(name);
  BuiltSet<NumericOperation> get values => _$values;
}

mixin _$NumericOperationMixin {
  // ignore: non_constant_identifier_names
  _$NumericOperationMeta get NumericOperation => const _$NumericOperationMeta();
}

Serializer<NumericOperation> _$numericOperationSerializer =
    _$NumericOperationSerializer();

class _$NumericOperationSerializer
    implements PrimitiveSerializer<NumericOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'GREATER': 'GREATER',
    'LESS': 'LESS',
    'GREATER_OR_EQUAL': 'GREATER_OR_EQUAL',
    'LESS_OR_EQUAL': 'LESS_OR_EQUAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'GREATER': 'GREATER',
    'LESS': 'LESS',
    'GREATER_OR_EQUAL': 'GREATER_OR_EQUAL',
    'LESS_OR_EQUAL': 'LESS_OR_EQUAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NumericOperation];
  @override
  final String wireName = 'NumericOperation';

  @override
  Object serialize(
    Serializers serializers,
    NumericOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NumericOperation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NumericOperation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

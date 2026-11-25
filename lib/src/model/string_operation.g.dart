// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StringOperation _$EQUAL = const StringOperation._('EQUAL');
const StringOperation _$NOT_EQUAL = const StringOperation._('NOT_EQUAL');
const StringOperation _$STARTS_WITH = const StringOperation._('STARTS_WITH');
const StringOperation _$ENDS_WITH = const StringOperation._('ENDS_WITH');
const StringOperation _$CONTAINS = const StringOperation._('CONTAINS');
const StringOperation _$NOT_CONTAINS = const StringOperation._('NOT_CONTAINS');
const StringOperation _$IN = const StringOperation._('IN');
const StringOperation _$NOT_IN = const StringOperation._('NOT_IN');
const StringOperation _$unknownDefaultOpenApi = const StringOperation._(
  'unknownDefaultOpenApi',
);

StringOperation _$valueOf(String name) {
  switch (name) {
    case 'EQUAL':
      return _$EQUAL;
    case 'NOT_EQUAL':
      return _$NOT_EQUAL;
    case 'STARTS_WITH':
      return _$STARTS_WITH;
    case 'ENDS_WITH':
      return _$ENDS_WITH;
    case 'CONTAINS':
      return _$CONTAINS;
    case 'NOT_CONTAINS':
      return _$NOT_CONTAINS;
    case 'IN':
      return _$IN;
    case 'NOT_IN':
      return _$NOT_IN;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<StringOperation> _$values =
    BuiltSet<StringOperation>(const <StringOperation>[
      _$EQUAL,
      _$NOT_EQUAL,
      _$STARTS_WITH,
      _$ENDS_WITH,
      _$CONTAINS,
      _$NOT_CONTAINS,
      _$IN,
      _$NOT_IN,
      _$unknownDefaultOpenApi,
    ]);

class _$StringOperationMeta {
  const _$StringOperationMeta();
  StringOperation get EQUAL => _$EQUAL;
  StringOperation get NOT_EQUAL => _$NOT_EQUAL;
  StringOperation get STARTS_WITH => _$STARTS_WITH;
  StringOperation get ENDS_WITH => _$ENDS_WITH;
  StringOperation get CONTAINS => _$CONTAINS;
  StringOperation get NOT_CONTAINS => _$NOT_CONTAINS;
  StringOperation get IN => _$IN;
  StringOperation get NOT_IN => _$NOT_IN;
  StringOperation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  StringOperation valueOf(String name) => _$valueOf(name);
  BuiltSet<StringOperation> get values => _$values;
}

mixin _$StringOperationMixin {
  // ignore: non_constant_identifier_names
  _$StringOperationMeta get StringOperation => const _$StringOperationMeta();
}

Serializer<StringOperation> _$stringOperationSerializer =
    _$StringOperationSerializer();

class _$StringOperationSerializer
    implements PrimitiveSerializer<StringOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'STARTS_WITH': 'STARTS_WITH',
    'ENDS_WITH': 'ENDS_WITH',
    'CONTAINS': 'CONTAINS',
    'NOT_CONTAINS': 'NOT_CONTAINS',
    'IN': 'IN',
    'NOT_IN': 'NOT_IN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'STARTS_WITH': 'STARTS_WITH',
    'ENDS_WITH': 'ENDS_WITH',
    'CONTAINS': 'CONTAINS',
    'NOT_CONTAINS': 'NOT_CONTAINS',
    'IN': 'IN',
    'NOT_IN': 'NOT_IN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StringOperation];
  @override
  final String wireName = 'StringOperation';

  @override
  Object serialize(
    Serializers serializers,
    StringOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StringOperation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StringOperation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_sort_direction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TableSortDirection _$ASC = const TableSortDirection._('ASC');
const TableSortDirection _$DESC = const TableSortDirection._('DESC');
const TableSortDirection _$unknownDefaultOpenApi = const TableSortDirection._(
  'unknownDefaultOpenApi',
);

TableSortDirection _$valueOf(String name) {
  switch (name) {
    case 'ASC':
      return _$ASC;
    case 'DESC':
      return _$DESC;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TableSortDirection> _$values = BuiltSet<TableSortDirection>(
  const <TableSortDirection>[_$ASC, _$DESC, _$unknownDefaultOpenApi],
);

class _$TableSortDirectionMeta {
  const _$TableSortDirectionMeta();
  TableSortDirection get ASC => _$ASC;
  TableSortDirection get DESC => _$DESC;
  TableSortDirection get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TableSortDirection valueOf(String name) => _$valueOf(name);
  BuiltSet<TableSortDirection> get values => _$values;
}

mixin _$TableSortDirectionMixin {
  // ignore: non_constant_identifier_names
  _$TableSortDirectionMeta get TableSortDirection =>
      const _$TableSortDirectionMeta();
}

Serializer<TableSortDirection> _$tableSortDirectionSerializer =
    _$TableSortDirectionSerializer();

class _$TableSortDirectionSerializer
    implements PrimitiveSerializer<TableSortDirection> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ASC': 'ASC',
    'DESC': 'DESC',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ASC': 'ASC',
    'DESC': 'DESC',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TableSortDirection];
  @override
  final String wireName = 'TableSortDirection';

  @override
  Object serialize(
    Serializers serializers,
    TableSortDirection object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TableSortDirection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TableSortDirection.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

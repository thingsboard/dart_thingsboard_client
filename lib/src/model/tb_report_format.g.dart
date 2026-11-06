// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_report_format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TbReportFormat _$PDF = const TbReportFormat._('PDF');
const TbReportFormat _$CSV = const TbReportFormat._('CSV');
const TbReportFormat _$unknownDefaultOpenApi = const TbReportFormat._(
  'unknownDefaultOpenApi',
);

TbReportFormat _$valueOf(String name) {
  switch (name) {
    case 'PDF':
      return _$PDF;
    case 'CSV':
      return _$CSV;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TbReportFormat> _$values = BuiltSet<TbReportFormat>(
  const <TbReportFormat>[_$PDF, _$CSV, _$unknownDefaultOpenApi],
);

class _$TbReportFormatMeta {
  const _$TbReportFormatMeta();
  TbReportFormat get PDF => _$PDF;
  TbReportFormat get CSV => _$CSV;
  TbReportFormat get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TbReportFormat valueOf(String name) => _$valueOf(name);
  BuiltSet<TbReportFormat> get values => _$values;
}

mixin _$TbReportFormatMixin {
  // ignore: non_constant_identifier_names
  _$TbReportFormatMeta get TbReportFormat => const _$TbReportFormatMeta();
}

Serializer<TbReportFormat> _$tbReportFormatSerializer =
    _$TbReportFormatSerializer();

class _$TbReportFormatSerializer
    implements PrimitiveSerializer<TbReportFormat> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PDF': 'PDF',
    'CSV': 'CSV',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PDF': 'PDF',
    'CSV': 'CSV',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TbReportFormat];
  @override
  final String wireName = 'TbReportFormat';

  @override
  Object serialize(
    Serializers serializers,
    TbReportFormat object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TbReportFormat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TbReportFormat.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

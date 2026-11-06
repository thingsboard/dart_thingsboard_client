// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_template_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportTemplateType _$REPORT = const ReportTemplateType._('REPORT');
const ReportTemplateType _$SUB_REPORT = const ReportTemplateType._(
  'SUB_REPORT',
);
const ReportTemplateType _$unknownDefaultOpenApi = const ReportTemplateType._(
  'unknownDefaultOpenApi',
);

ReportTemplateType _$valueOf(String name) {
  switch (name) {
    case 'REPORT':
      return _$REPORT;
    case 'SUB_REPORT':
      return _$SUB_REPORT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ReportTemplateType> _$values = BuiltSet<ReportTemplateType>(
  const <ReportTemplateType>[_$REPORT, _$SUB_REPORT, _$unknownDefaultOpenApi],
);

class _$ReportTemplateTypeMeta {
  const _$ReportTemplateTypeMeta();
  ReportTemplateType get REPORT => _$REPORT;
  ReportTemplateType get SUB_REPORT => _$SUB_REPORT;
  ReportTemplateType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ReportTemplateType valueOf(String name) => _$valueOf(name);
  BuiltSet<ReportTemplateType> get values => _$values;
}

mixin _$ReportTemplateTypeMixin {
  // ignore: non_constant_identifier_names
  _$ReportTemplateTypeMeta get ReportTemplateType =>
      const _$ReportTemplateTypeMeta();
}

Serializer<ReportTemplateType> _$reportTemplateTypeSerializer =
    _$ReportTemplateTypeSerializer();

class _$ReportTemplateTypeSerializer
    implements PrimitiveSerializer<ReportTemplateType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REPORT': 'REPORT',
    'SUB_REPORT': 'SUB_REPORT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REPORT': 'REPORT',
    'SUB_REPORT': 'SUB_REPORT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportTemplateType];
  @override
  final String wireName = 'ReportTemplateType';

  @override
  Object serialize(
    Serializers serializers,
    ReportTemplateType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportTemplateType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportTemplateType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

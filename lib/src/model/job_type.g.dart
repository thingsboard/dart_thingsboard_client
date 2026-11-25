// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JobType _$CF_REPROCESSING = const JobType._('CF_REPROCESSING');
const JobType _$REPORT = const JobType._('REPORT');
const JobType _$DUMMY = const JobType._('DUMMY');
const JobType _$unknownDefaultOpenApi = const JobType._(
  'unknownDefaultOpenApi',
);

JobType _$valueOf(String name) {
  switch (name) {
    case 'CF_REPROCESSING':
      return _$CF_REPROCESSING;
    case 'REPORT':
      return _$REPORT;
    case 'DUMMY':
      return _$DUMMY;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<JobType> _$values = BuiltSet<JobType>(const <JobType>[
  _$CF_REPROCESSING,
  _$REPORT,
  _$DUMMY,
  _$unknownDefaultOpenApi,
]);

class _$JobTypeMeta {
  const _$JobTypeMeta();
  JobType get CF_REPROCESSING => _$CF_REPROCESSING;
  JobType get REPORT => _$REPORT;
  JobType get DUMMY => _$DUMMY;
  JobType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  JobType valueOf(String name) => _$valueOf(name);
  BuiltSet<JobType> get values => _$values;
}

mixin _$JobTypeMixin {
  // ignore: non_constant_identifier_names
  _$JobTypeMeta get JobType => const _$JobTypeMeta();
}

Serializer<JobType> _$jobTypeSerializer = _$JobTypeSerializer();

class _$JobTypeSerializer implements PrimitiveSerializer<JobType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CF_REPROCESSING': 'CF_REPROCESSING',
    'REPORT': 'REPORT',
    'DUMMY': 'DUMMY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CF_REPROCESSING': 'CF_REPROCESSING',
    'REPORT': 'REPORT',
    'DUMMY': 'DUMMY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[JobType];
  @override
  final String wireName = 'JobType';

  @override
  Object serialize(
    Serializers serializers,
    JobType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JobType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JobType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

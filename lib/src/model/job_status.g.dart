// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JobStatus _$QUEUED = const JobStatus._('QUEUED');
const JobStatus _$PENDING = const JobStatus._('PENDING');
const JobStatus _$RUNNING = const JobStatus._('RUNNING');
const JobStatus _$COMPLETED = const JobStatus._('COMPLETED');
const JobStatus _$FAILED = const JobStatus._('FAILED');
const JobStatus _$CANCELLED = const JobStatus._('CANCELLED');
const JobStatus _$unknownDefaultOpenApi = const JobStatus._(
  'unknownDefaultOpenApi',
);

JobStatus _$valueOf(String name) {
  switch (name) {
    case 'QUEUED':
      return _$QUEUED;
    case 'PENDING':
      return _$PENDING;
    case 'RUNNING':
      return _$RUNNING;
    case 'COMPLETED':
      return _$COMPLETED;
    case 'FAILED':
      return _$FAILED;
    case 'CANCELLED':
      return _$CANCELLED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<JobStatus> _$values = BuiltSet<JobStatus>(const <JobStatus>[
  _$QUEUED,
  _$PENDING,
  _$RUNNING,
  _$COMPLETED,
  _$FAILED,
  _$CANCELLED,
  _$unknownDefaultOpenApi,
]);

class _$JobStatusMeta {
  const _$JobStatusMeta();
  JobStatus get QUEUED => _$QUEUED;
  JobStatus get PENDING => _$PENDING;
  JobStatus get RUNNING => _$RUNNING;
  JobStatus get COMPLETED => _$COMPLETED;
  JobStatus get FAILED => _$FAILED;
  JobStatus get CANCELLED => _$CANCELLED;
  JobStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  JobStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<JobStatus> get values => _$values;
}

mixin _$JobStatusMixin {
  // ignore: non_constant_identifier_names
  _$JobStatusMeta get JobStatus => const _$JobStatusMeta();
}

Serializer<JobStatus> _$jobStatusSerializer = _$JobStatusSerializer();

class _$JobStatusSerializer implements PrimitiveSerializer<JobStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'QUEUED': 'QUEUED',
    'PENDING': 'PENDING',
    'RUNNING': 'RUNNING',
    'COMPLETED': 'COMPLETED',
    'FAILED': 'FAILED',
    'CANCELLED': 'CANCELLED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'QUEUED': 'QUEUED',
    'PENDING': 'PENDING',
    'RUNNING': 'RUNNING',
    'COMPLETED': 'COMPLETED',
    'FAILED': 'FAILED',
    'CANCELLED': 'CANCELLED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[JobStatus];
  @override
  final String wireName = 'JobStatus';

  @override
  Object serialize(
    Serializers serializers,
    JobStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JobStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JobStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

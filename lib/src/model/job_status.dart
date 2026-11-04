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

part 'job_status.g.dart';

class JobStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'QUEUED')
  static const JobStatus QUEUED = _$QUEUED;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const JobStatus PENDING = _$PENDING;
  @BuiltValueEnumConst(wireName: r'RUNNING')
  static const JobStatus RUNNING = _$RUNNING;
  @BuiltValueEnumConst(wireName: r'COMPLETED')
  static const JobStatus COMPLETED = _$COMPLETED;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const JobStatus FAILED = _$FAILED;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const JobStatus CANCELLED = _$CANCELLED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const JobStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<JobStatus> get serializer => _$jobStatusSerializer;

  const JobStatus._(String name): super(name);

  static BuiltSet<JobStatus> get values => _$values;
  static JobStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class JobStatusMixin = Object with _$JobStatusMixin;


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

part 'job_type.g.dart';

class JobType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CF_REPROCESSING')
  static const JobType CF_REPROCESSING = _$CF_REPROCESSING;
  @BuiltValueEnumConst(wireName: r'REPORT')
  static const JobType REPORT = _$REPORT;
  @BuiltValueEnumConst(wireName: r'DUMMY')
  static const JobType DUMMY = _$DUMMY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const JobType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<JobType> get serializer => _$jobTypeSerializer;

  const JobType._(String name) : super(name);

  static BuiltSet<JobType> get values => _$values;
  static JobType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class JobTypeMixin = Object with _$JobTypeMixin;

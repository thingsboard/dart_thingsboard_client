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

part 'agent_processing_status.g.dart';

class AgentProcessingStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const AgentProcessingStatus PENDING = _$PENDING;
  @BuiltValueEnumConst(wireName: r'QUEUED')
  static const AgentProcessingStatus QUEUED = _$QUEUED;
  @BuiltValueEnumConst(wireName: r'PROCESSING')
  static const AgentProcessingStatus PROCESSING = _$PROCESSING;
  @BuiltValueEnumConst(wireName: r'FINISHED')
  static const AgentProcessingStatus FINISHED = _$FINISHED;
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const AgentProcessingStatus ERROR = _$ERROR;
  @BuiltValueEnumConst(wireName: r'START_FAILED')
  static const AgentProcessingStatus START_FAILED = _$START_FAILED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentProcessingStatus unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<AgentProcessingStatus> get serializer =>
      _$agentProcessingStatusSerializer;

  const AgentProcessingStatus._(String name) : super(name);

  static BuiltSet<AgentProcessingStatus> get values => _$values;
  static AgentProcessingStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentProcessingStatusMixin = Object
    with _$AgentProcessingStatusMixin;

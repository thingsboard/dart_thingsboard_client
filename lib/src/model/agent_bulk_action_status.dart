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

part 'agent_bulk_action_status.g.dart';

class AgentBulkActionStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'QUEUED')
  static const AgentBulkActionStatus QUEUED = _$QUEUED;
  @BuiltValueEnumConst(wireName: r'IN_PROGRESS')
  static const AgentBulkActionStatus IN_PROGRESS = _$IN_PROGRESS;
  @BuiltValueEnumConst(wireName: r'STARTED')
  static const AgentBulkActionStatus STARTED = _$STARTED;
  @BuiltValueEnumConst(wireName: r'START_FAILED')
  static const AgentBulkActionStatus START_FAILED = _$START_FAILED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentBulkActionStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AgentBulkActionStatus> get serializer => _$agentBulkActionStatusSerializer;

  const AgentBulkActionStatus._(String name): super(name);

  static BuiltSet<AgentBulkActionStatus> get values => _$values;
  static AgentBulkActionStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentBulkActionStatusMixin = Object with _$AgentBulkActionStatusMixin;


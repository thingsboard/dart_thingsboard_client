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

part 'agent_app_argument_source.g.dart';

class AgentAppArgumentSource extends EnumClass {

  @BuiltValueEnumConst(wireName: r'AGENT')
  static const AgentAppArgumentSource AGENT = _$AGENT;
  @BuiltValueEnumConst(wireName: r'OWNER')
  static const AgentAppArgumentSource OWNER = _$OWNER;
  @BuiltValueEnumConst(wireName: r'RELATED_ENTITY')
  static const AgentAppArgumentSource RELATED_ENTITY = _$RELATED_ENTITY;
  @BuiltValueEnumConst(wireName: r'TENANT')
  static const AgentAppArgumentSource TENANT = _$TENANT;
  @BuiltValueEnumConst(wireName: r'DEVICE')
  static const AgentAppArgumentSource DEVICE = _$DEVICE;
  @BuiltValueEnumConst(wireName: r'ASSET')
  static const AgentAppArgumentSource ASSET = _$ASSET;
  @BuiltValueEnumConst(wireName: r'CUSTOMER')
  static const AgentAppArgumentSource CUSTOMER = _$CUSTOMER;
  @BuiltValueEnumConst(wireName: r'EDGE')
  static const AgentAppArgumentSource EDGE = _$EDGE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentAppArgumentSource unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AgentAppArgumentSource> get serializer => _$agentAppArgumentSourceSerializer;

  const AgentAppArgumentSource._(String name): super(name);

  static BuiltSet<AgentAppArgumentSource> get values => _$values;
  static AgentAppArgumentSource valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentAppArgumentSourceMixin = Object with _$AgentAppArgumentSourceMixin;


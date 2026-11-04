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

part 'agent_app_argument_format.g.dart';

class AgentAppArgumentFormat extends EnumClass {

  @BuiltValueEnumConst(wireName: r'STRING')
  static const AgentAppArgumentFormat STRING = _$STRING;
  @BuiltValueEnumConst(wireName: r'JSON')
  static const AgentAppArgumentFormat JSON = _$JSON;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentAppArgumentFormat unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AgentAppArgumentFormat> get serializer => _$agentAppArgumentFormatSerializer;

  const AgentAppArgumentFormat._(String name): super(name);

  static BuiltSet<AgentAppArgumentFormat> get values => _$values;
  static AgentAppArgumentFormat valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentAppArgumentFormatMixin = Object with _$AgentAppArgumentFormatMixin;


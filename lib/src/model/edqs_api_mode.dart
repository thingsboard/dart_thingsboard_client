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

part 'edqs_api_mode.g.dart';

class EdqsApiMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ENABLED')
  static const EdqsApiMode ENABLED = _$ENABLED;
  @BuiltValueEnumConst(wireName: r'AUTO_ENABLED')
  static const EdqsApiMode AUTO_ENABLED = _$AUTO_ENABLED;
  @BuiltValueEnumConst(wireName: r'DISABLED')
  static const EdqsApiMode DISABLED = _$DISABLED;
  @BuiltValueEnumConst(wireName: r'AUTO_DISABLED')
  static const EdqsApiMode AUTO_DISABLED = _$AUTO_DISABLED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdqsApiMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<EdqsApiMode> get serializer => _$edqsApiModeSerializer;

  const EdqsApiMode._(String name): super(name);

  static BuiltSet<EdqsApiMode> get values => _$values;
  static EdqsApiMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EdqsApiModeMixin = Object with _$EdqsApiModeMixin;


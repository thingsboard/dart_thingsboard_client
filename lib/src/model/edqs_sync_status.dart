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

part 'edqs_sync_status.g.dart';

class EdqsSyncStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'REQUESTED')
  static const EdqsSyncStatus REQUESTED = _$REQUESTED;
  @BuiltValueEnumConst(wireName: r'STARTED')
  static const EdqsSyncStatus STARTED = _$STARTED;
  @BuiltValueEnumConst(wireName: r'FINISHED')
  static const EdqsSyncStatus FINISHED = _$FINISHED;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const EdqsSyncStatus FAILED = _$FAILED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdqsSyncStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<EdqsSyncStatus> get serializer => _$edqsSyncStatusSerializer;

  const EdqsSyncStatus._(String name): super(name);

  static BuiltSet<EdqsSyncStatus> get values => _$values;
  static EdqsSyncStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EdqsSyncStatusMixin = Object with _$EdqsSyncStatusMixin;


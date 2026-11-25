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

part 'component_lifecycle_event.g.dart';

class ComponentLifecycleEvent extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CREATED')
  static const ComponentLifecycleEvent CREATED = _$CREATED;
  @BuiltValueEnumConst(wireName: r'STARTED')
  static const ComponentLifecycleEvent STARTED = _$STARTED;
  @BuiltValueEnumConst(wireName: r'ACTIVATED')
  static const ComponentLifecycleEvent ACTIVATED = _$ACTIVATED;
  @BuiltValueEnumConst(wireName: r'SUSPENDED')
  static const ComponentLifecycleEvent SUSPENDED = _$SUSPENDED;
  @BuiltValueEnumConst(wireName: r'UPDATED')
  static const ComponentLifecycleEvent UPDATED = _$UPDATED;
  @BuiltValueEnumConst(wireName: r'STOPPED')
  static const ComponentLifecycleEvent STOPPED = _$STOPPED;
  @BuiltValueEnumConst(wireName: r'DELETED')
  static const ComponentLifecycleEvent DELETED = _$DELETED;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const ComponentLifecycleEvent FAILED = _$FAILED;
  @BuiltValueEnumConst(wireName: r'DEACTIVATED')
  static const ComponentLifecycleEvent DEACTIVATED = _$DEACTIVATED;
  @BuiltValueEnumConst(wireName: r'RELATION_UPDATED')
  static const ComponentLifecycleEvent RELATION_UPDATED = _$RELATION_UPDATED;
  @BuiltValueEnumConst(wireName: r'RELATION_DELETED')
  static const ComponentLifecycleEvent RELATION_DELETED = _$RELATION_DELETED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ComponentLifecycleEvent unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<ComponentLifecycleEvent> get serializer =>
      _$componentLifecycleEventSerializer;

  const ComponentLifecycleEvent._(String name) : super(name);

  static BuiltSet<ComponentLifecycleEvent> get values => _$values;
  static ComponentLifecycleEvent valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ComponentLifecycleEventMixin = Object
    with _$ComponentLifecycleEventMixin;

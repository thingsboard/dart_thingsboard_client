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

part 'default_page_id.g.dart';

class DefaultPageId extends EnumClass {

  @BuiltValueEnumConst(wireName: r'HOME')
  static const DefaultPageId HOME = _$HOME;
  @BuiltValueEnumConst(wireName: r'ALARMS')
  static const DefaultPageId ALARMS = _$ALARMS;
  @BuiltValueEnumConst(wireName: r'DEVICES')
  static const DefaultPageId DEVICES = _$DEVICES;
  @BuiltValueEnumConst(wireName: r'CUSTOMERS')
  static const DefaultPageId CUSTOMERS = _$CUSTOMERS;
  @BuiltValueEnumConst(wireName: r'ASSETS')
  static const DefaultPageId ASSETS = _$ASSETS;
  @BuiltValueEnumConst(wireName: r'AUDIT_LOGS')
  static const DefaultPageId AUDIT_LOGS = _$AUDIT_LOGS;
  @BuiltValueEnumConst(wireName: r'NOTIFICATIONS')
  static const DefaultPageId NOTIFICATIONS = _$NOTIFICATIONS;
  @BuiltValueEnumConst(wireName: r'DEVICE_LIST')
  static const DefaultPageId DEVICE_LIST = _$DEVICE_LIST;
  @BuiltValueEnumConst(wireName: r'DASHBOARDS')
  static const DefaultPageId DASHBOARDS = _$DASHBOARDS;
  @BuiltValueEnumConst(wireName: r'LIVE_LOCATION_TRACKING')
  static const DefaultPageId LIVE_LOCATION_TRACKING = _$LIVE_LOCATION_TRACKING;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DefaultPageId unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<DefaultPageId> get serializer => _$defaultPageIdSerializer;

  const DefaultPageId._(String name): super(name);

  static BuiltSet<DefaultPageId> get values => _$values;
  static DefaultPageId valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DefaultPageIdMixin = Object with _$DefaultPageIdMixin;


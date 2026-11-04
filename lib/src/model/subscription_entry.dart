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

part 'subscription_entry.g.dart';

class SubscriptionEntry extends EnumClass {

  @BuiltValueEnumConst(wireName: r'DEVICE_COUNT')
  static const SubscriptionEntry DEVICE_COUNT = _$DEVICE_COUNT;
  @BuiltValueEnumConst(wireName: r'ASSET_COUNT')
  static const SubscriptionEntry ASSET_COUNT = _$ASSET_COUNT;
  @BuiltValueEnumConst(wireName: r'EDGE_COUNT')
  static const SubscriptionEntry EDGE_COUNT = _$EDGE_COUNT;
  @BuiltValueEnumConst(wireName: r'WHITE_LABELING')
  static const SubscriptionEntry WHITE_LABELING = _$WHITE_LABELING;
  @BuiltValueEnumConst(wireName: r'INTEGRATIONS')
  static const SubscriptionEntry INTEGRATIONS = _$INTEGRATIONS;
  @BuiltValueEnumConst(wireName: r'SCHEDULER')
  static const SubscriptionEntry SCHEDULER = _$SCHEDULER;
  @BuiltValueEnumConst(wireName: r'REPORTING')
  static const SubscriptionEntry REPORTING = _$REPORTING;
  @BuiltValueEnumConst(wireName: r'AGENT_COUNT')
  static const SubscriptionEntry AGENT_COUNT = _$AGENT_COUNT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionEntry unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SubscriptionEntry> get serializer => _$subscriptionEntrySerializer;

  const SubscriptionEntry._(String name): super(name);

  static BuiltSet<SubscriptionEntry> get values => _$values;
  static SubscriptionEntry valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SubscriptionEntryMixin = Object with _$SubscriptionEntryMixin;


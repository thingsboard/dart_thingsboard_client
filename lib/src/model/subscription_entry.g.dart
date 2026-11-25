// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionEntry _$DEVICE_COUNT = const SubscriptionEntry._(
  'DEVICE_COUNT',
);
const SubscriptionEntry _$ASSET_COUNT = const SubscriptionEntry._(
  'ASSET_COUNT',
);
const SubscriptionEntry _$EDGE_COUNT = const SubscriptionEntry._('EDGE_COUNT');
const SubscriptionEntry _$WHITE_LABELING = const SubscriptionEntry._(
  'WHITE_LABELING',
);
const SubscriptionEntry _$INTEGRATIONS = const SubscriptionEntry._(
  'INTEGRATIONS',
);
const SubscriptionEntry _$SCHEDULER = const SubscriptionEntry._('SCHEDULER');
const SubscriptionEntry _$REPORTING = const SubscriptionEntry._('REPORTING');
const SubscriptionEntry _$AGENT_COUNT = const SubscriptionEntry._(
  'AGENT_COUNT',
);
const SubscriptionEntry _$unknownDefaultOpenApi = const SubscriptionEntry._(
  'unknownDefaultOpenApi',
);

SubscriptionEntry _$valueOf(String name) {
  switch (name) {
    case 'DEVICE_COUNT':
      return _$DEVICE_COUNT;
    case 'ASSET_COUNT':
      return _$ASSET_COUNT;
    case 'EDGE_COUNT':
      return _$EDGE_COUNT;
    case 'WHITE_LABELING':
      return _$WHITE_LABELING;
    case 'INTEGRATIONS':
      return _$INTEGRATIONS;
    case 'SCHEDULER':
      return _$SCHEDULER;
    case 'REPORTING':
      return _$REPORTING;
    case 'AGENT_COUNT':
      return _$AGENT_COUNT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionEntry> _$values =
    BuiltSet<SubscriptionEntry>(const <SubscriptionEntry>[
      _$DEVICE_COUNT,
      _$ASSET_COUNT,
      _$EDGE_COUNT,
      _$WHITE_LABELING,
      _$INTEGRATIONS,
      _$SCHEDULER,
      _$REPORTING,
      _$AGENT_COUNT,
      _$unknownDefaultOpenApi,
    ]);

class _$SubscriptionEntryMeta {
  const _$SubscriptionEntryMeta();
  SubscriptionEntry get DEVICE_COUNT => _$DEVICE_COUNT;
  SubscriptionEntry get ASSET_COUNT => _$ASSET_COUNT;
  SubscriptionEntry get EDGE_COUNT => _$EDGE_COUNT;
  SubscriptionEntry get WHITE_LABELING => _$WHITE_LABELING;
  SubscriptionEntry get INTEGRATIONS => _$INTEGRATIONS;
  SubscriptionEntry get SCHEDULER => _$SCHEDULER;
  SubscriptionEntry get REPORTING => _$REPORTING;
  SubscriptionEntry get AGENT_COUNT => _$AGENT_COUNT;
  SubscriptionEntry get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SubscriptionEntry valueOf(String name) => _$valueOf(name);
  BuiltSet<SubscriptionEntry> get values => _$values;
}

mixin _$SubscriptionEntryMixin {
  // ignore: non_constant_identifier_names
  _$SubscriptionEntryMeta get SubscriptionEntry =>
      const _$SubscriptionEntryMeta();
}

Serializer<SubscriptionEntry> _$subscriptionEntrySerializer =
    _$SubscriptionEntrySerializer();

class _$SubscriptionEntrySerializer
    implements PrimitiveSerializer<SubscriptionEntry> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEVICE_COUNT': 'DEVICE_COUNT',
    'ASSET_COUNT': 'ASSET_COUNT',
    'EDGE_COUNT': 'EDGE_COUNT',
    'WHITE_LABELING': 'WHITE_LABELING',
    'INTEGRATIONS': 'INTEGRATIONS',
    'SCHEDULER': 'SCHEDULER',
    'REPORTING': 'REPORTING',
    'AGENT_COUNT': 'AGENT_COUNT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEVICE_COUNT': 'DEVICE_COUNT',
    'ASSET_COUNT': 'ASSET_COUNT',
    'EDGE_COUNT': 'EDGE_COUNT',
    'WHITE_LABELING': 'WHITE_LABELING',
    'INTEGRATIONS': 'INTEGRATIONS',
    'SCHEDULER': 'SCHEDULER',
    'REPORTING': 'REPORTING',
    'AGENT_COUNT': 'AGENT_COUNT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SubscriptionEntry];
  @override
  final String wireName = 'SubscriptionEntry';

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubscriptionEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubscriptionEntry.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

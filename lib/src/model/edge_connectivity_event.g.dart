// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_connectivity_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdgeConnectivityEvent _$CONNECTED = const EdgeConnectivityEvent._(
  'CONNECTED',
);
const EdgeConnectivityEvent _$DISCONNECTED = const EdgeConnectivityEvent._(
  'DISCONNECTED',
);
const EdgeConnectivityEvent _$unknownDefaultOpenApi =
    const EdgeConnectivityEvent._('unknownDefaultOpenApi');

EdgeConnectivityEvent _$valueOf(String name) {
  switch (name) {
    case 'CONNECTED':
      return _$CONNECTED;
    case 'DISCONNECTED':
      return _$DISCONNECTED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<EdgeConnectivityEvent> _$values =
    BuiltSet<EdgeConnectivityEvent>(const <EdgeConnectivityEvent>[
      _$CONNECTED,
      _$DISCONNECTED,
      _$unknownDefaultOpenApi,
    ]);

class _$EdgeConnectivityEventMeta {
  const _$EdgeConnectivityEventMeta();
  EdgeConnectivityEvent get CONNECTED => _$CONNECTED;
  EdgeConnectivityEvent get DISCONNECTED => _$DISCONNECTED;
  EdgeConnectivityEvent get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  EdgeConnectivityEvent valueOf(String name) => _$valueOf(name);
  BuiltSet<EdgeConnectivityEvent> get values => _$values;
}

mixin _$EdgeConnectivityEventMixin {
  // ignore: non_constant_identifier_names
  _$EdgeConnectivityEventMeta get EdgeConnectivityEvent =>
      const _$EdgeConnectivityEventMeta();
}

Serializer<EdgeConnectivityEvent> _$edgeConnectivityEventSerializer =
    _$EdgeConnectivityEventSerializer();

class _$EdgeConnectivityEventSerializer
    implements PrimitiveSerializer<EdgeConnectivityEvent> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONNECTED': 'CONNECTED',
    'DISCONNECTED': 'DISCONNECTED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONNECTED': 'CONNECTED',
    'DISCONNECTED': 'DISCONNECTED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdgeConnectivityEvent];
  @override
  final String wireName = 'EdgeConnectivityEvent';

  @override
  Object serialize(
    Serializers serializers,
    EdgeConnectivityEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdgeConnectivityEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdgeConnectivityEvent.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

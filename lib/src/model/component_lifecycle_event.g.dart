// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_lifecycle_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ComponentLifecycleEvent _$CREATED = const ComponentLifecycleEvent._(
  'CREATED',
);
const ComponentLifecycleEvent _$STARTED = const ComponentLifecycleEvent._(
  'STARTED',
);
const ComponentLifecycleEvent _$ACTIVATED = const ComponentLifecycleEvent._(
  'ACTIVATED',
);
const ComponentLifecycleEvent _$SUSPENDED = const ComponentLifecycleEvent._(
  'SUSPENDED',
);
const ComponentLifecycleEvent _$UPDATED = const ComponentLifecycleEvent._(
  'UPDATED',
);
const ComponentLifecycleEvent _$STOPPED = const ComponentLifecycleEvent._(
  'STOPPED',
);
const ComponentLifecycleEvent _$DELETED = const ComponentLifecycleEvent._(
  'DELETED',
);
const ComponentLifecycleEvent _$FAILED = const ComponentLifecycleEvent._(
  'FAILED',
);
const ComponentLifecycleEvent _$DEACTIVATED = const ComponentLifecycleEvent._(
  'DEACTIVATED',
);
const ComponentLifecycleEvent _$RELATION_UPDATED =
    const ComponentLifecycleEvent._('RELATION_UPDATED');
const ComponentLifecycleEvent _$RELATION_DELETED =
    const ComponentLifecycleEvent._('RELATION_DELETED');
const ComponentLifecycleEvent _$unknownDefaultOpenApi =
    const ComponentLifecycleEvent._('unknownDefaultOpenApi');

ComponentLifecycleEvent _$valueOf(String name) {
  switch (name) {
    case 'CREATED':
      return _$CREATED;
    case 'STARTED':
      return _$STARTED;
    case 'ACTIVATED':
      return _$ACTIVATED;
    case 'SUSPENDED':
      return _$SUSPENDED;
    case 'UPDATED':
      return _$UPDATED;
    case 'STOPPED':
      return _$STOPPED;
    case 'DELETED':
      return _$DELETED;
    case 'FAILED':
      return _$FAILED;
    case 'DEACTIVATED':
      return _$DEACTIVATED;
    case 'RELATION_UPDATED':
      return _$RELATION_UPDATED;
    case 'RELATION_DELETED':
      return _$RELATION_DELETED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ComponentLifecycleEvent> _$values =
    BuiltSet<ComponentLifecycleEvent>(const <ComponentLifecycleEvent>[
      _$CREATED,
      _$STARTED,
      _$ACTIVATED,
      _$SUSPENDED,
      _$UPDATED,
      _$STOPPED,
      _$DELETED,
      _$FAILED,
      _$DEACTIVATED,
      _$RELATION_UPDATED,
      _$RELATION_DELETED,
      _$unknownDefaultOpenApi,
    ]);

class _$ComponentLifecycleEventMeta {
  const _$ComponentLifecycleEventMeta();
  ComponentLifecycleEvent get CREATED => _$CREATED;
  ComponentLifecycleEvent get STARTED => _$STARTED;
  ComponentLifecycleEvent get ACTIVATED => _$ACTIVATED;
  ComponentLifecycleEvent get SUSPENDED => _$SUSPENDED;
  ComponentLifecycleEvent get UPDATED => _$UPDATED;
  ComponentLifecycleEvent get STOPPED => _$STOPPED;
  ComponentLifecycleEvent get DELETED => _$DELETED;
  ComponentLifecycleEvent get FAILED => _$FAILED;
  ComponentLifecycleEvent get DEACTIVATED => _$DEACTIVATED;
  ComponentLifecycleEvent get RELATION_UPDATED => _$RELATION_UPDATED;
  ComponentLifecycleEvent get RELATION_DELETED => _$RELATION_DELETED;
  ComponentLifecycleEvent get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ComponentLifecycleEvent valueOf(String name) => _$valueOf(name);
  BuiltSet<ComponentLifecycleEvent> get values => _$values;
}

mixin _$ComponentLifecycleEventMixin {
  // ignore: non_constant_identifier_names
  _$ComponentLifecycleEventMeta get ComponentLifecycleEvent =>
      const _$ComponentLifecycleEventMeta();
}

Serializer<ComponentLifecycleEvent> _$componentLifecycleEventSerializer =
    _$ComponentLifecycleEventSerializer();

class _$ComponentLifecycleEventSerializer
    implements PrimitiveSerializer<ComponentLifecycleEvent> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CREATED': 'CREATED',
    'STARTED': 'STARTED',
    'ACTIVATED': 'ACTIVATED',
    'SUSPENDED': 'SUSPENDED',
    'UPDATED': 'UPDATED',
    'STOPPED': 'STOPPED',
    'DELETED': 'DELETED',
    'FAILED': 'FAILED',
    'DEACTIVATED': 'DEACTIVATED',
    'RELATION_UPDATED': 'RELATION_UPDATED',
    'RELATION_DELETED': 'RELATION_DELETED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CREATED': 'CREATED',
    'STARTED': 'STARTED',
    'ACTIVATED': 'ACTIVATED',
    'SUSPENDED': 'SUSPENDED',
    'UPDATED': 'UPDATED',
    'STOPPED': 'STOPPED',
    'DELETED': 'DELETED',
    'FAILED': 'FAILED',
    'DEACTIVATED': 'DEACTIVATED',
    'RELATION_UPDATED': 'RELATION_UPDATED',
    'RELATION_DELETED': 'RELATION_DELETED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ComponentLifecycleEvent];
  @override
  final String wireName = 'ComponentLifecycleEvent';

  @override
  Object serialize(
    Serializers serializers,
    ComponentLifecycleEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ComponentLifecycleEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ComponentLifecycleEvent.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

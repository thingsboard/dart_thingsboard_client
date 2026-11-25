// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edqs_sync_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdqsSyncStatus _$REQUESTED = const EdqsSyncStatus._('REQUESTED');
const EdqsSyncStatus _$STARTED = const EdqsSyncStatus._('STARTED');
const EdqsSyncStatus _$FINISHED = const EdqsSyncStatus._('FINISHED');
const EdqsSyncStatus _$FAILED = const EdqsSyncStatus._('FAILED');
const EdqsSyncStatus _$unknownDefaultOpenApi = const EdqsSyncStatus._(
  'unknownDefaultOpenApi',
);

EdqsSyncStatus _$valueOf(String name) {
  switch (name) {
    case 'REQUESTED':
      return _$REQUESTED;
    case 'STARTED':
      return _$STARTED;
    case 'FINISHED':
      return _$FINISHED;
    case 'FAILED':
      return _$FAILED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<EdqsSyncStatus> _$values = BuiltSet<EdqsSyncStatus>(
  const <EdqsSyncStatus>[
    _$REQUESTED,
    _$STARTED,
    _$FINISHED,
    _$FAILED,
    _$unknownDefaultOpenApi,
  ],
);

class _$EdqsSyncStatusMeta {
  const _$EdqsSyncStatusMeta();
  EdqsSyncStatus get REQUESTED => _$REQUESTED;
  EdqsSyncStatus get STARTED => _$STARTED;
  EdqsSyncStatus get FINISHED => _$FINISHED;
  EdqsSyncStatus get FAILED => _$FAILED;
  EdqsSyncStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  EdqsSyncStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<EdqsSyncStatus> get values => _$values;
}

mixin _$EdqsSyncStatusMixin {
  // ignore: non_constant_identifier_names
  _$EdqsSyncStatusMeta get EdqsSyncStatus => const _$EdqsSyncStatusMeta();
}

Serializer<EdqsSyncStatus> _$edqsSyncStatusSerializer =
    _$EdqsSyncStatusSerializer();

class _$EdqsSyncStatusSerializer
    implements PrimitiveSerializer<EdqsSyncStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REQUESTED': 'REQUESTED',
    'STARTED': 'STARTED',
    'FINISHED': 'FINISHED',
    'FAILED': 'FAILED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REQUESTED': 'REQUESTED',
    'STARTED': 'STARTED',
    'FINISHED': 'FINISHED',
    'FAILED': 'FAILED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdqsSyncStatus];
  @override
  final String wireName = 'EdqsSyncStatus';

  @override
  Object serialize(
    Serializers serializers,
    EdqsSyncStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdqsSyncStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdqsSyncStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

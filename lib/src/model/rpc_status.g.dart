// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RpcStatus _$QUEUED = const RpcStatus._('QUEUED');
const RpcStatus _$SENT = const RpcStatus._('SENT');
const RpcStatus _$DELIVERED = const RpcStatus._('DELIVERED');
const RpcStatus _$SUCCESSFUL = const RpcStatus._('SUCCESSFUL');
const RpcStatus _$TIMEOUT = const RpcStatus._('TIMEOUT');
const RpcStatus _$EXPIRED = const RpcStatus._('EXPIRED');
const RpcStatus _$FAILED = const RpcStatus._('FAILED');
const RpcStatus _$DELETED = const RpcStatus._('DELETED');
const RpcStatus _$unknownDefaultOpenApi = const RpcStatus._(
  'unknownDefaultOpenApi',
);

RpcStatus _$valueOf(String name) {
  switch (name) {
    case 'QUEUED':
      return _$QUEUED;
    case 'SENT':
      return _$SENT;
    case 'DELIVERED':
      return _$DELIVERED;
    case 'SUCCESSFUL':
      return _$SUCCESSFUL;
    case 'TIMEOUT':
      return _$TIMEOUT;
    case 'EXPIRED':
      return _$EXPIRED;
    case 'FAILED':
      return _$FAILED;
    case 'DELETED':
      return _$DELETED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RpcStatus> _$values = BuiltSet<RpcStatus>(const <RpcStatus>[
  _$QUEUED,
  _$SENT,
  _$DELIVERED,
  _$SUCCESSFUL,
  _$TIMEOUT,
  _$EXPIRED,
  _$FAILED,
  _$DELETED,
  _$unknownDefaultOpenApi,
]);

class _$RpcStatusMeta {
  const _$RpcStatusMeta();
  RpcStatus get QUEUED => _$QUEUED;
  RpcStatus get SENT => _$SENT;
  RpcStatus get DELIVERED => _$DELIVERED;
  RpcStatus get SUCCESSFUL => _$SUCCESSFUL;
  RpcStatus get TIMEOUT => _$TIMEOUT;
  RpcStatus get EXPIRED => _$EXPIRED;
  RpcStatus get FAILED => _$FAILED;
  RpcStatus get DELETED => _$DELETED;
  RpcStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RpcStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<RpcStatus> get values => _$values;
}

mixin _$RpcStatusMixin {
  // ignore: non_constant_identifier_names
  _$RpcStatusMeta get RpcStatus => const _$RpcStatusMeta();
}

Serializer<RpcStatus> _$rpcStatusSerializer = _$RpcStatusSerializer();

class _$RpcStatusSerializer implements PrimitiveSerializer<RpcStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'QUEUED': 'QUEUED',
    'SENT': 'SENT',
    'DELIVERED': 'DELIVERED',
    'SUCCESSFUL': 'SUCCESSFUL',
    'TIMEOUT': 'TIMEOUT',
    'EXPIRED': 'EXPIRED',
    'FAILED': 'FAILED',
    'DELETED': 'DELETED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'QUEUED': 'QUEUED',
    'SENT': 'SENT',
    'DELIVERED': 'DELIVERED',
    'SUCCESSFUL': 'SUCCESSFUL',
    'TIMEOUT': 'TIMEOUT',
    'EXPIRED': 'EXPIRED',
    'FAILED': 'FAILED',
    'DELETED': 'DELETED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RpcStatus];
  @override
  final String wireName = 'RpcStatus';

  @override
  Object serialize(
    Serializers serializers,
    RpcStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RpcStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RpcStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

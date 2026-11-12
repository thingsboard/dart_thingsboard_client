// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationRequestStatus _$PROCESSING =
    const NotificationRequestStatus._('PROCESSING');
const NotificationRequestStatus _$SENT = const NotificationRequestStatus._(
  'SENT',
);
const NotificationRequestStatus _$SCHEDULED = const NotificationRequestStatus._(
  'SCHEDULED',
);
const NotificationRequestStatus _$unknownDefaultOpenApi =
    const NotificationRequestStatus._('unknownDefaultOpenApi');

NotificationRequestStatus _$valueOf(String name) {
  switch (name) {
    case 'PROCESSING':
      return _$PROCESSING;
    case 'SENT':
      return _$SENT;
    case 'SCHEDULED':
      return _$SCHEDULED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<NotificationRequestStatus> _$values =
    BuiltSet<NotificationRequestStatus>(const <NotificationRequestStatus>[
      _$PROCESSING,
      _$SENT,
      _$SCHEDULED,
      _$unknownDefaultOpenApi,
    ]);

class _$NotificationRequestStatusMeta {
  const _$NotificationRequestStatusMeta();
  NotificationRequestStatus get PROCESSING => _$PROCESSING;
  NotificationRequestStatus get SENT => _$SENT;
  NotificationRequestStatus get SCHEDULED => _$SCHEDULED;
  NotificationRequestStatus get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  NotificationRequestStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<NotificationRequestStatus> get values => _$values;
}

mixin _$NotificationRequestStatusMixin {
  // ignore: non_constant_identifier_names
  _$NotificationRequestStatusMeta get NotificationRequestStatus =>
      const _$NotificationRequestStatusMeta();
}

Serializer<NotificationRequestStatus> _$notificationRequestStatusSerializer =
    _$NotificationRequestStatusSerializer();

class _$NotificationRequestStatusSerializer
    implements PrimitiveSerializer<NotificationRequestStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PROCESSING': 'PROCESSING',
    'SENT': 'SENT',
    'SCHEDULED': 'SCHEDULED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PROCESSING': 'PROCESSING',
    'SENT': 'SENT',
    'SCHEDULED': 'SCHEDULED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationRequestStatus];
  @override
  final String wireName = 'NotificationRequestStatus';

  @override
  Object serialize(
    Serializers serializers,
    NotificationRequestStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationRequestStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationRequestStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

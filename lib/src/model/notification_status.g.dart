// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationStatus _$SENT = const NotificationStatus._('SENT');
const NotificationStatus _$READ = const NotificationStatus._('READ');
const NotificationStatus _$unknownDefaultOpenApi = const NotificationStatus._(
  'unknownDefaultOpenApi',
);

NotificationStatus _$valueOf(String name) {
  switch (name) {
    case 'SENT':
      return _$SENT;
    case 'READ':
      return _$READ;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<NotificationStatus> _$values = BuiltSet<NotificationStatus>(
  const <NotificationStatus>[_$SENT, _$READ, _$unknownDefaultOpenApi],
);

class _$NotificationStatusMeta {
  const _$NotificationStatusMeta();
  NotificationStatus get SENT => _$SENT;
  NotificationStatus get READ => _$READ;
  NotificationStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  NotificationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<NotificationStatus> get values => _$values;
}

mixin _$NotificationStatusMixin {
  // ignore: non_constant_identifier_names
  _$NotificationStatusMeta get NotificationStatus =>
      const _$NotificationStatusMeta();
}

Serializer<NotificationStatus> _$notificationStatusSerializer =
    _$NotificationStatusSerializer();

class _$NotificationStatusSerializer
    implements PrimitiveSerializer<NotificationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SENT': 'SENT',
    'READ': 'READ',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SENT': 'SENT',
    'READ': 'READ',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationStatus];
  @override
  final String wireName = 'NotificationStatus';

  @override
  Object serialize(
    Serializers serializers,
    NotificationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

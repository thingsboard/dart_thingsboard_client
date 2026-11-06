// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_delivery_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationDeliveryMethod _$WEB = const NotificationDeliveryMethod._(
  'WEB',
);
const NotificationDeliveryMethod _$EMAIL = const NotificationDeliveryMethod._(
  'EMAIL',
);
const NotificationDeliveryMethod _$SMS = const NotificationDeliveryMethod._(
  'SMS',
);
const NotificationDeliveryMethod _$SLACK = const NotificationDeliveryMethod._(
  'SLACK',
);
const NotificationDeliveryMethod _$MICROSOFT_TEAMS =
    const NotificationDeliveryMethod._('MICROSOFT_TEAMS');
const NotificationDeliveryMethod _$MOBILE_APP =
    const NotificationDeliveryMethod._('MOBILE_APP');
const NotificationDeliveryMethod _$unknownDefaultOpenApi =
    const NotificationDeliveryMethod._('unknownDefaultOpenApi');

NotificationDeliveryMethod _$valueOf(String name) {
  switch (name) {
    case 'WEB':
      return _$WEB;
    case 'EMAIL':
      return _$EMAIL;
    case 'SMS':
      return _$SMS;
    case 'SLACK':
      return _$SLACK;
    case 'MICROSOFT_TEAMS':
      return _$MICROSOFT_TEAMS;
    case 'MOBILE_APP':
      return _$MOBILE_APP;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<NotificationDeliveryMethod> _$values =
    BuiltSet<NotificationDeliveryMethod>(const <NotificationDeliveryMethod>[
      _$WEB,
      _$EMAIL,
      _$SMS,
      _$SLACK,
      _$MICROSOFT_TEAMS,
      _$MOBILE_APP,
      _$unknownDefaultOpenApi,
    ]);

class _$NotificationDeliveryMethodMeta {
  const _$NotificationDeliveryMethodMeta();
  NotificationDeliveryMethod get WEB => _$WEB;
  NotificationDeliveryMethod get EMAIL => _$EMAIL;
  NotificationDeliveryMethod get SMS => _$SMS;
  NotificationDeliveryMethod get SLACK => _$SLACK;
  NotificationDeliveryMethod get MICROSOFT_TEAMS => _$MICROSOFT_TEAMS;
  NotificationDeliveryMethod get MOBILE_APP => _$MOBILE_APP;
  NotificationDeliveryMethod get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  NotificationDeliveryMethod valueOf(String name) => _$valueOf(name);
  BuiltSet<NotificationDeliveryMethod> get values => _$values;
}

mixin _$NotificationDeliveryMethodMixin {
  // ignore: non_constant_identifier_names
  _$NotificationDeliveryMethodMeta get NotificationDeliveryMethod =>
      const _$NotificationDeliveryMethodMeta();
}

Serializer<NotificationDeliveryMethod> _$notificationDeliveryMethodSerializer =
    _$NotificationDeliveryMethodSerializer();

class _$NotificationDeliveryMethodSerializer
    implements PrimitiveSerializer<NotificationDeliveryMethod> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WEB': 'WEB',
    'EMAIL': 'EMAIL',
    'SMS': 'SMS',
    'SLACK': 'SLACK',
    'MICROSOFT_TEAMS': 'MICROSOFT_TEAMS',
    'MOBILE_APP': 'MOBILE_APP',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WEB': 'WEB',
    'EMAIL': 'EMAIL',
    'SMS': 'SMS',
    'SLACK': 'SLACK',
    'MICROSOFT_TEAMS': 'MICROSOFT_TEAMS',
    'MOBILE_APP': 'MOBILE_APP',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationDeliveryMethod];
  @override
  final String wireName = 'NotificationDeliveryMethod';

  @override
  Object serialize(
    Serializers serializers,
    NotificationDeliveryMethod object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationDeliveryMethod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationDeliveryMethod.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

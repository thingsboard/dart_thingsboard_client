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

part 'notification_delivery_method.g.dart';

class NotificationDeliveryMethod extends EnumClass {

  @BuiltValueEnumConst(wireName: r'WEB')
  static const NotificationDeliveryMethod WEB = _$WEB;
  @BuiltValueEnumConst(wireName: r'EMAIL')
  static const NotificationDeliveryMethod EMAIL = _$EMAIL;
  @BuiltValueEnumConst(wireName: r'SMS')
  static const NotificationDeliveryMethod SMS = _$SMS;
  @BuiltValueEnumConst(wireName: r'SLACK')
  static const NotificationDeliveryMethod SLACK = _$SLACK;
  @BuiltValueEnumConst(wireName: r'MICROSOFT_TEAMS')
  static const NotificationDeliveryMethod MICROSOFT_TEAMS = _$MICROSOFT_TEAMS;
  @BuiltValueEnumConst(wireName: r'MOBILE_APP')
  static const NotificationDeliveryMethod MOBILE_APP = _$MOBILE_APP;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NotificationDeliveryMethod unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<NotificationDeliveryMethod> get serializer => _$notificationDeliveryMethodSerializer;

  const NotificationDeliveryMethod._(String name): super(name);

  static BuiltSet<NotificationDeliveryMethod> get values => _$values;
  static NotificationDeliveryMethod valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NotificationDeliveryMethodMixin = Object with _$NotificationDeliveryMethodMixin;


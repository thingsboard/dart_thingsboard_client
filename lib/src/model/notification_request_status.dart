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

part 'notification_request_status.g.dart';

class NotificationRequestStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'PROCESSING')
  static const NotificationRequestStatus PROCESSING = _$PROCESSING;
  @BuiltValueEnumConst(wireName: r'SENT')
  static const NotificationRequestStatus SENT = _$SENT;
  @BuiltValueEnumConst(wireName: r'SCHEDULED')
  static const NotificationRequestStatus SCHEDULED = _$SCHEDULED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NotificationRequestStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<NotificationRequestStatus> get serializer => _$notificationRequestStatusSerializer;

  const NotificationRequestStatus._(String name): super(name);

  static BuiltSet<NotificationRequestStatus> get values => _$values;
  static NotificationRequestStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NotificationRequestStatusMixin = Object with _$NotificationRequestStatusMixin;


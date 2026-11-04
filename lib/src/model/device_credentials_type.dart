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

part 'device_credentials_type.g.dart';

class DeviceCredentialsType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ACCESS_TOKEN')
  static const DeviceCredentialsType ACCESS_TOKEN = _$ACCESS_TOKEN;
  @BuiltValueEnumConst(wireName: r'X509_CERTIFICATE')
  static const DeviceCredentialsType X509_CERTIFICATE = _$X509_CERTIFICATE;
  @BuiltValueEnumConst(wireName: r'MQTT_BASIC')
  static const DeviceCredentialsType MQTT_BASIC = _$MQTT_BASIC;
  @BuiltValueEnumConst(wireName: r'LWM2M_CREDENTIALS')
  static const DeviceCredentialsType LWM2M_CREDENTIALS = _$LWM2M_CREDENTIALS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeviceCredentialsType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<DeviceCredentialsType> get serializer => _$deviceCredentialsTypeSerializer;

  const DeviceCredentialsType._(String name): super(name);

  static BuiltSet<DeviceCredentialsType> get values => _$values;
  static DeviceCredentialsType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DeviceCredentialsTypeMixin = Object with _$DeviceCredentialsTypeMixin;


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

part 'device_profile_provision_type.g.dart';

class DeviceProfileProvisionType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DISABLED')
  static const DeviceProfileProvisionType DISABLED = _$DISABLED;
  @BuiltValueEnumConst(wireName: r'ALLOW_CREATE_NEW_DEVICES')
  static const DeviceProfileProvisionType ALLOW_CREATE_NEW_DEVICES =
      _$ALLOW_CREATE_NEW_DEVICES;
  @BuiltValueEnumConst(wireName: r'CHECK_PRE_PROVISIONED_DEVICES')
  static const DeviceProfileProvisionType CHECK_PRE_PROVISIONED_DEVICES =
      _$CHECK_PRE_PROVISIONED_DEVICES;
  @BuiltValueEnumConst(wireName: r'X509_CERTIFICATE_CHAIN')
  static const DeviceProfileProvisionType X509_CERTIFICATE_CHAIN =
      _$X509_CERTIFICATE_CHAIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeviceProfileProvisionType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<DeviceProfileProvisionType> get serializer =>
      _$deviceProfileProvisionTypeSerializer;

  const DeviceProfileProvisionType._(String name) : super(name);

  static BuiltSet<DeviceProfileProvisionType> get values => _$values;
  static DeviceProfileProvisionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DeviceProfileProvisionTypeMixin = Object
    with _$DeviceProfileProvisionTypeMixin;

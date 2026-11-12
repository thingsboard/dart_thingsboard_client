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

part 'bulk_import_column_type.g.dart';

class BulkImportColumnType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NAME')
  static const BulkImportColumnType NAME = _$NAME;
  @BuiltValueEnumConst(wireName: r'TYPE')
  static const BulkImportColumnType TYPE = _$TYPE;
  @BuiltValueEnumConst(wireName: r'LABEL')
  static const BulkImportColumnType LABEL = _$LABEL;
  @BuiltValueEnumConst(wireName: r'SHARED_ATTRIBUTE')
  static const BulkImportColumnType SHARED_ATTRIBUTE = _$SHARED_ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'SERVER_ATTRIBUTE')
  static const BulkImportColumnType SERVER_ATTRIBUTE = _$SERVER_ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'TIMESERIES')
  static const BulkImportColumnType TIMESERIES = _$TIMESERIES;
  @BuiltValueEnumConst(wireName: r'ACCESS_TOKEN')
  static const BulkImportColumnType ACCESS_TOKEN = _$ACCESS_TOKEN;
  @BuiltValueEnumConst(wireName: r'X509')
  static const BulkImportColumnType X509 = _$X509;
  @BuiltValueEnumConst(wireName: r'MQTT_CLIENT_ID')
  static const BulkImportColumnType MQTT_CLIENT_ID = _$MQTT_CLIENT_ID;
  @BuiltValueEnumConst(wireName: r'MQTT_USER_NAME')
  static const BulkImportColumnType MQTT_USER_NAME = _$MQTT_USER_NAME;
  @BuiltValueEnumConst(wireName: r'MQTT_PASSWORD')
  static const BulkImportColumnType MQTT_PASSWORD = _$MQTT_PASSWORD;
  @BuiltValueEnumConst(wireName: r'LWM2M_CLIENT_ENDPOINT')
  static const BulkImportColumnType LWM2M_CLIENT_ENDPOINT =
      _$LWM2M_CLIENT_ENDPOINT;
  @BuiltValueEnumConst(wireName: r'LWM2M_CLIENT_SECURITY_CONFIG_MODE')
  static const BulkImportColumnType LWM2M_CLIENT_SECURITY_CONFIG_MODE =
      _$LWM2M_CLIENT_SECURITY_CONFIG_MODE;
  @BuiltValueEnumConst(wireName: r'LWM2M_CLIENT_IDENTITY')
  static const BulkImportColumnType LWM2M_CLIENT_IDENTITY =
      _$LWM2M_CLIENT_IDENTITY;
  @BuiltValueEnumConst(wireName: r'LWM2M_CLIENT_KEY')
  static const BulkImportColumnType LWM2M_CLIENT_KEY = _$LWM2M_CLIENT_KEY;
  @BuiltValueEnumConst(wireName: r'LWM2M_CLIENT_CERT')
  static const BulkImportColumnType LWM2M_CLIENT_CERT = _$LWM2M_CLIENT_CERT;
  @BuiltValueEnumConst(wireName: r'LWM2M_BOOTSTRAP_SERVER_SECURITY_MODE')
  static const BulkImportColumnType LWM2M_BOOTSTRAP_SERVER_SECURITY_MODE =
      _$LWM2M_BOOTSTRAP_SERVER_SECURITY_MODE;
  @BuiltValueEnumConst(wireName: r'LWM2M_BOOTSTRAP_SERVER_PUBLIC_KEY_OR_ID')
  static const BulkImportColumnType LWM2M_BOOTSTRAP_SERVER_PUBLIC_KEY_OR_ID =
      _$LWM2M_BOOTSTRAP_SERVER_PUBLIC_KEY_OR_ID;
  @BuiltValueEnumConst(wireName: r'LWM2M_BOOTSTRAP_SERVER_SECRET_KEY')
  static const BulkImportColumnType LWM2M_BOOTSTRAP_SERVER_SECRET_KEY =
      _$LWM2M_BOOTSTRAP_SERVER_SECRET_KEY;
  @BuiltValueEnumConst(wireName: r'LWM2M_SERVER_SECURITY_MODE')
  static const BulkImportColumnType LWM2M_SERVER_SECURITY_MODE =
      _$LWM2M_SERVER_SECURITY_MODE;
  @BuiltValueEnumConst(wireName: r'LWM2M_SERVER_CLIENT_PUBLIC_KEY_OR_ID')
  static const BulkImportColumnType LWM2M_SERVER_CLIENT_PUBLIC_KEY_OR_ID =
      _$LWM2M_SERVER_CLIENT_PUBLIC_KEY_OR_ID;
  @BuiltValueEnumConst(wireName: r'LWM2M_SERVER_CLIENT_SECRET_KEY')
  static const BulkImportColumnType LWM2M_SERVER_CLIENT_SECRET_KEY =
      _$LWM2M_SERVER_CLIENT_SECRET_KEY;
  @BuiltValueEnumConst(wireName: r'SNMP_HOST')
  static const BulkImportColumnType SNMP_HOST = _$SNMP_HOST;
  @BuiltValueEnumConst(wireName: r'SNMP_PORT')
  static const BulkImportColumnType SNMP_PORT = _$SNMP_PORT;
  @BuiltValueEnumConst(wireName: r'SNMP_VERSION')
  static const BulkImportColumnType SNMP_VERSION = _$SNMP_VERSION;
  @BuiltValueEnumConst(wireName: r'SNMP_COMMUNITY_STRING')
  static const BulkImportColumnType SNMP_COMMUNITY_STRING =
      _$SNMP_COMMUNITY_STRING;
  @BuiltValueEnumConst(wireName: r'IS_GATEWAY')
  static const BulkImportColumnType IS_GATEWAY = _$IS_GATEWAY;
  @BuiltValueEnumConst(wireName: r'OVERWRITE_ACTIVITY_TIME')
  static const BulkImportColumnType OVERWRITE_ACTIVITY_TIME =
      _$OVERWRITE_ACTIVITY_TIME;
  @BuiltValueEnumConst(wireName: r'DESCRIPTION')
  static const BulkImportColumnType DESCRIPTION = _$DESCRIPTION;
  @BuiltValueEnumConst(wireName: r'EDGE_LICENSE_KEY')
  static const BulkImportColumnType EDGE_LICENSE_KEY = _$EDGE_LICENSE_KEY;
  @BuiltValueEnumConst(wireName: r'CLOUD_ENDPOINT')
  static const BulkImportColumnType CLOUD_ENDPOINT = _$CLOUD_ENDPOINT;
  @BuiltValueEnumConst(wireName: r'ROUTING_KEY')
  static const BulkImportColumnType ROUTING_KEY = _$ROUTING_KEY;
  @BuiltValueEnumConst(wireName: r'SECRET')
  static const BulkImportColumnType SECRET = _$SECRET;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BulkImportColumnType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<BulkImportColumnType> get serializer =>
      _$bulkImportColumnTypeSerializer;

  const BulkImportColumnType._(String name) : super(name);

  static BuiltSet<BulkImportColumnType> get values => _$values;
  static BulkImportColumnType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BulkImportColumnTypeMixin = Object
    with _$BulkImportColumnTypeMixin;

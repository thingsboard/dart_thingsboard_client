// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/bulk_import_column_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'column_mapping.g.dart';

/// ColumnMapping
///
/// Properties:
/// * [type]
/// * [key]
@BuiltValue()
abstract class ColumnMapping
    implements Built<ColumnMapping, ColumnMappingBuilder> {
  @BuiltValueField(wireName: r'type')
  BulkImportColumnType? get type;
  // enum typeEnum {  NAME,  TYPE,  LABEL,  SHARED_ATTRIBUTE,  SERVER_ATTRIBUTE,  TIMESERIES,  ACCESS_TOKEN,  X509,  MQTT_CLIENT_ID,  MQTT_USER_NAME,  MQTT_PASSWORD,  LWM2M_CLIENT_ENDPOINT,  LWM2M_CLIENT_SECURITY_CONFIG_MODE,  LWM2M_CLIENT_IDENTITY,  LWM2M_CLIENT_KEY,  LWM2M_CLIENT_CERT,  LWM2M_BOOTSTRAP_SERVER_SECURITY_MODE,  LWM2M_BOOTSTRAP_SERVER_PUBLIC_KEY_OR_ID,  LWM2M_BOOTSTRAP_SERVER_SECRET_KEY,  LWM2M_SERVER_SECURITY_MODE,  LWM2M_SERVER_CLIENT_PUBLIC_KEY_OR_ID,  LWM2M_SERVER_CLIENT_SECRET_KEY,  SNMP_HOST,  SNMP_PORT,  SNMP_VERSION,  SNMP_COMMUNITY_STRING,  IS_GATEWAY,  DESCRIPTION,  EDGE_LICENSE_KEY,  CLOUD_ENDPOINT,  ROUTING_KEY,  SECRET,  };

  @BuiltValueField(wireName: r'key')
  String? get key;

  ColumnMapping._();

  factory ColumnMapping([void updates(ColumnMappingBuilder b)]) =
      _$ColumnMapping;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ColumnMappingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ColumnMapping> get serializer =>
      _$ColumnMappingSerializer();
}

class _$ColumnMappingSerializer implements PrimitiveSerializer<ColumnMapping> {
  @override
  final Iterable<Type> types = const [ColumnMapping, _$ColumnMapping];

  @override
  final String wireName = r'ColumnMapping';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ColumnMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(BulkImportColumnType),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ColumnMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ColumnMappingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BulkImportColumnType,
                    ),
                  )
                  as BulkImportColumnType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ColumnMapping deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ColumnMappingBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

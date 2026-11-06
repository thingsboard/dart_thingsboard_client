// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_credentials_type.dart';
import 'package:thingsboard_client/src/model/device_credentials_id.dart';
import 'package:thingsboard_client/src/model/device_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_credentials.g.dart';

/// A JSON value representing the device credentials.
///
/// Properties:
/// * [id] - The Id is automatically generated during device creation. Use 'getDeviceCredentialsByDeviceId' to obtain the id based on device id. Use 'updateDeviceCredentials' to update device credentials.
/// * [createdTime] - Timestamp of the device credentials creation, in milliseconds
/// * [deviceId] - JSON object with the device Id.
/// * [credentialsType] - Type of the credentials
/// * [credentialsId] - Unique Credentials Id per platform instance. Used to lookup credentials from the database. By default, new access token for your device. Depends on the type of the credentials.
/// * [credentialsValue] - Value of the credentials. Null in case of ACCESS_TOKEN credentials type. Base64 value in case of X509_CERTIFICATE. Complex object in case of MQTT_BASIC and LWM2M_CREDENTIALS
/// * [version]
@BuiltValue()
abstract class DeviceCredentials
    implements Built<DeviceCredentials, DeviceCredentialsBuilder> {
  /// The Id is automatically generated during device creation. Use 'getDeviceCredentialsByDeviceId' to obtain the id based on device id. Use 'updateDeviceCredentials' to update device credentials.
  @BuiltValueField(wireName: r'id')
  DeviceCredentialsId get id;

  /// Timestamp of the device credentials creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with the device Id.
  @BuiltValueField(wireName: r'deviceId')
  DeviceId get deviceId;

  /// Type of the credentials
  @BuiltValueField(wireName: r'credentialsType')
  DeviceCredentialsType? get credentialsType;
  // enum credentialsTypeEnum {  ACCESS_TOKEN,  X509_CERTIFICATE,  MQTT_BASIC,  LWM2M_CREDENTIALS,  };

  /// Unique Credentials Id per platform instance. Used to lookup credentials from the database. By default, new access token for your device. Depends on the type of the credentials.
  @BuiltValueField(wireName: r'credentialsId')
  String get credentialsId;

  /// Value of the credentials. Null in case of ACCESS_TOKEN credentials type. Base64 value in case of X509_CERTIFICATE. Complex object in case of MQTT_BASIC and LWM2M_CREDENTIALS
  @BuiltValueField(wireName: r'credentialsValue')
  String? get credentialsValue;

  @BuiltValueField(wireName: r'version')
  int? get version;

  DeviceCredentials._();

  factory DeviceCredentials([void updates(DeviceCredentialsBuilder b)]) =
      _$DeviceCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceCredentials> get serializer =>
      _$DeviceCredentialsSerializer();
}

class _$DeviceCredentialsSerializer
    implements PrimitiveSerializer<DeviceCredentials> {
  @override
  final Iterable<Type> types = const [DeviceCredentials, _$DeviceCredentials];

  @override
  final String wireName = r'DeviceCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(DeviceCredentialsId),
    );
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    yield r'deviceId';
    yield serializers.serialize(
      object.deviceId,
      specifiedType: const FullType(DeviceId),
    );
    if (object.credentialsType != null) {
      yield r'credentialsType';
      yield serializers.serialize(
        object.credentialsType,
        specifiedType: const FullType(DeviceCredentialsType),
      );
    }
    yield r'credentialsId';
    yield serializers.serialize(
      object.credentialsId,
      specifiedType: const FullType(String),
    );
    if (object.credentialsValue != null) {
      yield r'credentialsValue';
      yield serializers.serialize(
        object.credentialsValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceCredentials object, {
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
    required DeviceCredentialsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DeviceCredentialsId),
                  )
                  as DeviceCredentialsId;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'deviceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DeviceId),
                  )
                  as DeviceId;
          result.deviceId.replace(valueDes);
          break;
        case r'credentialsType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DeviceCredentialsType,
                    ),
                  )
                  as DeviceCredentialsType?;
          if (valueDes == null) continue;
          result.credentialsType = valueDes;
          break;
        case r'credentialsId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.credentialsId = valueDes;
          break;
        case r'credentialsValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.credentialsValue = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceCredentialsBuilder();
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

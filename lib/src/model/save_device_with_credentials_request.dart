// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_credentials.dart';
import 'package:thingsboard_client/src/model/device.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'save_device_with_credentials_request.g.dart';

/// The JSON object with device and credentials. See method description above for example.
///
/// Properties:
/// * [device] - The JSON with device entity.
/// * [credentials] - The JSON with credentials entity.
@BuiltValue()
abstract class SaveDeviceWithCredentialsRequest
    implements
        Built<
          SaveDeviceWithCredentialsRequest,
          SaveDeviceWithCredentialsRequestBuilder
        > {
  /// The JSON with device entity.
  @BuiltValueField(wireName: r'device')
  Device get device;

  /// The JSON with credentials entity.
  @BuiltValueField(wireName: r'credentials')
  DeviceCredentials get credentials;

  SaveDeviceWithCredentialsRequest._();

  factory SaveDeviceWithCredentialsRequest([
    void updates(SaveDeviceWithCredentialsRequestBuilder b),
  ]) = _$SaveDeviceWithCredentialsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SaveDeviceWithCredentialsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SaveDeviceWithCredentialsRequest> get serializer =>
      _$SaveDeviceWithCredentialsRequestSerializer();
}

class _$SaveDeviceWithCredentialsRequestSerializer
    implements PrimitiveSerializer<SaveDeviceWithCredentialsRequest> {
  @override
  final Iterable<Type> types = const [
    SaveDeviceWithCredentialsRequest,
    _$SaveDeviceWithCredentialsRequest,
  ];

  @override
  final String wireName = r'SaveDeviceWithCredentialsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SaveDeviceWithCredentialsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device';
    yield serializers.serialize(
      object.device,
      specifiedType: const FullType(Device),
    );
    yield r'credentials';
    yield serializers.serialize(
      object.credentials,
      specifiedType: const FullType(DeviceCredentials),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SaveDeviceWithCredentialsRequest object, {
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
    required SaveDeviceWithCredentialsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Device),
                  )
                  as Device;
          result.device.replace(valueDes);
          break;
        case r'credentials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DeviceCredentials),
                  )
                  as DeviceCredentials;
          result.credentials.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SaveDeviceWithCredentialsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SaveDeviceWithCredentialsRequestBuilder();
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

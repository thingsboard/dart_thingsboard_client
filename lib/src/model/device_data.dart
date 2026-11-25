// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_transport_configuration.dart';
import 'package:thingsboard_client/src/model/device_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_data.g.dart';

/// DeviceData
///
/// Properties:
/// * [configuration] - Device configuration for device profile type. DEFAULT is only supported value for now
/// * [transportConfiguration] - Device transport configuration used to connect the device
@BuiltValue()
abstract class DeviceData implements Built<DeviceData, DeviceDataBuilder> {
  /// Device configuration for device profile type. DEFAULT is only supported value for now
  @BuiltValueField(wireName: r'configuration')
  DeviceConfiguration? get configuration;

  /// Device transport configuration used to connect the device
  @BuiltValueField(wireName: r'transportConfiguration')
  DeviceTransportConfiguration? get transportConfiguration;

  DeviceData._();

  factory DeviceData([void updates(DeviceDataBuilder b)]) = _$DeviceData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceData> get serializer => _$DeviceDataSerializer();
}

class _$DeviceDataSerializer implements PrimitiveSerializer<DeviceData> {
  @override
  final Iterable<Type> types = const [DeviceData, _$DeviceData];

  @override
  final String wireName = r'DeviceData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType(DeviceConfiguration),
      );
    }
    if (object.transportConfiguration != null) {
      yield r'transportConfiguration';
      yield serializers.serialize(
        object.transportConfiguration,
        specifiedType: const FullType(DeviceTransportConfiguration),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceData object, {
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
    required DeviceDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DeviceConfiguration),
                  )
                  as DeviceConfiguration?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'transportConfiguration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DeviceTransportConfiguration,
                    ),
                  )
                  as DeviceTransportConfiguration?;
          if (valueDes == null) continue;
          result.transportConfiguration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceDataBuilder();
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

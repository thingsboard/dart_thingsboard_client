// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/power_mode.dart';
import 'package:thingsboard_client/src/model/device_transport_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lwm2m_device_transport_configuration.g.dart';

/// Lwm2mDeviceTransportConfiguration
///
/// Properties:
/// * [type] 
/// * [powerMode] 
/// * [psmActivityTimer] 
/// * [edrxCycle] 
/// * [pagingTransmissionWindow] 
@BuiltValue()
abstract class Lwm2mDeviceTransportConfiguration implements DeviceTransportConfiguration, Built<Lwm2mDeviceTransportConfiguration, Lwm2mDeviceTransportConfigurationBuilder> {
  @BuiltValueField(wireName: r'pagingTransmissionWindow')
  int? get pagingTransmissionWindow;

  @BuiltValueField(wireName: r'psmActivityTimer')
  int? get psmActivityTimer;

  @BuiltValueField(wireName: r'powerMode')
  PowerMode? get powerMode;
  // enum powerModeEnum {  PSM,  DRX,  E_DRX,  };

  @BuiltValueField(wireName: r'edrxCycle')
  int? get edrxCycle;

  Lwm2mDeviceTransportConfiguration._();

  factory Lwm2mDeviceTransportConfiguration([void updates(Lwm2mDeviceTransportConfigurationBuilder b)]) = _$Lwm2mDeviceTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Lwm2mDeviceTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Lwm2mDeviceTransportConfiguration> get serializer => _$Lwm2mDeviceTransportConfigurationSerializer();
}

class _$Lwm2mDeviceTransportConfigurationSerializer implements PrimitiveSerializer<Lwm2mDeviceTransportConfiguration> {
  @override
  final Iterable<Type> types = const [Lwm2mDeviceTransportConfiguration, _$Lwm2mDeviceTransportConfiguration];

  @override
  final String wireName = r'Lwm2mDeviceTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Lwm2mDeviceTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pagingTransmissionWindow != null) {
      yield r'pagingTransmissionWindow';
      yield serializers.serialize(
        object.pagingTransmissionWindow,
        specifiedType: const FullType(int),
      );
    }
    if (object.edrxCycle != null) {
      yield r'edrxCycle';
      yield serializers.serialize(
        object.edrxCycle,
        specifiedType: const FullType(int),
      );
    }
    if (object.psmActivityTimer != null) {
      yield r'psmActivityTimer';
      yield serializers.serialize(
        object.psmActivityTimer,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.powerMode != null) {
      yield r'powerMode';
      yield serializers.serialize(
        object.powerMode,
        specifiedType: const FullType(PowerMode),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Lwm2mDeviceTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Lwm2mDeviceTransportConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pagingTransmissionWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pagingTransmissionWindow = valueDes;
          break;
        case r'edrxCycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.edrxCycle = valueDes;
          break;
        case r'psmActivityTimer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.psmActivityTimer = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'powerMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PowerMode),
          ) as PowerMode?;
          if (valueDes == null) continue;
          result.powerMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Lwm2mDeviceTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Lwm2mDeviceTransportConfigurationBuilder();
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



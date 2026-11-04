// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/power_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'power_saving_configuration.g.dart';

/// PowerSavingConfiguration
///
/// Properties:
/// * [powerMode] 
/// * [psmActivityTimer] 
/// * [edrxCycle] 
/// * [pagingTransmissionWindow] 
@BuiltValue()
abstract class PowerSavingConfiguration implements Built<PowerSavingConfiguration, PowerSavingConfigurationBuilder> {
  @BuiltValueField(wireName: r'powerMode')
  PowerMode? get powerMode;
  // enum powerModeEnum {  PSM,  DRX,  E_DRX,  };

  @BuiltValueField(wireName: r'psmActivityTimer')
  int? get psmActivityTimer;

  @BuiltValueField(wireName: r'edrxCycle')
  int? get edrxCycle;

  @BuiltValueField(wireName: r'pagingTransmissionWindow')
  int? get pagingTransmissionWindow;

  PowerSavingConfiguration._();

  factory PowerSavingConfiguration([void updates(PowerSavingConfigurationBuilder b)]) = _$PowerSavingConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PowerSavingConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PowerSavingConfiguration> get serializer => _$PowerSavingConfigurationSerializer();
}

class _$PowerSavingConfigurationSerializer implements PrimitiveSerializer<PowerSavingConfiguration> {
  @override
  final Iterable<Type> types = const [PowerSavingConfiguration, _$PowerSavingConfiguration];

  @override
  final String wireName = r'PowerSavingConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PowerSavingConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.powerMode != null) {
      yield r'powerMode';
      yield serializers.serialize(
        object.powerMode,
        specifiedType: const FullType(PowerMode),
      );
    }
    if (object.psmActivityTimer != null) {
      yield r'psmActivityTimer';
      yield serializers.serialize(
        object.psmActivityTimer,
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
    if (object.pagingTransmissionWindow != null) {
      yield r'pagingTransmissionWindow';
      yield serializers.serialize(
        object.pagingTransmissionWindow,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PowerSavingConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PowerSavingConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'powerMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PowerMode),
          ) as PowerMode?;
          if (valueDes == null) continue;
          result.powerMode = valueDes;
          break;
        case r'psmActivityTimer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.psmActivityTimer = valueDes;
          break;
        case r'edrxCycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.edrxCycle = valueDes;
          break;
        case r'pagingTransmissionWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pagingTransmissionWindow = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PowerSavingConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PowerSavingConfigurationBuilder();
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



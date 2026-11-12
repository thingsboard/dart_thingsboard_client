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

part 'other_configuration.g.dart';

/// OtherConfiguration
///
/// Properties:
/// * [powerMode]
/// * [psmActivityTimer]
/// * [edrxCycle]
/// * [pagingTransmissionWindow]
/// * [useObject19ForOtaInfo]
/// * [fwUpdateStrategy]
/// * [swUpdateStrategy]
/// * [clientOnlyObserveAfterConnect]
/// * [fwUpdateResource]
/// * [swUpdateResource]
/// * [defaultObjectIDVer]
@BuiltValue()
abstract class OtherConfiguration
    implements Built<OtherConfiguration, OtherConfigurationBuilder> {
  @BuiltValueField(wireName: r'powerMode')
  PowerMode? get powerMode;
  // enum powerModeEnum {  PSM,  DRX,  E_DRX,  };

  @BuiltValueField(wireName: r'psmActivityTimer')
  int? get psmActivityTimer;

  @BuiltValueField(wireName: r'edrxCycle')
  int? get edrxCycle;

  @BuiltValueField(wireName: r'pagingTransmissionWindow')
  int? get pagingTransmissionWindow;

  @BuiltValueField(wireName: r'useObject19ForOtaInfo')
  bool? get useObject19ForOtaInfo;

  @BuiltValueField(wireName: r'fwUpdateStrategy')
  int? get fwUpdateStrategy;

  @BuiltValueField(wireName: r'swUpdateStrategy')
  int? get swUpdateStrategy;

  @BuiltValueField(wireName: r'clientOnlyObserveAfterConnect')
  int? get clientOnlyObserveAfterConnect;

  @BuiltValueField(wireName: r'fwUpdateResource')
  String? get fwUpdateResource;

  @BuiltValueField(wireName: r'swUpdateResource')
  String? get swUpdateResource;

  @BuiltValueField(wireName: r'defaultObjectIDVer')
  String? get defaultObjectIDVer;

  OtherConfiguration._();

  factory OtherConfiguration([void updates(OtherConfigurationBuilder b)]) =
      _$OtherConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OtherConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OtherConfiguration> get serializer =>
      _$OtherConfigurationSerializer();
}

class _$OtherConfigurationSerializer
    implements PrimitiveSerializer<OtherConfiguration> {
  @override
  final Iterable<Type> types = const [OtherConfiguration, _$OtherConfiguration];

  @override
  final String wireName = r'OtherConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OtherConfiguration object, {
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
    if (object.useObject19ForOtaInfo != null) {
      yield r'useObject19ForOtaInfo';
      yield serializers.serialize(
        object.useObject19ForOtaInfo,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fwUpdateStrategy != null) {
      yield r'fwUpdateStrategy';
      yield serializers.serialize(
        object.fwUpdateStrategy,
        specifiedType: const FullType(int),
      );
    }
    if (object.swUpdateStrategy != null) {
      yield r'swUpdateStrategy';
      yield serializers.serialize(
        object.swUpdateStrategy,
        specifiedType: const FullType(int),
      );
    }
    if (object.clientOnlyObserveAfterConnect != null) {
      yield r'clientOnlyObserveAfterConnect';
      yield serializers.serialize(
        object.clientOnlyObserveAfterConnect,
        specifiedType: const FullType(int),
      );
    }
    if (object.fwUpdateResource != null) {
      yield r'fwUpdateResource';
      yield serializers.serialize(
        object.fwUpdateResource,
        specifiedType: const FullType(String),
      );
    }
    if (object.swUpdateResource != null) {
      yield r'swUpdateResource';
      yield serializers.serialize(
        object.swUpdateResource,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultObjectIDVer != null) {
      yield r'defaultObjectIDVer';
      yield serializers.serialize(
        object.defaultObjectIDVer,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OtherConfiguration object, {
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
    required OtherConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'powerMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PowerMode),
                  )
                  as PowerMode?;
          if (valueDes == null) continue;
          result.powerMode = valueDes;
          break;
        case r'psmActivityTimer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.psmActivityTimer = valueDes;
          break;
        case r'edrxCycle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.edrxCycle = valueDes;
          break;
        case r'pagingTransmissionWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.pagingTransmissionWindow = valueDes;
          break;
        case r'useObject19ForOtaInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useObject19ForOtaInfo = valueDes;
          break;
        case r'fwUpdateStrategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fwUpdateStrategy = valueDes;
          break;
        case r'swUpdateStrategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.swUpdateStrategy = valueDes;
          break;
        case r'clientOnlyObserveAfterConnect':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.clientOnlyObserveAfterConnect = valueDes;
          break;
        case r'fwUpdateResource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fwUpdateResource = valueDes;
          break;
        case r'swUpdateResource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.swUpdateResource = valueDes;
          break;
        case r'defaultObjectIDVer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultObjectIDVer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OtherConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OtherConfigurationBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/converters_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_converters_info.g.dart';

/// IntegrationConvertersInfo
///
/// Properties:
/// * [uplink]
/// * [downlink]
@BuiltValue()
abstract class IntegrationConvertersInfo
    implements
        Built<IntegrationConvertersInfo, IntegrationConvertersInfoBuilder> {
  @BuiltValueField(wireName: r'uplink')
  ConvertersInfo? get uplink;

  @BuiltValueField(wireName: r'downlink')
  ConvertersInfo? get downlink;

  IntegrationConvertersInfo._();

  factory IntegrationConvertersInfo([
    void updates(IntegrationConvertersInfoBuilder b),
  ]) = _$IntegrationConvertersInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationConvertersInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationConvertersInfo> get serializer =>
      _$IntegrationConvertersInfoSerializer();
}

class _$IntegrationConvertersInfoSerializer
    implements PrimitiveSerializer<IntegrationConvertersInfo> {
  @override
  final Iterable<Type> types = const [
    IntegrationConvertersInfo,
    _$IntegrationConvertersInfo,
  ];

  @override
  final String wireName = r'IntegrationConvertersInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationConvertersInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uplink != null) {
      yield r'uplink';
      yield serializers.serialize(
        object.uplink,
        specifiedType: const FullType(ConvertersInfo),
      );
    }
    if (object.downlink != null) {
      yield r'downlink';
      yield serializers.serialize(
        object.downlink,
        specifiedType: const FullType(ConvertersInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntegrationConvertersInfo object, {
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
    required IntegrationConvertersInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uplink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ConvertersInfo),
                  )
                  as ConvertersInfo?;
          if (valueDes == null) continue;
          result.uplink.replace(valueDes);
          break;
        case r'downlink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ConvertersInfo),
                  )
                  as ConvertersInfo?;
          if (valueDes == null) continue;
          result.downlink.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntegrationConvertersInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationConvertersInfoBuilder();
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

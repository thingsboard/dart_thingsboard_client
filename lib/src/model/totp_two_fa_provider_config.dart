// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/two_fa_provider_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'totp_two_fa_provider_config.g.dart';

/// TotpTwoFaProviderConfig
///
/// Properties:
/// * [providerType] 
/// * [issuerName] 
@BuiltValue()
abstract class TotpTwoFaProviderConfig implements TwoFaProviderConfig, Built<TotpTwoFaProviderConfig, TotpTwoFaProviderConfigBuilder> {
  @BuiltValueField(wireName: r'issuerName')
  String get issuerName;

  TotpTwoFaProviderConfig._();

  factory TotpTwoFaProviderConfig([void updates(TotpTwoFaProviderConfigBuilder b)]) = _$TotpTwoFaProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TotpTwoFaProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TotpTwoFaProviderConfig> get serializer => _$TotpTwoFaProviderConfigSerializer();
}

class _$TotpTwoFaProviderConfigSerializer implements PrimitiveSerializer<TotpTwoFaProviderConfig> {
  @override
  final Iterable<Type> types = const [TotpTwoFaProviderConfig, _$TotpTwoFaProviderConfig];

  @override
  final String wireName = r'TotpTwoFaProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TotpTwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'issuerName';
    yield serializers.serialize(
      object.issuerName,
      specifiedType: const FullType(String),
    );
    yield r'providerType';
    yield serializers.serialize(
      object.providerType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TotpTwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TotpTwoFaProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'issuerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuerName = valueDes;
          break;
        case r'providerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TotpTwoFaProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TotpTwoFaProviderConfigBuilder();
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



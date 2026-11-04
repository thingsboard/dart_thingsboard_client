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

part 'email_two_fa_provider_config.g.dart';

/// EmailTwoFaProviderConfig
///
/// Properties:
/// * [providerType] 
/// * [verificationCodeLifetime] 
@BuiltValue()
abstract class EmailTwoFaProviderConfig implements TwoFaProviderConfig, Built<EmailTwoFaProviderConfig, EmailTwoFaProviderConfigBuilder> {
  @BuiltValueField(wireName: r'verificationCodeLifetime')
  int? get verificationCodeLifetime;

  EmailTwoFaProviderConfig._();

  factory EmailTwoFaProviderConfig([void updates(EmailTwoFaProviderConfigBuilder b)]) = _$EmailTwoFaProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailTwoFaProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailTwoFaProviderConfig> get serializer => _$EmailTwoFaProviderConfigSerializer();
}

class _$EmailTwoFaProviderConfigSerializer implements PrimitiveSerializer<EmailTwoFaProviderConfig> {
  @override
  final Iterable<Type> types = const [EmailTwoFaProviderConfig, _$EmailTwoFaProviderConfig];

  @override
  final String wireName = r'EmailTwoFaProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailTwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.verificationCodeLifetime != null) {
      yield r'verificationCodeLifetime';
      yield serializers.serialize(
        object.verificationCodeLifetime,
        specifiedType: const FullType(int),
      );
    }
    yield r'providerType';
    yield serializers.serialize(
      object.providerType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EmailTwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmailTwoFaProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'verificationCodeLifetime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.verificationCodeLifetime = valueDes;
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
  EmailTwoFaProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailTwoFaProviderConfigBuilder();
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



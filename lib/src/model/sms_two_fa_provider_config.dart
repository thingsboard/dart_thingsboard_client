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

part 'sms_two_fa_provider_config.g.dart';

/// SmsTwoFaProviderConfig
///
/// Properties:
/// * [providerType]
/// * [verificationCodeLifetime]
/// * [smsVerificationMessageTemplate]
@BuiltValue()
abstract class SmsTwoFaProviderConfig
    implements
        TwoFaProviderConfig,
        Built<SmsTwoFaProviderConfig, SmsTwoFaProviderConfigBuilder> {
  @BuiltValueField(wireName: r'verificationCodeLifetime')
  int? get verificationCodeLifetime;

  @BuiltValueField(wireName: r'smsVerificationMessageTemplate')
  String get smsVerificationMessageTemplate;

  SmsTwoFaProviderConfig._();

  factory SmsTwoFaProviderConfig([
    void updates(SmsTwoFaProviderConfigBuilder b),
  ]) = _$SmsTwoFaProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmsTwoFaProviderConfigBuilder b) =>
      b..providerType = r'SMS';

  @BuiltValueSerializer(custom: true)
  static Serializer<SmsTwoFaProviderConfig> get serializer =>
      _$SmsTwoFaProviderConfigSerializer();
}

class _$SmsTwoFaProviderConfigSerializer
    implements PrimitiveSerializer<SmsTwoFaProviderConfig> {
  @override
  final Iterable<Type> types = const [
    SmsTwoFaProviderConfig,
    _$SmsTwoFaProviderConfig,
  ];

  @override
  final String wireName = r'SmsTwoFaProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmsTwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.verificationCodeLifetime != null) {
      yield r'verificationCodeLifetime';
      yield serializers.serialize(
        object.verificationCodeLifetime,
        specifiedType: const FullType(int),
      );
    }
    yield r'smsVerificationMessageTemplate';
    yield serializers.serialize(
      object.smsVerificationMessageTemplate,
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
    SmsTwoFaProviderConfig object, {
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
    required SmsTwoFaProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'verificationCodeLifetime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.verificationCodeLifetime = valueDes;
          break;
        case r'smsVerificationMessageTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.smsVerificationMessageTemplate = valueDes;
          break;
        case r'providerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  SmsTwoFaProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmsTwoFaProviderConfigBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/two_fa_account_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_two_fa_account_config.g.dart';

/// EmailTwoFaAccountConfig
///
/// Properties:
/// * [useByDefault]
/// * [providerType]
/// * [email]
@BuiltValue()
abstract class EmailTwoFaAccountConfig
    implements
        TwoFaAccountConfig,
        Built<EmailTwoFaAccountConfig, EmailTwoFaAccountConfigBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  EmailTwoFaAccountConfig._();

  factory EmailTwoFaAccountConfig([
    void updates(EmailTwoFaAccountConfigBuilder b),
  ]) = _$EmailTwoFaAccountConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailTwoFaAccountConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailTwoFaAccountConfig> get serializer =>
      _$EmailTwoFaAccountConfigSerializer();
}

class _$EmailTwoFaAccountConfigSerializer
    implements PrimitiveSerializer<EmailTwoFaAccountConfig> {
  @override
  final Iterable<Type> types = const [
    EmailTwoFaAccountConfig,
    _$EmailTwoFaAccountConfig,
  ];

  @override
  final String wireName = r'EmailTwoFaAccountConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailTwoFaAccountConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.useByDefault != null) {
      yield r'useByDefault';
      yield serializers.serialize(
        object.useByDefault,
        specifiedType: const FullType(bool),
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
    EmailTwoFaAccountConfig object, {
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
    required EmailTwoFaAccountConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.email = valueDes;
          break;
        case r'useByDefault':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useByDefault = valueDes;
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
  EmailTwoFaAccountConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailTwoFaAccountConfigBuilder();
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

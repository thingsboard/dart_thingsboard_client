// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sms_provider_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'twilio_sms_provider_configuration.g.dart';

/// TwilioSmsProviderConfiguration
///
/// Properties:
/// * [type] 
/// * [accountSid] - Twilio account Sid.
/// * [accountToken] - Twilio account Token.
/// * [numberFrom] - The number/id of a sender.
@BuiltValue()
abstract class TwilioSmsProviderConfiguration implements SmsProviderConfiguration, Built<TwilioSmsProviderConfiguration, TwilioSmsProviderConfigurationBuilder> {
  /// The number/id of a sender.
  @BuiltValueField(wireName: r'numberFrom')
  String? get numberFrom;

  /// Twilio account Sid.
  @BuiltValueField(wireName: r'accountSid')
  String? get accountSid;

  /// Twilio account Token.
  @BuiltValueField(wireName: r'accountToken')
  String? get accountToken;

  TwilioSmsProviderConfiguration._();

  factory TwilioSmsProviderConfiguration([void updates(TwilioSmsProviderConfigurationBuilder b)]) = _$TwilioSmsProviderConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TwilioSmsProviderConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TwilioSmsProviderConfiguration> get serializer => _$TwilioSmsProviderConfigurationSerializer();
}

class _$TwilioSmsProviderConfigurationSerializer implements PrimitiveSerializer<TwilioSmsProviderConfiguration> {
  @override
  final Iterable<Type> types = const [TwilioSmsProviderConfiguration, _$TwilioSmsProviderConfiguration];

  @override
  final String wireName = r'TwilioSmsProviderConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TwilioSmsProviderConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.numberFrom != null) {
      yield r'numberFrom';
      yield serializers.serialize(
        object.numberFrom,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountSid != null) {
      yield r'accountSid';
      yield serializers.serialize(
        object.accountSid,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountToken != null) {
      yield r'accountToken';
      yield serializers.serialize(
        object.accountToken,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TwilioSmsProviderConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TwilioSmsProviderConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'numberFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.numberFrom = valueDes;
          break;
        case r'accountSid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountSid = valueDes;
          break;
        case r'accountToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountToken = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TwilioSmsProviderConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TwilioSmsProviderConfigurationBuilder();
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



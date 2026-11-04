// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/aws_sns_sms_provider_configuration.dart';
import 'package:thingsboard_client/src/model/smpp_sms_provider_configuration.dart';
import 'package:thingsboard_client/src/model/twilio_sms_provider_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sms_provider_configuration.g.dart';

/// Base configuration for SMS providers
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class SmsProviderConfiguration  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'AWS_SNS': AwsSnsSmsProviderConfiguration,
    r'SMPP': SmppSmsProviderConfiguration,
    r'TWILIO': TwilioSmsProviderConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<SmsProviderConfiguration> get serializer => _$SmsProviderConfigurationSerializer();
}

extension SmsProviderConfigurationDiscriminatorExt on SmsProviderConfiguration {
    String? get discriminatorValue {
        if (this is AwsSnsSmsProviderConfiguration) {
            return r'AWS_SNS';
        }
        if (this is SmppSmsProviderConfiguration) {
            return r'SMPP';
        }
        if (this is TwilioSmsProviderConfiguration) {
            return r'TWILIO';
        }
        return null;
    }
}
extension SmsProviderConfigurationBuilderDiscriminatorExt on SmsProviderConfigurationBuilder {
    String? get discriminatorValue {
        if (this is AwsSnsSmsProviderConfigurationBuilder) {
            return r'AWS_SNS';
        }
        if (this is SmppSmsProviderConfigurationBuilder) {
            return r'SMPP';
        }
        if (this is TwilioSmsProviderConfigurationBuilder) {
            return r'TWILIO';
        }
        return null;
    }
}

class _$SmsProviderConfigurationSerializer implements PrimitiveSerializer<SmsProviderConfiguration> {
  @override
  final Iterable<Type> types = const [SmsProviderConfiguration];

  @override
  final String wireName = r'SmsProviderConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmsProviderConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SmsProviderConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AwsSnsSmsProviderConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(AwsSnsSmsProviderConfiguration))!;
    }
    if (object is SmppSmsProviderConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(SmppSmsProviderConfiguration))!;
    }
    if (object is TwilioSmsProviderConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(TwilioSmsProviderConfiguration))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SmsProviderConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(SmsProviderConfiguration.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'AWS_SNS':
        return serializers.deserialize(serialized, specifiedType: FullType(AwsSnsSmsProviderConfiguration)) as AwsSnsSmsProviderConfiguration;
      case r'SMPP':
        return serializers.deserialize(serialized, specifiedType: FullType(SmppSmsProviderConfiguration)) as SmppSmsProviderConfiguration;
      case r'TWILIO':
        return serializers.deserialize(serialized, specifiedType: FullType(TwilioSmsProviderConfiguration)) as TwilioSmsProviderConfiguration;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($SmsProviderConfiguration)) as $SmsProviderConfiguration;
    }
  }
}


/// a concrete implementation of [SmsProviderConfiguration], since [SmsProviderConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SmsProviderConfiguration implements SmsProviderConfiguration, Built<$SmsProviderConfiguration, $SmsProviderConfigurationBuilder> {
  $SmsProviderConfiguration._();

  factory $SmsProviderConfiguration([void Function($SmsProviderConfigurationBuilder)? updates]) = _$$SmsProviderConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SmsProviderConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SmsProviderConfiguration> get serializer => _$$SmsProviderConfigurationSerializer();
}

class _$$SmsProviderConfigurationSerializer implements PrimitiveSerializer<$SmsProviderConfiguration> {
  @override
  final Iterable<Type> types = const [$SmsProviderConfiguration, _$$SmsProviderConfiguration];

  @override
  final String wireName = r'$SmsProviderConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $SmsProviderConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SmsProviderConfiguration))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SmsProviderConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $SmsProviderConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SmsProviderConfigurationBuilder();
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


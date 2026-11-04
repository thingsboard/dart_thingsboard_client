// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/totp_two_fa_provider_config.dart';
import 'package:thingsboard_client/src/model/email_two_fa_provider_config.dart';
import 'package:thingsboard_client/src/model/backup_code_two_fa_provider_config.dart';
import 'package:thingsboard_client/src/model/sms_two_fa_provider_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'two_fa_provider_config.g.dart';

/// Two-factor authentication provider configuration
///
/// Properties:
/// * [providerType]
@BuiltValue(instantiable: false)
abstract class TwoFaProviderConfig {
  @BuiltValueField(wireName: r'providerType')
  String get providerType;

  static const String discriminatorFieldName = r'providerType';

  static const Map<String, Type> discriminatorMapping = {
    r'BACKUP_CODE': BackupCodeTwoFaProviderConfig,
    r'EMAIL': EmailTwoFaProviderConfig,
    r'SMS': SmsTwoFaProviderConfig,
    r'TOTP': TotpTwoFaProviderConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TwoFaProviderConfig> get serializer =>
      _$TwoFaProviderConfigSerializer();
}

extension TwoFaProviderConfigDiscriminatorExt on TwoFaProviderConfig {
  String? get discriminatorValue {
    if (this is BackupCodeTwoFaProviderConfig) {
      return r'BACKUP_CODE';
    }
    if (this is EmailTwoFaProviderConfig) {
      return r'EMAIL';
    }
    if (this is SmsTwoFaProviderConfig) {
      return r'SMS';
    }
    if (this is TotpTwoFaProviderConfig) {
      return r'TOTP';
    }
    return null;
  }
}

extension TwoFaProviderConfigBuilderDiscriminatorExt
    on TwoFaProviderConfigBuilder {
  String? get discriminatorValue {
    if (this is BackupCodeTwoFaProviderConfigBuilder) {
      return r'BACKUP_CODE';
    }
    if (this is EmailTwoFaProviderConfigBuilder) {
      return r'EMAIL';
    }
    if (this is SmsTwoFaProviderConfigBuilder) {
      return r'SMS';
    }
    if (this is TotpTwoFaProviderConfigBuilder) {
      return r'TOTP';
    }
    return null;
  }
}

class _$TwoFaProviderConfigSerializer
    implements PrimitiveSerializer<TwoFaProviderConfig> {
  @override
  final Iterable<Type> types = const [TwoFaProviderConfig];

  @override
  final String wireName = r'TwoFaProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'providerType';
    yield serializers.serialize(
      object.providerType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is BackupCodeTwoFaProviderConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(BackupCodeTwoFaProviderConfig),
      )!;
    }
    if (object is EmailTwoFaProviderConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EmailTwoFaProviderConfig),
      )!;
    }
    if (object is SmsTwoFaProviderConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SmsTwoFaProviderConfig),
      )!;
    }
    if (object is TotpTwoFaProviderConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TotpTwoFaProviderConfig),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  TwoFaProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(TwoFaProviderConfig.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'BACKUP_CODE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(BackupCodeTwoFaProviderConfig),
            )
            as BackupCodeTwoFaProviderConfig;
      case r'EMAIL':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EmailTwoFaProviderConfig),
            )
            as EmailTwoFaProviderConfig;
      case r'SMS':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SmsTwoFaProviderConfig),
            )
            as SmsTwoFaProviderConfig;
      case r'TOTP':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TotpTwoFaProviderConfig),
            )
            as TotpTwoFaProviderConfig;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($TwoFaProviderConfig),
            )
            as $TwoFaProviderConfig;
    }
  }
}

/// a concrete implementation of [TwoFaProviderConfig], since [TwoFaProviderConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TwoFaProviderConfig
    implements
        TwoFaProviderConfig,
        Built<$TwoFaProviderConfig, $TwoFaProviderConfigBuilder> {
  $TwoFaProviderConfig._();

  factory $TwoFaProviderConfig([
    void Function($TwoFaProviderConfigBuilder)? updates,
  ]) = _$$TwoFaProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TwoFaProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TwoFaProviderConfig> get serializer =>
      _$$TwoFaProviderConfigSerializer();
}

class _$$TwoFaProviderConfigSerializer
    implements PrimitiveSerializer<$TwoFaProviderConfig> {
  @override
  final Iterable<Type> types = const [
    $TwoFaProviderConfig,
    _$$TwoFaProviderConfig,
  ];

  @override
  final String wireName = r'$TwoFaProviderConfig';

  @override
  Object serialize(
    Serializers serializers,
    $TwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(TwoFaProviderConfig),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TwoFaProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $TwoFaProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TwoFaProviderConfigBuilder();
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

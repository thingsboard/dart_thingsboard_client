// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/email_two_fa_account_config.dart';
import 'package:thingsboard_client/src/model/totp_two_fa_account_config.dart';
import 'package:thingsboard_client/src/model/backup_code_two_fa_account_config.dart';
import 'package:thingsboard_client/src/model/sms_two_fa_account_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'two_fa_account_config.g.dart';

/// Base configuration for two-factor authentication accounts
///
/// Properties:
/// * [useByDefault] 
/// * [providerType] 
@BuiltValue(instantiable: false)
abstract class TwoFaAccountConfig  {
  @BuiltValueField(wireName: r'useByDefault')
  bool? get useByDefault;

  @BuiltValueField(wireName: r'providerType')
  String get providerType;

  static const String discriminatorFieldName = r'providerType';

  static const Map<String, Type> discriminatorMapping = {
    r'BACKUP_CODE': BackupCodeTwoFaAccountConfig,
    r'EMAIL': EmailTwoFaAccountConfig,
    r'SMS': SmsTwoFaAccountConfig,
    r'TOTP': TotpTwoFaAccountConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TwoFaAccountConfig> get serializer => _$TwoFaAccountConfigSerializer();
}

extension TwoFaAccountConfigDiscriminatorExt on TwoFaAccountConfig {
    String? get discriminatorValue {
        if (this is BackupCodeTwoFaAccountConfig) {
            return r'BACKUP_CODE';
        }
        if (this is EmailTwoFaAccountConfig) {
            return r'EMAIL';
        }
        if (this is SmsTwoFaAccountConfig) {
            return r'SMS';
        }
        if (this is TotpTwoFaAccountConfig) {
            return r'TOTP';
        }
        return null;
    }
}
extension TwoFaAccountConfigBuilderDiscriminatorExt on TwoFaAccountConfigBuilder {
    String? get discriminatorValue {
        if (this is BackupCodeTwoFaAccountConfigBuilder) {
            return r'BACKUP_CODE';
        }
        if (this is EmailTwoFaAccountConfigBuilder) {
            return r'EMAIL';
        }
        if (this is SmsTwoFaAccountConfigBuilder) {
            return r'SMS';
        }
        if (this is TotpTwoFaAccountConfigBuilder) {
            return r'TOTP';
        }
        return null;
    }
}

class _$TwoFaAccountConfigSerializer implements PrimitiveSerializer<TwoFaAccountConfig> {
  @override
  final Iterable<Type> types = const [TwoFaAccountConfig];

  @override
  final String wireName = r'TwoFaAccountConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TwoFaAccountConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    TwoFaAccountConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is BackupCodeTwoFaAccountConfig) {
      return serializers.serialize(object, specifiedType: FullType(BackupCodeTwoFaAccountConfig))!;
    }
    if (object is EmailTwoFaAccountConfig) {
      return serializers.serialize(object, specifiedType: FullType(EmailTwoFaAccountConfig))!;
    }
    if (object is SmsTwoFaAccountConfig) {
      return serializers.serialize(object, specifiedType: FullType(SmsTwoFaAccountConfig))!;
    }
    if (object is TotpTwoFaAccountConfig) {
      return serializers.serialize(object, specifiedType: FullType(TotpTwoFaAccountConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TwoFaAccountConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(TwoFaAccountConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'BACKUP_CODE':
        return serializers.deserialize(serialized, specifiedType: FullType(BackupCodeTwoFaAccountConfig)) as BackupCodeTwoFaAccountConfig;
      case r'EMAIL':
        return serializers.deserialize(serialized, specifiedType: FullType(EmailTwoFaAccountConfig)) as EmailTwoFaAccountConfig;
      case r'SMS':
        return serializers.deserialize(serialized, specifiedType: FullType(SmsTwoFaAccountConfig)) as SmsTwoFaAccountConfig;
      case r'TOTP':
        return serializers.deserialize(serialized, specifiedType: FullType(TotpTwoFaAccountConfig)) as TotpTwoFaAccountConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($TwoFaAccountConfig)) as $TwoFaAccountConfig;
    }
  }
}


/// a concrete implementation of [TwoFaAccountConfig], since [TwoFaAccountConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TwoFaAccountConfig implements TwoFaAccountConfig, Built<$TwoFaAccountConfig, $TwoFaAccountConfigBuilder> {
  $TwoFaAccountConfig._();

  factory $TwoFaAccountConfig([void Function($TwoFaAccountConfigBuilder)? updates]) = _$$TwoFaAccountConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TwoFaAccountConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TwoFaAccountConfig> get serializer => _$$TwoFaAccountConfigSerializer();
}

class _$$TwoFaAccountConfigSerializer implements PrimitiveSerializer<$TwoFaAccountConfig> {
  @override
  final Iterable<Type> types = const [$TwoFaAccountConfig, _$$TwoFaAccountConfig];

  @override
  final String wireName = r'$TwoFaAccountConfig';

  @override
  Object serialize(
    Serializers serializers,
    $TwoFaAccountConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TwoFaAccountConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TwoFaAccountConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'useByDefault':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.useByDefault = valueDes;
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
  $TwoFaAccountConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TwoFaAccountConfigBuilder();
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


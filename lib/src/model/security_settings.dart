// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/user_password_policy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'security_settings.g.dart';

/// A JSON value representing the Security Settings.
///
/// Properties:
/// * [passwordPolicy] - The user password policy object.
/// * [maxFailedLoginAttempts] - Maximum number of failed login attempts allowed before user account is locked.
/// * [userLockoutNotificationEmail] - Email to use for notifications about locked users.
/// * [mobileSecretKeyLength] - Mobile secret key length
/// * [userActivationTokenTtl] - TTL in hours for user activation link
/// * [passwordResetTokenTtl] - TTL in hours for password reset link
@BuiltValue()
abstract class SecuritySettings implements Built<SecuritySettings, SecuritySettingsBuilder> {
  /// The user password policy object.
  @BuiltValueField(wireName: r'passwordPolicy')
  UserPasswordPolicy? get passwordPolicy;

  /// Maximum number of failed login attempts allowed before user account is locked.
  @BuiltValueField(wireName: r'maxFailedLoginAttempts')
  int? get maxFailedLoginAttempts;

  /// Email to use for notifications about locked users.
  @BuiltValueField(wireName: r'userLockoutNotificationEmail')
  String? get userLockoutNotificationEmail;

  /// Mobile secret key length
  @BuiltValueField(wireName: r'mobileSecretKeyLength')
  int? get mobileSecretKeyLength;

  /// TTL in hours for user activation link
  @BuiltValueField(wireName: r'userActivationTokenTtl')
  int get userActivationTokenTtl;

  /// TTL in hours for password reset link
  @BuiltValueField(wireName: r'passwordResetTokenTtl')
  int get passwordResetTokenTtl;

  SecuritySettings._();

  factory SecuritySettings([void updates(SecuritySettingsBuilder b)]) = _$SecuritySettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SecuritySettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SecuritySettings> get serializer => _$SecuritySettingsSerializer();
}

class _$SecuritySettingsSerializer implements PrimitiveSerializer<SecuritySettings> {
  @override
  final Iterable<Type> types = const [SecuritySettings, _$SecuritySettings];

  @override
  final String wireName = r'SecuritySettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SecuritySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passwordPolicy != null) {
      yield r'passwordPolicy';
      yield serializers.serialize(
        object.passwordPolicy,
        specifiedType: const FullType(UserPasswordPolicy),
      );
    }
    if (object.maxFailedLoginAttempts != null) {
      yield r'maxFailedLoginAttempts';
      yield serializers.serialize(
        object.maxFailedLoginAttempts,
        specifiedType: const FullType(int),
      );
    }
    if (object.userLockoutNotificationEmail != null) {
      yield r'userLockoutNotificationEmail';
      yield serializers.serialize(
        object.userLockoutNotificationEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.mobileSecretKeyLength != null) {
      yield r'mobileSecretKeyLength';
      yield serializers.serialize(
        object.mobileSecretKeyLength,
        specifiedType: const FullType(int),
      );
    }
    yield r'userActivationTokenTtl';
    yield serializers.serialize(
      object.userActivationTokenTtl,
      specifiedType: const FullType(int),
    );
    yield r'passwordResetTokenTtl';
    yield serializers.serialize(
      object.passwordResetTokenTtl,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SecuritySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SecuritySettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passwordPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserPasswordPolicy),
          ) as UserPasswordPolicy?;
          if (valueDes == null) continue;
          result.passwordPolicy.replace(valueDes);
          break;
        case r'maxFailedLoginAttempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxFailedLoginAttempts = valueDes;
          break;
        case r'userLockoutNotificationEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userLockoutNotificationEmail = valueDes;
          break;
        case r'mobileSecretKeyLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.mobileSecretKeyLength = valueDes;
          break;
        case r'userActivationTokenTtl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userActivationTokenTtl = valueDes;
          break;
        case r'passwordResetTokenTtl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.passwordResetTokenTtl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SecuritySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecuritySettingsBuilder();
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



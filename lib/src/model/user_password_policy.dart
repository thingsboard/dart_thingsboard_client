// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_password_policy.g.dart';

/// UserPasswordPolicy
///
/// Properties:
/// * [minimumLength] - Minimum number of symbols in the password.
/// * [maximumLength] - Maximum number of symbols in the password.
/// * [minimumUppercaseLetters] - Minimum number of uppercase letters in the password.
/// * [minimumLowercaseLetters] - Minimum number of lowercase letters in the password.
/// * [minimumDigits] - Minimum number of digits in the password.
/// * [minimumSpecialCharacters] - Minimum number of special in the password.
/// * [allowWhitespaces] - Allow whitespaces
/// * [forceUserToResetPasswordIfNotValid] - Force user to update password if existing one does not pass validation
/// * [passwordExpirationPeriodDays] - Password expiration period (days). Force expiration of the password.
/// * [passwordReuseFrequencyDays] - Password reuse frequency (days). Disallow to use the same password for the defined number of days
@BuiltValue()
abstract class UserPasswordPolicy implements Built<UserPasswordPolicy, UserPasswordPolicyBuilder> {
  /// Minimum number of symbols in the password.
  @BuiltValueField(wireName: r'minimumLength')
  int? get minimumLength;

  /// Maximum number of symbols in the password.
  @BuiltValueField(wireName: r'maximumLength')
  int? get maximumLength;

  /// Minimum number of uppercase letters in the password.
  @BuiltValueField(wireName: r'minimumUppercaseLetters')
  int? get minimumUppercaseLetters;

  /// Minimum number of lowercase letters in the password.
  @BuiltValueField(wireName: r'minimumLowercaseLetters')
  int? get minimumLowercaseLetters;

  /// Minimum number of digits in the password.
  @BuiltValueField(wireName: r'minimumDigits')
  int? get minimumDigits;

  /// Minimum number of special in the password.
  @BuiltValueField(wireName: r'minimumSpecialCharacters')
  int? get minimumSpecialCharacters;

  /// Allow whitespaces
  @BuiltValueField(wireName: r'allowWhitespaces')
  bool? get allowWhitespaces;

  /// Force user to update password if existing one does not pass validation
  @BuiltValueField(wireName: r'forceUserToResetPasswordIfNotValid')
  bool? get forceUserToResetPasswordIfNotValid;

  /// Password expiration period (days). Force expiration of the password.
  @BuiltValueField(wireName: r'passwordExpirationPeriodDays')
  int? get passwordExpirationPeriodDays;

  /// Password reuse frequency (days). Disallow to use the same password for the defined number of days
  @BuiltValueField(wireName: r'passwordReuseFrequencyDays')
  int? get passwordReuseFrequencyDays;

  UserPasswordPolicy._();

  factory UserPasswordPolicy([void updates(UserPasswordPolicyBuilder b)]) = _$UserPasswordPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPasswordPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPasswordPolicy> get serializer => _$UserPasswordPolicySerializer();
}

class _$UserPasswordPolicySerializer implements PrimitiveSerializer<UserPasswordPolicy> {
  @override
  final Iterable<Type> types = const [UserPasswordPolicy, _$UserPasswordPolicy];

  @override
  final String wireName = r'UserPasswordPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPasswordPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minimumLength != null) {
      yield r'minimumLength';
      yield serializers.serialize(
        object.minimumLength,
        specifiedType: const FullType(int),
      );
    }
    if (object.maximumLength != null) {
      yield r'maximumLength';
      yield serializers.serialize(
        object.maximumLength,
        specifiedType: const FullType(int),
      );
    }
    if (object.minimumUppercaseLetters != null) {
      yield r'minimumUppercaseLetters';
      yield serializers.serialize(
        object.minimumUppercaseLetters,
        specifiedType: const FullType(int),
      );
    }
    if (object.minimumLowercaseLetters != null) {
      yield r'minimumLowercaseLetters';
      yield serializers.serialize(
        object.minimumLowercaseLetters,
        specifiedType: const FullType(int),
      );
    }
    if (object.minimumDigits != null) {
      yield r'minimumDigits';
      yield serializers.serialize(
        object.minimumDigits,
        specifiedType: const FullType(int),
      );
    }
    if (object.minimumSpecialCharacters != null) {
      yield r'minimumSpecialCharacters';
      yield serializers.serialize(
        object.minimumSpecialCharacters,
        specifiedType: const FullType(int),
      );
    }
    if (object.allowWhitespaces != null) {
      yield r'allowWhitespaces';
      yield serializers.serialize(
        object.allowWhitespaces,
        specifiedType: const FullType(bool),
      );
    }
    if (object.forceUserToResetPasswordIfNotValid != null) {
      yield r'forceUserToResetPasswordIfNotValid';
      yield serializers.serialize(
        object.forceUserToResetPasswordIfNotValid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.passwordExpirationPeriodDays != null) {
      yield r'passwordExpirationPeriodDays';
      yield serializers.serialize(
        object.passwordExpirationPeriodDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.passwordReuseFrequencyDays != null) {
      yield r'passwordReuseFrequencyDays';
      yield serializers.serialize(
        object.passwordReuseFrequencyDays,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPasswordPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserPasswordPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minimumLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minimumLength = valueDes;
          break;
        case r'maximumLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maximumLength = valueDes;
          break;
        case r'minimumUppercaseLetters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minimumUppercaseLetters = valueDes;
          break;
        case r'minimumLowercaseLetters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minimumLowercaseLetters = valueDes;
          break;
        case r'minimumDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minimumDigits = valueDes;
          break;
        case r'minimumSpecialCharacters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minimumSpecialCharacters = valueDes;
          break;
        case r'allowWhitespaces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowWhitespaces = valueDes;
          break;
        case r'forceUserToResetPasswordIfNotValid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.forceUserToResetPasswordIfNotValid = valueDes;
          break;
        case r'passwordExpirationPeriodDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.passwordExpirationPeriodDays = valueDes;
          break;
        case r'passwordReuseFrequencyDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.passwordReuseFrequencyDays = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPasswordPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPasswordPolicyBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/two_fa_provider_config.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_two_fa_settings.g.dart';

/// Settings value
///
/// Properties:
/// * [useSystemTwoFactorAuthSettings]
/// * [providers]
/// * [minVerificationCodeSendPeriod]
/// * [verificationCodeCheckRateLimit]
/// * [maxVerificationFailuresBeforeUserLockout]
/// * [totalAllowedTimeForVerification]
/// * [enforceTwoFa]
/// * [enforcedUsersFilter]
@BuiltValue()
abstract class PlatformTwoFaSettings
    implements Built<PlatformTwoFaSettings, PlatformTwoFaSettingsBuilder> {
  @BuiltValueField(wireName: r'useSystemTwoFactorAuthSettings')
  bool? get useSystemTwoFactorAuthSettings;

  @BuiltValueField(wireName: r'providers')
  BuiltList<TwoFaProviderConfig> get providers;

  @BuiltValueField(wireName: r'minVerificationCodeSendPeriod')
  int get minVerificationCodeSendPeriod;

  @BuiltValueField(wireName: r'verificationCodeCheckRateLimit')
  String? get verificationCodeCheckRateLimit;

  @BuiltValueField(wireName: r'maxVerificationFailuresBeforeUserLockout')
  int? get maxVerificationFailuresBeforeUserLockout;

  @BuiltValueField(wireName: r'totalAllowedTimeForVerification')
  int get totalAllowedTimeForVerification;

  @BuiltValueField(wireName: r'enforceTwoFa')
  bool? get enforceTwoFa;

  @BuiltValueField(wireName: r'enforcedUsersFilter')
  JsonObject? get enforcedUsersFilter;

  PlatformTwoFaSettings._();

  factory PlatformTwoFaSettings([
    void updates(PlatformTwoFaSettingsBuilder b),
  ]) = _$PlatformTwoFaSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformTwoFaSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformTwoFaSettings> get serializer =>
      _$PlatformTwoFaSettingsSerializer();
}

class _$PlatformTwoFaSettingsSerializer
    implements PrimitiveSerializer<PlatformTwoFaSettings> {
  @override
  final Iterable<Type> types = const [
    PlatformTwoFaSettings,
    _$PlatformTwoFaSettings,
  ];

  @override
  final String wireName = r'PlatformTwoFaSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformTwoFaSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useSystemTwoFactorAuthSettings != null) {
      yield r'useSystemTwoFactorAuthSettings';
      yield serializers.serialize(
        object.useSystemTwoFactorAuthSettings,
        specifiedType: const FullType(bool),
      );
    }
    yield r'providers';
    yield serializers.serialize(
      object.providers,
      specifiedType: const FullType(BuiltList, [FullType(TwoFaProviderConfig)]),
    );
    yield r'minVerificationCodeSendPeriod';
    yield serializers.serialize(
      object.minVerificationCodeSendPeriod,
      specifiedType: const FullType(int),
    );
    if (object.verificationCodeCheckRateLimit != null) {
      yield r'verificationCodeCheckRateLimit';
      yield serializers.serialize(
        object.verificationCodeCheckRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxVerificationFailuresBeforeUserLockout != null) {
      yield r'maxVerificationFailuresBeforeUserLockout';
      yield serializers.serialize(
        object.maxVerificationFailuresBeforeUserLockout,
        specifiedType: const FullType(int),
      );
    }
    yield r'totalAllowedTimeForVerification';
    yield serializers.serialize(
      object.totalAllowedTimeForVerification,
      specifiedType: const FullType(int),
    );
    if (object.enforceTwoFa != null) {
      yield r'enforceTwoFa';
      yield serializers.serialize(
        object.enforceTwoFa,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enforcedUsersFilter != null) {
      yield r'enforcedUsersFilter';
      yield serializers.serialize(
        object.enforcedUsersFilter,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformTwoFaSettings object, {
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
    required PlatformTwoFaSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'useSystemTwoFactorAuthSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useSystemTwoFactorAuthSettings = valueDes;
          break;
        case r'providers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(TwoFaProviderConfig),
                    ]),
                  )
                  as BuiltList<TwoFaProviderConfig>;
          result.providers.replace(valueDes);
          break;
        case r'minVerificationCodeSendPeriod':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.minVerificationCodeSendPeriod = valueDes;
          break;
        case r'verificationCodeCheckRateLimit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.verificationCodeCheckRateLimit = valueDes;
          break;
        case r'maxVerificationFailuresBeforeUserLockout':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxVerificationFailuresBeforeUserLockout = valueDes;
          break;
        case r'totalAllowedTimeForVerification':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.totalAllowedTimeForVerification = valueDes;
          break;
        case r'enforceTwoFa':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enforceTwoFa = valueDes;
          break;
        case r'enforcedUsersFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.enforcedUsersFilter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformTwoFaSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformTwoFaSettingsBuilder();
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

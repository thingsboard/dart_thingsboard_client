// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/two_fa_account_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_two_fa_settings.g.dart';

/// Account Two-Factor Authentication Settings
///
/// Properties:
/// * [configs]
@BuiltValue()
abstract class AccountTwoFaSettings
    implements Built<AccountTwoFaSettings, AccountTwoFaSettingsBuilder> {
  @BuiltValueField(wireName: r'configs')
  BuiltMap<String, TwoFaAccountConfig>? get configs;

  AccountTwoFaSettings._();

  factory AccountTwoFaSettings([void updates(AccountTwoFaSettingsBuilder b)]) =
      _$AccountTwoFaSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountTwoFaSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountTwoFaSettings> get serializer =>
      _$AccountTwoFaSettingsSerializer();
}

class _$AccountTwoFaSettingsSerializer
    implements PrimitiveSerializer<AccountTwoFaSettings> {
  @override
  final Iterable<Type> types = const [
    AccountTwoFaSettings,
    _$AccountTwoFaSettings,
  ];

  @override
  final String wireName = r'AccountTwoFaSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountTwoFaSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configs != null) {
      yield r'configs';
      yield serializers.serialize(
        object.configs,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(TwoFaAccountConfig),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountTwoFaSettings object, {
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
    required AccountTwoFaSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(TwoFaAccountConfig),
                    ]),
                  )
                  as BuiltMap<String, TwoFaAccountConfig>?;
          if (valueDes == null) continue;
          result.configs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountTwoFaSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountTwoFaSettingsBuilder();
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

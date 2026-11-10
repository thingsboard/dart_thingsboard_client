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

part 'sms_two_fa_account_config.g.dart';

/// SmsTwoFaAccountConfig
///
/// Properties:
/// * [useByDefault]
/// * [providerType]
/// * [phoneNumber]
@BuiltValue()
abstract class SmsTwoFaAccountConfig
    implements
        TwoFaAccountConfig,
        Built<SmsTwoFaAccountConfig, SmsTwoFaAccountConfigBuilder> {
  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  SmsTwoFaAccountConfig._();

  factory SmsTwoFaAccountConfig([
    void updates(SmsTwoFaAccountConfigBuilder b),
  ]) = _$SmsTwoFaAccountConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmsTwoFaAccountConfigBuilder b) =>
      b..providerType = r'SMS';

  @BuiltValueSerializer(custom: true)
  static Serializer<SmsTwoFaAccountConfig> get serializer =>
      _$SmsTwoFaAccountConfigSerializer();
}

class _$SmsTwoFaAccountConfigSerializer
    implements PrimitiveSerializer<SmsTwoFaAccountConfig> {
  @override
  final Iterable<Type> types = const [
    SmsTwoFaAccountConfig,
    _$SmsTwoFaAccountConfig,
  ];

  @override
  final String wireName = r'SmsTwoFaAccountConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmsTwoFaAccountConfig object, {
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
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SmsTwoFaAccountConfig object, {
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
    required SmsTwoFaAccountConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'phoneNumber':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmsTwoFaAccountConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmsTwoFaAccountConfigBuilder();
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

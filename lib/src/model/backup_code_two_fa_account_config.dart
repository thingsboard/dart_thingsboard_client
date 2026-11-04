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

part 'backup_code_two_fa_account_config.g.dart';

/// BackupCodeTwoFaAccountConfig
///
/// Properties:
/// * [useByDefault] 
/// * [providerType] 
/// * [codes] 
/// * [codesLeft] 
@BuiltValue()
abstract class BackupCodeTwoFaAccountConfig implements TwoFaAccountConfig, Built<BackupCodeTwoFaAccountConfig, BackupCodeTwoFaAccountConfigBuilder> {
  @BuiltValueField(wireName: r'codes')
  BuiltSet<String> get codes;

  @BuiltValueField(wireName: r'codesLeft')
  int? get codesLeft;

  BackupCodeTwoFaAccountConfig._();

  factory BackupCodeTwoFaAccountConfig([void updates(BackupCodeTwoFaAccountConfigBuilder b)]) = _$BackupCodeTwoFaAccountConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupCodeTwoFaAccountConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupCodeTwoFaAccountConfig> get serializer => _$BackupCodeTwoFaAccountConfigSerializer();
}

class _$BackupCodeTwoFaAccountConfigSerializer implements PrimitiveSerializer<BackupCodeTwoFaAccountConfig> {
  @override
  final Iterable<Type> types = const [BackupCodeTwoFaAccountConfig, _$BackupCodeTwoFaAccountConfig];

  @override
  final String wireName = r'BackupCodeTwoFaAccountConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupCodeTwoFaAccountConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'codes';
    yield serializers.serialize(
      object.codes,
      specifiedType: const FullType(BuiltSet, [FullType(String)]),
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
    if (object.codesLeft != null) {
      yield r'codesLeft';
      yield serializers.serialize(
        object.codesLeft,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupCodeTwoFaAccountConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BackupCodeTwoFaAccountConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>;
          result.codes.replace(valueDes);
          break;
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
        case r'codesLeft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.codesLeft = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupCodeTwoFaAccountConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupCodeTwoFaAccountConfigBuilder();
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



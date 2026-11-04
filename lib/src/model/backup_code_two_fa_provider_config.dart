// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/two_fa_provider_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_code_two_fa_provider_config.g.dart';

/// BackupCodeTwoFaProviderConfig
///
/// Properties:
/// * [providerType] 
/// * [codesQuantity] 
@BuiltValue()
abstract class BackupCodeTwoFaProviderConfig implements TwoFaProviderConfig, Built<BackupCodeTwoFaProviderConfig, BackupCodeTwoFaProviderConfigBuilder> {
  @BuiltValueField(wireName: r'codesQuantity')
  int? get codesQuantity;

  BackupCodeTwoFaProviderConfig._();

  factory BackupCodeTwoFaProviderConfig([void updates(BackupCodeTwoFaProviderConfigBuilder b)]) = _$BackupCodeTwoFaProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupCodeTwoFaProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupCodeTwoFaProviderConfig> get serializer => _$BackupCodeTwoFaProviderConfigSerializer();
}

class _$BackupCodeTwoFaProviderConfigSerializer implements PrimitiveSerializer<BackupCodeTwoFaProviderConfig> {
  @override
  final Iterable<Type> types = const [BackupCodeTwoFaProviderConfig, _$BackupCodeTwoFaProviderConfig];

  @override
  final String wireName = r'BackupCodeTwoFaProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupCodeTwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'providerType';
    yield serializers.serialize(
      object.providerType,
      specifiedType: const FullType(String),
    );
    if (object.codesQuantity != null) {
      yield r'codesQuantity';
      yield serializers.serialize(
        object.codesQuantity,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupCodeTwoFaProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BackupCodeTwoFaProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'providerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerType = valueDes;
          break;
        case r'codesQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.codesQuantity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupCodeTwoFaProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupCodeTwoFaProviderConfigBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/two_fa_provider_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'two_fa_provider_info.g.dart';

/// TwoFaProviderInfo
///
/// Properties:
/// * [type]
/// * [default_]
/// * [contact]
/// * [minVerificationCodeSendPeriod]
@BuiltValue()
abstract class TwoFaProviderInfo
    implements Built<TwoFaProviderInfo, TwoFaProviderInfoBuilder> {
  @BuiltValueField(wireName: r'type')
  TwoFaProviderType? get type;
  // enum typeEnum {  TOTP,  SMS,  EMAIL,  BACKUP_CODE,  };

  @BuiltValueField(wireName: r'default')
  bool? get default_;

  @BuiltValueField(wireName: r'contact')
  String? get contact;

  @BuiltValueField(wireName: r'minVerificationCodeSendPeriod')
  int? get minVerificationCodeSendPeriod;

  TwoFaProviderInfo._();

  factory TwoFaProviderInfo([void updates(TwoFaProviderInfoBuilder b)]) =
      _$TwoFaProviderInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TwoFaProviderInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TwoFaProviderInfo> get serializer =>
      _$TwoFaProviderInfoSerializer();
}

class _$TwoFaProviderInfoSerializer
    implements PrimitiveSerializer<TwoFaProviderInfo> {
  @override
  final Iterable<Type> types = const [TwoFaProviderInfo, _$TwoFaProviderInfo];

  @override
  final String wireName = r'TwoFaProviderInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TwoFaProviderInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TwoFaProviderType),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType(String),
      );
    }
    if (object.minVerificationCodeSendPeriod != null) {
      yield r'minVerificationCodeSendPeriod';
      yield serializers.serialize(
        object.minVerificationCodeSendPeriod,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TwoFaProviderInfo object, {
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
    required TwoFaProviderInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TwoFaProviderType),
                  )
                  as TwoFaProviderType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'default':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'contact':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.contact = valueDes;
          break;
        case r'minVerificationCodeSendPeriod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minVerificationCodeSendPeriod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TwoFaProviderInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TwoFaProviderInfoBuilder();
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

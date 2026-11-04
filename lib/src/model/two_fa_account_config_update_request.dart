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

part 'two_fa_account_config_update_request.g.dart';

/// TwoFaAccountConfigUpdateRequest
///
/// Properties:
/// * [useByDefault] 
@BuiltValue()
abstract class TwoFaAccountConfigUpdateRequest implements Built<TwoFaAccountConfigUpdateRequest, TwoFaAccountConfigUpdateRequestBuilder> {
  @BuiltValueField(wireName: r'useByDefault')
  bool? get useByDefault;

  TwoFaAccountConfigUpdateRequest._();

  factory TwoFaAccountConfigUpdateRequest([void updates(TwoFaAccountConfigUpdateRequestBuilder b)]) = _$TwoFaAccountConfigUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TwoFaAccountConfigUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TwoFaAccountConfigUpdateRequest> get serializer => _$TwoFaAccountConfigUpdateRequestSerializer();
}

class _$TwoFaAccountConfigUpdateRequestSerializer implements PrimitiveSerializer<TwoFaAccountConfigUpdateRequest> {
  @override
  final Iterable<Type> types = const [TwoFaAccountConfigUpdateRequest, _$TwoFaAccountConfigUpdateRequest];

  @override
  final String wireName = r'TwoFaAccountConfigUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TwoFaAccountConfigUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useByDefault != null) {
      yield r'useByDefault';
      yield serializers.serialize(
        object.useByDefault,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TwoFaAccountConfigUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TwoFaAccountConfigUpdateRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TwoFaAccountConfigUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TwoFaAccountConfigUpdateRequestBuilder();
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



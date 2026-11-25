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

part 'refresh_token_request.g.dart';

/// RefreshTokenRequest
///
/// Properties:
/// * [refreshToken]
@BuiltValue()
abstract class RefreshTokenRequest
    implements Built<RefreshTokenRequest, RefreshTokenRequestBuilder> {
  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  RefreshTokenRequest._();

  factory RefreshTokenRequest([void updates(RefreshTokenRequestBuilder b)]) =
      _$RefreshTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshTokenRequest> get serializer =>
      _$RefreshTokenRequestSerializer();
}

class _$RefreshTokenRequestSerializer
    implements PrimitiveSerializer<RefreshTokenRequest> {
  @override
  final Iterable<Type> types = const [
    RefreshTokenRequest,
    _$RefreshTokenRequest,
  ];

  @override
  final String wireName = r'RefreshTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refreshToken != null) {
      yield r'refreshToken';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshTokenRequest object, {
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
    required RefreshTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refreshToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefreshTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshTokenRequestBuilder();
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

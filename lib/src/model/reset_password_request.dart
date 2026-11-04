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

part 'reset_password_request.g.dart';

/// Reset password request.
///
/// Properties:
/// * [resetToken] - The reset token to verify
/// * [password] - The new password to set
@BuiltValue()
abstract class ResetPasswordRequest implements Built<ResetPasswordRequest, ResetPasswordRequestBuilder> {
  /// The reset token to verify
  @BuiltValueField(wireName: r'resetToken')
  String? get resetToken;

  /// The new password to set
  @BuiltValueField(wireName: r'password')
  String? get password;

  ResetPasswordRequest._();

  factory ResetPasswordRequest([void updates(ResetPasswordRequestBuilder b)]) = _$ResetPasswordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResetPasswordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResetPasswordRequest> get serializer => _$ResetPasswordRequestSerializer();
}

class _$ResetPasswordRequestSerializer implements PrimitiveSerializer<ResetPasswordRequest> {
  @override
  final Iterable<Type> types = const [ResetPasswordRequest, _$ResetPasswordRequest];

  @override
  final String wireName = r'ResetPasswordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResetPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resetToken != null) {
      yield r'resetToken';
      yield serializers.serialize(
        object.resetToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResetPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResetPasswordRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resetToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resetToken = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResetPasswordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetPasswordRequestBuilder();
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



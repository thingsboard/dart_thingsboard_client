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

part 'reset_password_email_request.g.dart';

/// The JSON object representing the reset password email request.
///
/// Properties:
/// * [email] - The email of the user
@BuiltValue()
abstract class ResetPasswordEmailRequest
    implements
        Built<ResetPasswordEmailRequest, ResetPasswordEmailRequestBuilder> {
  /// The email of the user
  @BuiltValueField(wireName: r'email')
  String? get email;

  ResetPasswordEmailRequest._();

  factory ResetPasswordEmailRequest([
    void updates(ResetPasswordEmailRequestBuilder b),
  ]) = _$ResetPasswordEmailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResetPasswordEmailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResetPasswordEmailRequest> get serializer =>
      _$ResetPasswordEmailRequestSerializer();
}

class _$ResetPasswordEmailRequestSerializer
    implements PrimitiveSerializer<ResetPasswordEmailRequest> {
  @override
  final Iterable<Type> types = const [
    ResetPasswordEmailRequest,
    _$ResetPasswordEmailRequest,
  ];

  @override
  final String wireName = r'ResetPasswordEmailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResetPasswordEmailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResetPasswordEmailRequest object, {
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
    required ResetPasswordEmailRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResetPasswordEmailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetPasswordEmailRequestBuilder();
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

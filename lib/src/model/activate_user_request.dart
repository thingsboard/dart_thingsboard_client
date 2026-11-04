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

part 'activate_user_request.g.dart';

/// Activate user request.
///
/// Properties:
/// * [activateToken] - The activate token to verify
/// * [password] - The new password to set
@BuiltValue()
abstract class ActivateUserRequest
    implements Built<ActivateUserRequest, ActivateUserRequestBuilder> {
  /// The activate token to verify
  @BuiltValueField(wireName: r'activateToken')
  String? get activateToken;

  /// The new password to set
  @BuiltValueField(wireName: r'password')
  String? get password;

  ActivateUserRequest._();

  factory ActivateUserRequest([void updates(ActivateUserRequestBuilder b)]) =
      _$ActivateUserRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivateUserRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivateUserRequest> get serializer =>
      _$ActivateUserRequestSerializer();
}

class _$ActivateUserRequestSerializer
    implements PrimitiveSerializer<ActivateUserRequest> {
  @override
  final Iterable<Type> types = const [
    ActivateUserRequest,
    _$ActivateUserRequest,
  ];

  @override
  final String wireName = r'ActivateUserRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivateUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.activateToken != null) {
      yield r'activateToken';
      yield serializers.serialize(
        object.activateToken,
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
    ActivateUserRequest object, {
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
    required ActivateUserRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activateToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.activateToken = valueDes;
          break;
        case r'password':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  ActivateUserRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivateUserRequestBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/platform_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_request.g.dart';

/// A JSON value representing the signup request.
///
/// Properties:
/// * [fields] - List of sign-up form fields
/// * [recaptchaResponse] - Response from reCAPTCHA validation
/// * [pkgName] - For mobile apps only. Mobile app package name
/// * [platform] - For mobile apps only. Mobile app package platform
/// * [appSecret] - For mobile apps only. Mobile app secret
@BuiltValue()
abstract class SignUpRequest implements Built<SignUpRequest, SignUpRequestBuilder> {
  /// List of sign-up form fields
  @BuiltValueField(wireName: r'fields')
  BuiltMap<String, String>? get fields;

  /// Response from reCAPTCHA validation
  @BuiltValueField(wireName: r'recaptchaResponse')
  String? get recaptchaResponse;

  /// For mobile apps only. Mobile app package name
  @BuiltValueField(wireName: r'pkgName')
  String? get pkgName;

  /// For mobile apps only. Mobile app package platform
  @BuiltValueField(wireName: r'platform')
  PlatformType? get platform;
  // enum platformEnum {  WEB,  ANDROID,  IOS,  };

  /// For mobile apps only. Mobile app secret
  @BuiltValueField(wireName: r'appSecret')
  String? get appSecret;

  SignUpRequest._();

  factory SignUpRequest([void updates(SignUpRequestBuilder b)]) = _$SignUpRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignUpRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignUpRequest> get serializer => _$SignUpRequestSerializer();
}

class _$SignUpRequestSerializer implements PrimitiveSerializer<SignUpRequest> {
  @override
  final Iterable<Type> types = const [SignUpRequest, _$SignUpRequest];

  @override
  final String wireName = r'SignUpRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.recaptchaResponse != null) {
      yield r'recaptchaResponse';
      yield serializers.serialize(
        object.recaptchaResponse,
        specifiedType: const FullType(String),
      );
    }
    if (object.pkgName != null) {
      yield r'pkgName';
      yield serializers.serialize(
        object.pkgName,
        specifiedType: const FullType(String),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(PlatformType),
      );
    }
    if (object.appSecret != null) {
      yield r'appSecret';
      yield serializers.serialize(
        object.appSecret,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignUpRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'recaptchaResponse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recaptchaResponse = valueDes;
          break;
        case r'pkgName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pkgName = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PlatformType),
          ) as PlatformType?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        case r'appSecret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appSecret = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignUpRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpRequestBuilder();
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



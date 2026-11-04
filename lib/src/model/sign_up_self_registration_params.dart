// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sign_up_field.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/captcha_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_self_registration_params.g.dart';

/// SignUpSelfRegistrationParams
///
/// Properties:
/// * [title] 
/// * [captcha] 
/// * [fields] 
/// * [showPrivacyPolicy] 
/// * [showTermsOfUse] 
@BuiltValue()
abstract class SignUpSelfRegistrationParams implements Built<SignUpSelfRegistrationParams, SignUpSelfRegistrationParamsBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'captcha')
  CaptchaParams? get captcha;

  @BuiltValueField(wireName: r'fields')
  BuiltList<SignUpField>? get fields;

  @BuiltValueField(wireName: r'showPrivacyPolicy')
  bool? get showPrivacyPolicy;

  @BuiltValueField(wireName: r'showTermsOfUse')
  bool? get showTermsOfUse;

  SignUpSelfRegistrationParams._();

  factory SignUpSelfRegistrationParams([void updates(SignUpSelfRegistrationParamsBuilder b)]) = _$SignUpSelfRegistrationParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignUpSelfRegistrationParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignUpSelfRegistrationParams> get serializer => _$SignUpSelfRegistrationParamsSerializer();
}

class _$SignUpSelfRegistrationParamsSerializer implements PrimitiveSerializer<SignUpSelfRegistrationParams> {
  @override
  final Iterable<Type> types = const [SignUpSelfRegistrationParams, _$SignUpSelfRegistrationParams];

  @override
  final String wireName = r'SignUpSelfRegistrationParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignUpSelfRegistrationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.captcha != null) {
      yield r'captcha';
      yield serializers.serialize(
        object.captcha,
        specifiedType: const FullType(CaptchaParams),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(SignUpField)]),
      );
    }
    if (object.showPrivacyPolicy != null) {
      yield r'showPrivacyPolicy';
      yield serializers.serialize(
        object.showPrivacyPolicy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showTermsOfUse != null) {
      yield r'showTermsOfUse';
      yield serializers.serialize(
        object.showTermsOfUse,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignUpSelfRegistrationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignUpSelfRegistrationParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CaptchaParams),
          ) as CaptchaParams?;
          if (valueDes == null) continue;
          result.captcha = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SignUpField)]),
          ) as BuiltList<SignUpField>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'showPrivacyPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showPrivacyPolicy = valueDes;
          break;
        case r'showTermsOfUse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showTermsOfUse = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignUpSelfRegistrationParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpSelfRegistrationParamsBuilder();
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



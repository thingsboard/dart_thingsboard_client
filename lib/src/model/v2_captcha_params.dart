// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/captcha_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_captcha_params.g.dart';

/// V2CaptchaParams
///
/// Properties:
/// * [version]
/// * [siteKey] - Captcha site key for 'I'm not a robot' validation
/// * [logActionName] - Optional action name used for logging (for captcha version 'v3' and 'enterprise')
/// * [secretKey] - Secret key to validate the Captcha. Should match the Captcha Site Key.
@BuiltValue()
abstract class V2CaptchaParams
    implements CaptchaParams, Built<V2CaptchaParams, V2CaptchaParamsBuilder> {
  /// Captcha site key for 'I'm not a robot' validation
  @BuiltValueField(wireName: r'siteKey')
  String? get siteKey;

  /// Optional action name used for logging (for captcha version 'v3' and 'enterprise')
  @BuiltValueField(wireName: r'logActionName')
  String? get logActionName;

  /// Secret key to validate the Captcha. Should match the Captcha Site Key.
  @BuiltValueField(wireName: r'secretKey')
  String? get secretKey;

  V2CaptchaParams._();

  factory V2CaptchaParams([void updates(V2CaptchaParamsBuilder b)]) =
      _$V2CaptchaParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2CaptchaParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2CaptchaParams> get serializer =>
      _$V2CaptchaParamsSerializer();
}

class _$V2CaptchaParamsSerializer
    implements PrimitiveSerializer<V2CaptchaParams> {
  @override
  final Iterable<Type> types = const [V2CaptchaParams, _$V2CaptchaParams];

  @override
  final String wireName = r'V2CaptchaParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2CaptchaParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.siteKey != null) {
      yield r'siteKey';
      yield serializers.serialize(
        object.siteKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.logActionName != null) {
      yield r'logActionName';
      yield serializers.serialize(
        object.logActionName,
        specifiedType: const FullType(String),
      );
    }
    if (object.secretKey != null) {
      yield r'secretKey';
      yield serializers.serialize(
        object.secretKey,
        specifiedType: const FullType(String),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    V2CaptchaParams object, {
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
    required V2CaptchaParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'siteKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.siteKey = valueDes;
          break;
        case r'logActionName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.logActionName = valueDes;
          break;
        case r'secretKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.secretKey = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2CaptchaParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2CaptchaParamsBuilder();
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

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

part 'enterprise_captcha_params.g.dart';

/// EnterpriseCaptchaParams
///
/// Properties:
/// * [version] 
/// * [projectId] - Your Google Cloud project ID
/// * [serviceAccountCredentials] - Service account credentials
/// * [serviceAccountCredentialsFileName] - Service account credentials file name
/// * [androidKey] - The reCAPTCHA key associated with android app.
/// * [iosKey] - The reCAPTCHA key associated with iOS app.
/// * [logActionName] - Optional action name used for logging
@BuiltValue()
abstract class EnterpriseCaptchaParams implements CaptchaParams, Built<EnterpriseCaptchaParams, EnterpriseCaptchaParamsBuilder> {
  /// Optional action name used for logging
  @BuiltValueField(wireName: r'logActionName')
  String? get logActionName;

  /// The reCAPTCHA key associated with android app.
  @BuiltValueField(wireName: r'androidKey')
  String? get androidKey;

  /// Service account credentials
  @BuiltValueField(wireName: r'serviceAccountCredentials')
  String? get serviceAccountCredentials;

  /// The reCAPTCHA key associated with iOS app.
  @BuiltValueField(wireName: r'iosKey')
  String? get iosKey;

  /// Your Google Cloud project ID
  @BuiltValueField(wireName: r'projectId')
  String? get projectId;

  /// Service account credentials file name
  @BuiltValueField(wireName: r'serviceAccountCredentialsFileName')
  String? get serviceAccountCredentialsFileName;

  EnterpriseCaptchaParams._();

  factory EnterpriseCaptchaParams([void updates(EnterpriseCaptchaParamsBuilder b)]) = _$EnterpriseCaptchaParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnterpriseCaptchaParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnterpriseCaptchaParams> get serializer => _$EnterpriseCaptchaParamsSerializer();
}

class _$EnterpriseCaptchaParamsSerializer implements PrimitiveSerializer<EnterpriseCaptchaParams> {
  @override
  final Iterable<Type> types = const [EnterpriseCaptchaParams, _$EnterpriseCaptchaParams];

  @override
  final String wireName = r'EnterpriseCaptchaParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnterpriseCaptchaParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.logActionName != null) {
      yield r'logActionName';
      yield serializers.serialize(
        object.logActionName,
        specifiedType: const FullType(String),
      );
    }
    if (object.androidKey != null) {
      yield r'androidKey';
      yield serializers.serialize(
        object.androidKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceAccountCredentials != null) {
      yield r'serviceAccountCredentials';
      yield serializers.serialize(
        object.serviceAccountCredentials,
        specifiedType: const FullType(String),
      );
    }
    if (object.iosKey != null) {
      yield r'iosKey';
      yield serializers.serialize(
        object.iosKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectId != null) {
      yield r'projectId';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(String),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.serviceAccountCredentialsFileName != null) {
      yield r'serviceAccountCredentialsFileName';
      yield serializers.serialize(
        object.serviceAccountCredentialsFileName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EnterpriseCaptchaParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnterpriseCaptchaParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'logActionName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logActionName = valueDes;
          break;
        case r'androidKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.androidKey = valueDes;
          break;
        case r'serviceAccountCredentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serviceAccountCredentials = valueDes;
          break;
        case r'iosKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.iosKey = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectId = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'serviceAccountCredentialsFileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serviceAccountCredentialsFileName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnterpriseCaptchaParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnterpriseCaptchaParamsBuilder();
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



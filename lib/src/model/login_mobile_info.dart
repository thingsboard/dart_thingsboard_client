// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/store_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/sign_up_self_registration_params.dart';
import 'package:thingsboard_client/src/model/o_auth2_client_login_info.dart';
import 'package:thingsboard_client/src/model/mobile_app_version_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_mobile_info.g.dart';

/// LoginMobileInfo
///
/// Properties:
/// * [oAuth2ClientLoginInfos]
/// * [selfRegistrationParams]
/// * [storeInfo]
/// * [versionInfo]
@BuiltValue()
abstract class LoginMobileInfo
    implements Built<LoginMobileInfo, LoginMobileInfoBuilder> {
  @BuiltValueField(wireName: r'oAuth2ClientLoginInfos')
  BuiltList<OAuth2ClientLoginInfo>? get oAuth2ClientLoginInfos;

  @BuiltValueField(wireName: r'selfRegistrationParams')
  SignUpSelfRegistrationParams? get selfRegistrationParams;

  @BuiltValueField(wireName: r'storeInfo')
  StoreInfo? get storeInfo;

  @BuiltValueField(wireName: r'versionInfo')
  MobileAppVersionInfo? get versionInfo;

  LoginMobileInfo._();

  factory LoginMobileInfo([void updates(LoginMobileInfoBuilder b)]) =
      _$LoginMobileInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginMobileInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginMobileInfo> get serializer =>
      _$LoginMobileInfoSerializer();
}

class _$LoginMobileInfoSerializer
    implements PrimitiveSerializer<LoginMobileInfo> {
  @override
  final Iterable<Type> types = const [LoginMobileInfo, _$LoginMobileInfo];

  @override
  final String wireName = r'LoginMobileInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginMobileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.oAuth2ClientLoginInfos != null) {
      yield r'oAuth2ClientLoginInfos';
      yield serializers.serialize(
        object.oAuth2ClientLoginInfos,
        specifiedType: const FullType(BuiltList, [
          FullType(OAuth2ClientLoginInfo),
        ]),
      );
    }
    if (object.selfRegistrationParams != null) {
      yield r'selfRegistrationParams';
      yield serializers.serialize(
        object.selfRegistrationParams,
        specifiedType: const FullType(SignUpSelfRegistrationParams),
      );
    }
    if (object.storeInfo != null) {
      yield r'storeInfo';
      yield serializers.serialize(
        object.storeInfo,
        specifiedType: const FullType(StoreInfo),
      );
    }
    if (object.versionInfo != null) {
      yield r'versionInfo';
      yield serializers.serialize(
        object.versionInfo,
        specifiedType: const FullType(MobileAppVersionInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginMobileInfo object, {
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
    required LoginMobileInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'oAuth2ClientLoginInfos':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(OAuth2ClientLoginInfo),
                    ]),
                  )
                  as BuiltList<OAuth2ClientLoginInfo>?;
          if (valueDes == null) continue;
          result.oAuth2ClientLoginInfos.replace(valueDes);
          break;
        case r'selfRegistrationParams':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SignUpSelfRegistrationParams,
                    ),
                  )
                  as SignUpSelfRegistrationParams?;
          if (valueDes == null) continue;
          result.selfRegistrationParams.replace(valueDes);
          break;
        case r'storeInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StoreInfo),
                  )
                  as StoreInfo?;
          if (valueDes == null) continue;
          result.storeInfo.replace(valueDes);
          break;
        case r'versionInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MobileAppVersionInfo,
                    ),
                  )
                  as MobileAppVersionInfo?;
          if (valueDes == null) continue;
          result.versionInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginMobileInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginMobileInfoBuilder();
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

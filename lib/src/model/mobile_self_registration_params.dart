// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sign_up_field.dart';
import 'package:thingsboard_client/src/model/custom_menu_id.dart';
import 'package:thingsboard_client/src/model/group_permission.dart';
import 'package:thingsboard_client/src/model/self_registration_params.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/captcha_params.dart';
import 'package:thingsboard_client/src/model/default_dashboard_params.dart';
import 'package:thingsboard_client/src/model/notification_target_id.dart';
import 'package:thingsboard_client/src/model/mobile_redirect_params.dart';
import 'package:thingsboard_client/src/model/self_registration_type.dart';
import 'package:thingsboard_client/src/model/home_dashboard_params.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mobile_self_registration_params.g.dart';

/// MobileSelfRegistrationParams
///
/// Properties:
/// * [type]
/// * [enabled]
/// * [title]
/// * [captcha]
/// * [permissions]
/// * [notificationRecipient]
/// * [signUpFields]
/// * [customerTitlePrefix]
/// * [showPrivacyPolicy]
/// * [showTermsOfUse]
/// * [defaultDashboard]
/// * [homeDashboard]
/// * [customerGroupId]
/// * [customMenuId]
/// * [privacyPolicy] - Privacy policy text. Supports HTML.
/// * [redirect] - Mobile redirect params.
/// * [termsOfUse] - Terms of User text. Supports HTML.
@BuiltValue()
abstract class MobileSelfRegistrationParams
    implements
        SelfRegistrationParams,
        Built<
          MobileSelfRegistrationParams,
          MobileSelfRegistrationParamsBuilder
        > {
  /// Mobile redirect params.
  @BuiltValueField(wireName: r'redirect')
  MobileRedirectParams get redirect;

  /// Terms of User text. Supports HTML.
  @BuiltValueField(wireName: r'termsOfUse')
  String? get termsOfUse;

  /// Privacy policy text. Supports HTML.
  @BuiltValueField(wireName: r'privacyPolicy')
  String? get privacyPolicy;

  MobileSelfRegistrationParams._();

  factory MobileSelfRegistrationParams([
    void updates(MobileSelfRegistrationParamsBuilder b),
  ]) = _$MobileSelfRegistrationParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileSelfRegistrationParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileSelfRegistrationParams> get serializer =>
      _$MobileSelfRegistrationParamsSerializer();
}

class _$MobileSelfRegistrationParamsSerializer
    implements PrimitiveSerializer<MobileSelfRegistrationParams> {
  @override
  final Iterable<Type> types = const [
    MobileSelfRegistrationParams,
    _$MobileSelfRegistrationParams,
  ];

  @override
  final String wireName = r'MobileSelfRegistrationParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileSelfRegistrationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'redirect';
    yield serializers.serialize(
      object.redirect,
      specifiedType: const FullType(MobileRedirectParams),
    );
    if (object.customerGroupId != null) {
      yield r'customerGroupId';
      yield serializers.serialize(
        object.customerGroupId,
        specifiedType: const FullType(EntityGroupId),
      );
    }
    if (object.customMenuId != null) {
      yield r'customMenuId';
      yield serializers.serialize(
        object.customMenuId,
        specifiedType: const FullType(CustomMenuId),
      );
    }
    if (object.privacyPolicy != null) {
      yield r'privacyPolicy';
      yield serializers.serialize(
        object.privacyPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.signUpFields != null) {
      yield r'signUpFields';
      yield serializers.serialize(
        object.signUpFields,
        specifiedType: const FullType(BuiltList, [FullType(SignUpField)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SelfRegistrationType),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultDashboard != null) {
      yield r'defaultDashboard';
      yield serializers.serialize(
        object.defaultDashboard,
        specifiedType: const FullType(DefaultDashboardParams),
      );
    }
    if (object.homeDashboard != null) {
      yield r'homeDashboard';
      yield serializers.serialize(
        object.homeDashboard,
        specifiedType: const FullType(HomeDashboardParams),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notificationRecipient != null) {
      yield r'notificationRecipient';
      yield serializers.serialize(
        object.notificationRecipient,
        specifiedType: const FullType(NotificationTargetId),
      );
    }
    if (object.termsOfUse != null) {
      yield r'termsOfUse';
      yield serializers.serialize(
        object.termsOfUse,
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
    if (object.showPrivacyPolicy != null) {
      yield r'showPrivacyPolicy';
      yield serializers.serialize(
        object.showPrivacyPolicy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(BuiltList, [FullType(GroupPermission)]),
      );
    }
    if (object.showTermsOfUse != null) {
      yield r'showTermsOfUse';
      yield serializers.serialize(
        object.showTermsOfUse,
        specifiedType: const FullType(bool),
      );
    }
    if (object.customerTitlePrefix != null) {
      yield r'customerTitlePrefix';
      yield serializers.serialize(
        object.customerTitlePrefix,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileSelfRegistrationParams object, {
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
    required MobileSelfRegistrationParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'redirect':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MobileRedirectParams),
                  )
                  as MobileRedirectParams;
          result.redirect.replace(valueDes);
          break;
        case r'customerGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityGroupId),
                  )
                  as EntityGroupId?;
          if (valueDes == null) continue;
          result.customerGroupId.replace(valueDes);
          break;
        case r'customMenuId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomMenuId),
                  )
                  as CustomMenuId?;
          if (valueDes == null) continue;
          result.customMenuId.replace(valueDes);
          break;
        case r'privacyPolicy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.privacyPolicy = valueDes;
          break;
        case r'signUpFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SignUpField),
                    ]),
                  )
                  as BuiltList<SignUpField>?;
          if (valueDes == null) continue;
          result.signUpFields.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SelfRegistrationType),
                  )
                  as SelfRegistrationType;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'defaultDashboard':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DefaultDashboardParams,
                    ),
                  )
                  as DefaultDashboardParams?;
          if (valueDes == null) continue;
          result.defaultDashboard.replace(valueDes);
          break;
        case r'homeDashboard':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(HomeDashboardParams),
                  )
                  as HomeDashboardParams?;
          if (valueDes == null) continue;
          result.homeDashboard.replace(valueDes);
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'notificationRecipient':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationTargetId,
                    ),
                  )
                  as NotificationTargetId?;
          if (valueDes == null) continue;
          result.notificationRecipient.replace(valueDes);
          break;
        case r'termsOfUse':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.termsOfUse = valueDes;
          break;
        case r'captcha':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CaptchaParams),
                  )
                  as CaptchaParams?;
          if (valueDes == null) continue;
          result.captcha = valueDes;
          break;
        case r'showPrivacyPolicy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showPrivacyPolicy = valueDes;
          break;
        case r'permissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(GroupPermission),
                    ]),
                  )
                  as BuiltList<GroupPermission>?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        case r'showTermsOfUse':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTermsOfUse = valueDes;
          break;
        case r'customerTitlePrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.customerTitlePrefix = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileSelfRegistrationParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileSelfRegistrationParamsBuilder();
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

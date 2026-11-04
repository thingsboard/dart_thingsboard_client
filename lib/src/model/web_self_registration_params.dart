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
import 'package:thingsboard_client/src/model/self_registration_type.dart';
import 'package:thingsboard_client/src/model/domain_id.dart';
import 'package:thingsboard_client/src/model/home_dashboard_params.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_self_registration_params.g.dart';

/// WebSelfRegistrationParams
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
/// * [domainId] - Domain name for self registration URL. Typically this matches the domain name from the Login White Labeling page.
/// * [privacyPolicy] - Privacy policy text. Supports HTML.
/// * [termsOfUse] - Terms of User text. Supports HTML.
@BuiltValue()
abstract class WebSelfRegistrationParams
    implements
        SelfRegistrationParams,
        Built<WebSelfRegistrationParams, WebSelfRegistrationParamsBuilder> {
  /// Terms of User text. Supports HTML.
  @BuiltValueField(wireName: r'termsOfUse')
  String? get termsOfUse;

  /// Privacy policy text. Supports HTML.
  @BuiltValueField(wireName: r'privacyPolicy')
  String? get privacyPolicy;

  /// Domain name for self registration URL. Typically this matches the domain name from the Login White Labeling page.
  @BuiltValueField(wireName: r'domainId')
  DomainId get domainId;

  WebSelfRegistrationParams._();

  factory WebSelfRegistrationParams([
    void updates(WebSelfRegistrationParamsBuilder b),
  ]) = _$WebSelfRegistrationParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebSelfRegistrationParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebSelfRegistrationParams> get serializer =>
      _$WebSelfRegistrationParamsSerializer();
}

class _$WebSelfRegistrationParamsSerializer
    implements PrimitiveSerializer<WebSelfRegistrationParams> {
  @override
  final Iterable<Type> types = const [
    WebSelfRegistrationParams,
    _$WebSelfRegistrationParams,
  ];

  @override
  final String wireName = r'WebSelfRegistrationParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebSelfRegistrationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'domainId';
    yield serializers.serialize(
      object.domainId,
      specifiedType: const FullType(DomainId),
    );
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
    WebSelfRegistrationParams object, {
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
    required WebSelfRegistrationParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'domainId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DomainId),
                  )
                  as DomainId;
          result.domainId.replace(valueDes);
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
  WebSelfRegistrationParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebSelfRegistrationParamsBuilder();
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

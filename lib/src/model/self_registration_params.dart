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
import 'package:thingsboard_client/src/model/web_self_registration_params.dart';
import 'package:thingsboard_client/src/model/group_permission.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/captcha_params.dart';
import 'package:thingsboard_client/src/model/default_dashboard_params.dart';
import 'package:thingsboard_client/src/model/notification_target_id.dart';
import 'package:thingsboard_client/src/model/self_registration_type.dart';
import 'package:thingsboard_client/src/model/mobile_self_registration_params.dart';
import 'package:thingsboard_client/src/model/home_dashboard_params.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'self_registration_params.g.dart';

/// SelfRegistrationParams
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
@BuiltValue(instantiable: false)
abstract class SelfRegistrationParams  {
  @BuiltValueField(wireName: r'type')
  SelfRegistrationType get type;
  // enum typeEnum {  WEB,  MOBILE,  };

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'captcha')
  CaptchaParams? get captcha;

  @BuiltValueField(wireName: r'permissions')
  BuiltList<GroupPermission>? get permissions;

  @BuiltValueField(wireName: r'notificationRecipient')
  NotificationTargetId? get notificationRecipient;

  @BuiltValueField(wireName: r'signUpFields')
  BuiltList<SignUpField>? get signUpFields;

  @BuiltValueField(wireName: r'customerTitlePrefix')
  String? get customerTitlePrefix;

  @BuiltValueField(wireName: r'showPrivacyPolicy')
  bool? get showPrivacyPolicy;

  @BuiltValueField(wireName: r'showTermsOfUse')
  bool? get showTermsOfUse;

  @BuiltValueField(wireName: r'defaultDashboard')
  DefaultDashboardParams? get defaultDashboard;

  @BuiltValueField(wireName: r'homeDashboard')
  HomeDashboardParams? get homeDashboard;

  @BuiltValueField(wireName: r'customerGroupId')
  EntityGroupId? get customerGroupId;

  @BuiltValueField(wireName: r'customMenuId')
  CustomMenuId? get customMenuId;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'MOBILE': MobileSelfRegistrationParams,
    r'WEB': WebSelfRegistrationParams,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<SelfRegistrationParams> get serializer => _$SelfRegistrationParamsSerializer();
}

extension SelfRegistrationParamsDiscriminatorExt on SelfRegistrationParams {
    String? get discriminatorValue {
        if (this is MobileSelfRegistrationParams) {
            return r'MOBILE';
        }
        if (this is WebSelfRegistrationParams) {
            return r'WEB';
        }
        return null;
    }
}
extension SelfRegistrationParamsBuilderDiscriminatorExt on SelfRegistrationParamsBuilder {
    String? get discriminatorValue {
        if (this is MobileSelfRegistrationParamsBuilder) {
            return r'MOBILE';
        }
        if (this is WebSelfRegistrationParamsBuilder) {
            return r'WEB';
        }
        return null;
    }
}

class _$SelfRegistrationParamsSerializer implements PrimitiveSerializer<SelfRegistrationParams> {
  @override
  final Iterable<Type> types = const [SelfRegistrationParams];

  @override
  final String wireName = r'SelfRegistrationParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelfRegistrationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SelfRegistrationType),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
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
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(BuiltList, [FullType(GroupPermission)]),
      );
    }
    if (object.notificationRecipient != null) {
      yield r'notificationRecipient';
      yield serializers.serialize(
        object.notificationRecipient,
        specifiedType: const FullType(NotificationTargetId),
      );
    }
    if (object.signUpFields != null) {
      yield r'signUpFields';
      yield serializers.serialize(
        object.signUpFields,
        specifiedType: const FullType(BuiltList, [FullType(SignUpField)]),
      );
    }
    if (object.customerTitlePrefix != null) {
      yield r'customerTitlePrefix';
      yield serializers.serialize(
        object.customerTitlePrefix,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SelfRegistrationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is MobileSelfRegistrationParams) {
      return serializers.serialize(object, specifiedType: FullType(MobileSelfRegistrationParams))!;
    }
    if (object is WebSelfRegistrationParams) {
      return serializers.serialize(object, specifiedType: FullType(WebSelfRegistrationParams))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SelfRegistrationParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(SelfRegistrationParams.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'MOBILE':
        return serializers.deserialize(serialized, specifiedType: FullType(MobileSelfRegistrationParams)) as MobileSelfRegistrationParams;
      case r'WEB':
        return serializers.deserialize(serialized, specifiedType: FullType(WebSelfRegistrationParams)) as WebSelfRegistrationParams;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($SelfRegistrationParams)) as $SelfRegistrationParams;
    }
  }
}


/// a concrete implementation of [SelfRegistrationParams], since [SelfRegistrationParams] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SelfRegistrationParams implements SelfRegistrationParams, Built<$SelfRegistrationParams, $SelfRegistrationParamsBuilder> {
  $SelfRegistrationParams._();

  factory $SelfRegistrationParams([void Function($SelfRegistrationParamsBuilder)? updates]) = _$$SelfRegistrationParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SelfRegistrationParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SelfRegistrationParams> get serializer => _$$SelfRegistrationParamsSerializer();
}

class _$$SelfRegistrationParamsSerializer implements PrimitiveSerializer<$SelfRegistrationParams> {
  @override
  final Iterable<Type> types = const [$SelfRegistrationParams, _$$SelfRegistrationParams];

  @override
  final String wireName = r'$SelfRegistrationParams';

  @override
  Object serialize(
    Serializers serializers,
    $SelfRegistrationParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SelfRegistrationParams))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SelfRegistrationParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SelfRegistrationType),
          ) as SelfRegistrationType;
          result.type = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
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
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GroupPermission)]),
          ) as BuiltList<GroupPermission>?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        case r'notificationRecipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationTargetId),
          ) as NotificationTargetId?;
          if (valueDes == null) continue;
          result.notificationRecipient.replace(valueDes);
          break;
        case r'signUpFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SignUpField)]),
          ) as BuiltList<SignUpField>?;
          if (valueDes == null) continue;
          result.signUpFields.replace(valueDes);
          break;
        case r'customerTitlePrefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerTitlePrefix = valueDes;
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
        case r'defaultDashboard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DefaultDashboardParams),
          ) as DefaultDashboardParams?;
          if (valueDes == null) continue;
          result.defaultDashboard.replace(valueDes);
          break;
        case r'homeDashboard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HomeDashboardParams),
          ) as HomeDashboardParams?;
          if (valueDes == null) continue;
          result.homeDashboard.replace(valueDes);
          break;
        case r'customerGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityGroupId),
          ) as EntityGroupId?;
          if (valueDes == null) continue;
          result.customerGroupId.replace(valueDes);
          break;
        case r'customMenuId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomMenuId),
          ) as CustomMenuId?;
          if (valueDes == null) continue;
          result.customMenuId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SelfRegistrationParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SelfRegistrationParamsBuilder();
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


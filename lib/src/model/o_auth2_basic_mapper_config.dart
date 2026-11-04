// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tenant_name_strategy_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth2_basic_mapper_config.g.dart';

/// OAuth2BasicMapperConfig
///
/// Properties:
/// * [emailAttributeKey] - Email attribute key of OAuth2 principal attributes. Must be specified for BASIC mapper type and cannot be specified for GITHUB type
/// * [firstNameAttributeKey] - First name attribute key
/// * [lastNameAttributeKey] - Last name attribute key
/// * [tenantNameStrategy] - Tenant naming strategy. For DOMAIN type, domain for tenant name will be taken from the email (substring before '@')
/// * [tenantNamePattern] - Tenant name pattern for CUSTOM naming strategy. OAuth2 attributes in the pattern can be used by enclosing attribute key in '%{' and '}'
/// * [customerNamePattern] - Customer name pattern. When creating a user on the first OAuth2 log in, if specified, customer name will be used to create or find existing customer in the platform and assign customerId to the user
/// * [defaultDashboardName] - Name of the tenant's dashboard to set as default dashboard for newly created user
/// * [alwaysFullScreen] - Whether default dashboard should be open in full screen
/// * [parentCustomerNamePattern] 
/// * [userGroupsNamePattern] 
@BuiltValue()
abstract class OAuth2BasicMapperConfig implements Built<OAuth2BasicMapperConfig, OAuth2BasicMapperConfigBuilder> {
  /// Email attribute key of OAuth2 principal attributes. Must be specified for BASIC mapper type and cannot be specified for GITHUB type
  @BuiltValueField(wireName: r'emailAttributeKey')
  String? get emailAttributeKey;

  /// First name attribute key
  @BuiltValueField(wireName: r'firstNameAttributeKey')
  String? get firstNameAttributeKey;

  /// Last name attribute key
  @BuiltValueField(wireName: r'lastNameAttributeKey')
  String? get lastNameAttributeKey;

  /// Tenant naming strategy. For DOMAIN type, domain for tenant name will be taken from the email (substring before '@')
  @BuiltValueField(wireName: r'tenantNameStrategy')
  TenantNameStrategyType get tenantNameStrategy;
  // enum tenantNameStrategyEnum {  DOMAIN,  EMAIL,  CUSTOM,  };

  /// Tenant name pattern for CUSTOM naming strategy. OAuth2 attributes in the pattern can be used by enclosing attribute key in '%{' and '}'
  @BuiltValueField(wireName: r'tenantNamePattern')
  String? get tenantNamePattern;

  /// Customer name pattern. When creating a user on the first OAuth2 log in, if specified, customer name will be used to create or find existing customer in the platform and assign customerId to the user
  @BuiltValueField(wireName: r'customerNamePattern')
  String? get customerNamePattern;

  /// Name of the tenant's dashboard to set as default dashboard for newly created user
  @BuiltValueField(wireName: r'defaultDashboardName')
  String? get defaultDashboardName;

  /// Whether default dashboard should be open in full screen
  @BuiltValueField(wireName: r'alwaysFullScreen')
  bool? get alwaysFullScreen;

  @BuiltValueField(wireName: r'parentCustomerNamePattern')
  String? get parentCustomerNamePattern;

  @BuiltValueField(wireName: r'userGroupsNamePattern')
  BuiltList<String>? get userGroupsNamePattern;

  OAuth2BasicMapperConfig._();

  factory OAuth2BasicMapperConfig([void updates(OAuth2BasicMapperConfigBuilder b)]) = _$OAuth2BasicMapperConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2BasicMapperConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2BasicMapperConfig> get serializer => _$OAuth2BasicMapperConfigSerializer();
}

class _$OAuth2BasicMapperConfigSerializer implements PrimitiveSerializer<OAuth2BasicMapperConfig> {
  @override
  final Iterable<Type> types = const [OAuth2BasicMapperConfig, _$OAuth2BasicMapperConfig];

  @override
  final String wireName = r'OAuth2BasicMapperConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2BasicMapperConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.emailAttributeKey != null) {
      yield r'emailAttributeKey';
      yield serializers.serialize(
        object.emailAttributeKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstNameAttributeKey != null) {
      yield r'firstNameAttributeKey';
      yield serializers.serialize(
        object.firstNameAttributeKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastNameAttributeKey != null) {
      yield r'lastNameAttributeKey';
      yield serializers.serialize(
        object.lastNameAttributeKey,
        specifiedType: const FullType(String),
      );
    }
    yield r'tenantNameStrategy';
    yield serializers.serialize(
      object.tenantNameStrategy,
      specifiedType: const FullType(TenantNameStrategyType),
    );
    if (object.tenantNamePattern != null) {
      yield r'tenantNamePattern';
      yield serializers.serialize(
        object.tenantNamePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerNamePattern != null) {
      yield r'customerNamePattern';
      yield serializers.serialize(
        object.customerNamePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultDashboardName != null) {
      yield r'defaultDashboardName';
      yield serializers.serialize(
        object.defaultDashboardName,
        specifiedType: const FullType(String),
      );
    }
    if (object.alwaysFullScreen != null) {
      yield r'alwaysFullScreen';
      yield serializers.serialize(
        object.alwaysFullScreen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.parentCustomerNamePattern != null) {
      yield r'parentCustomerNamePattern';
      yield serializers.serialize(
        object.parentCustomerNamePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.userGroupsNamePattern != null) {
      yield r'userGroupsNamePattern';
      yield serializers.serialize(
        object.userGroupsNamePattern,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2BasicMapperConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OAuth2BasicMapperConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'emailAttributeKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emailAttributeKey = valueDes;
          break;
        case r'firstNameAttributeKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstNameAttributeKey = valueDes;
          break;
        case r'lastNameAttributeKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastNameAttributeKey = valueDes;
          break;
        case r'tenantNameStrategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantNameStrategyType),
          ) as TenantNameStrategyType;
          result.tenantNameStrategy = valueDes;
          break;
        case r'tenantNamePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantNamePattern = valueDes;
          break;
        case r'customerNamePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerNamePattern = valueDes;
          break;
        case r'defaultDashboardName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultDashboardName = valueDes;
          break;
        case r'alwaysFullScreen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.alwaysFullScreen = valueDes;
          break;
        case r'parentCustomerNamePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentCustomerNamePattern = valueDes;
          break;
        case r'userGroupsNamePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.userGroupsNamePattern.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2BasicMapperConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2BasicMapperConfigBuilder();
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



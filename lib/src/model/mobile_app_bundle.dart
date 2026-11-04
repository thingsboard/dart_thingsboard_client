// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mobile_app_id.dart';
import 'package:thingsboard_client/src/model/mobile_self_registration_params.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/mobile_layout_config.dart';
import 'package:thingsboard_client/src/model/mobile_app_bundle_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mobile_app_bundle.g.dart';

/// A JSON value representing the Mobile Application Bundle.
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object with Tenant Id
/// * [title] - Application bundle title. Cannot be empty
/// * [description] - Application bundle description.
/// * [androidAppId] - Android application id
/// * [iosAppId] - IOS application id
/// * [layoutConfig] - Application layout configuration
/// * [selfRegistrationParams] - Application self registration configuration
/// * [oauth2Enabled] - Whether OAuth2 settings are enabled or not
/// * [name] - Mobile app bundle title
@BuiltValue()
abstract class MobileAppBundle implements Built<MobileAppBundle, MobileAppBundleBuilder> {
  @BuiltValueField(wireName: r'id')
  MobileAppBundleId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Application bundle title. Cannot be empty
  @BuiltValueField(wireName: r'title')
  String get title;

  /// Application bundle description.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Android application id
  @BuiltValueField(wireName: r'androidAppId')
  MobileAppId? get androidAppId;

  /// IOS application id
  @BuiltValueField(wireName: r'iosAppId')
  MobileAppId? get iosAppId;

  /// Application layout configuration
  @BuiltValueField(wireName: r'layoutConfig')
  MobileLayoutConfig? get layoutConfig;

  /// Application self registration configuration
  @BuiltValueField(wireName: r'selfRegistrationParams')
  MobileSelfRegistrationParams? get selfRegistrationParams;

  /// Whether OAuth2 settings are enabled or not
  @BuiltValueField(wireName: r'oauth2Enabled')
  bool? get oauth2Enabled;

  /// Mobile app bundle title
  @BuiltValueField(wireName: r'name')
  String? get name;

  MobileAppBundle._();

  factory MobileAppBundle([void updates(MobileAppBundleBuilder b)]) = _$MobileAppBundle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileAppBundleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileAppBundle> get serializer => _$MobileAppBundleSerializer();
}

class _$MobileAppBundleSerializer implements PrimitiveSerializer<MobileAppBundle> {
  @override
  final Iterable<Type> types = const [MobileAppBundle, _$MobileAppBundle];

  @override
  final String wireName = r'MobileAppBundle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileAppBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(MobileAppBundleId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.androidAppId != null) {
      yield r'androidAppId';
      yield serializers.serialize(
        object.androidAppId,
        specifiedType: const FullType(MobileAppId),
      );
    }
    if (object.iosAppId != null) {
      yield r'iosAppId';
      yield serializers.serialize(
        object.iosAppId,
        specifiedType: const FullType(MobileAppId),
      );
    }
    if (object.layoutConfig != null) {
      yield r'layoutConfig';
      yield serializers.serialize(
        object.layoutConfig,
        specifiedType: const FullType(MobileLayoutConfig),
      );
    }
    if (object.selfRegistrationParams != null) {
      yield r'selfRegistrationParams';
      yield serializers.serialize(
        object.selfRegistrationParams,
        specifiedType: const FullType(MobileSelfRegistrationParams),
      );
    }
    if (object.oauth2Enabled != null) {
      yield r'oauth2Enabled';
      yield serializers.serialize(
        object.oauth2Enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileAppBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MobileAppBundleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileAppBundleId),
          ) as MobileAppBundleId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'androidAppId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileAppId),
          ) as MobileAppId?;
          if (valueDes == null) continue;
          result.androidAppId.replace(valueDes);
          break;
        case r'iosAppId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileAppId),
          ) as MobileAppId?;
          if (valueDes == null) continue;
          result.iosAppId.replace(valueDes);
          break;
        case r'layoutConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileLayoutConfig),
          ) as MobileLayoutConfig?;
          if (valueDes == null) continue;
          result.layoutConfig.replace(valueDes);
          break;
        case r'selfRegistrationParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileSelfRegistrationParams),
          ) as MobileSelfRegistrationParams?;
          if (valueDes == null) continue;
          result.selfRegistrationParams.replace(valueDes);
          break;
        case r'oauth2Enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.oauth2Enabled = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileAppBundle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileAppBundleBuilder();
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



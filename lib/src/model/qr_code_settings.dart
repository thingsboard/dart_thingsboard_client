// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/qr_code_settings_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/mobile_app_bundle_id.dart';
import 'package:thingsboard_client/src/model/qr_code_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qr_code_settings.g.dart';

/// A JSON value representing the mobile apps configuration
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object with Tenant Id.
/// * [useSystemSettings] - Use settings from system level
/// * [useDefaultApp] - Type of application: true means use default Thingsboard app
/// * [mobileAppBundleId] - Mobile app bundle.
/// * [qrCodeConfig] - QR code config configuration.
/// * [androidEnabled] - Indicates if google play link is available
/// * [iosEnabled] - Indicates if apple store link is available
/// * [googlePlayLink] 
/// * [appStoreLink] 
@BuiltValue()
abstract class QrCodeSettings implements Built<QrCodeSettings, QrCodeSettingsBuilder> {
  @BuiltValueField(wireName: r'id')
  QrCodeSettingsId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Use settings from system level
  @BuiltValueField(wireName: r'useSystemSettings')
  bool? get useSystemSettings;

  /// Type of application: true means use default Thingsboard app
  @BuiltValueField(wireName: r'useDefaultApp')
  bool? get useDefaultApp;

  /// Mobile app bundle.
  @BuiltValueField(wireName: r'mobileAppBundleId')
  MobileAppBundleId? get mobileAppBundleId;

  /// QR code config configuration.
  @BuiltValueField(wireName: r'qrCodeConfig')
  QRCodeConfig get qrCodeConfig;

  /// Indicates if google play link is available
  @BuiltValueField(wireName: r'androidEnabled')
  bool? get androidEnabled;

  /// Indicates if apple store link is available
  @BuiltValueField(wireName: r'iosEnabled')
  bool? get iosEnabled;

  @BuiltValueField(wireName: r'googlePlayLink')
  String? get googlePlayLink;

  @BuiltValueField(wireName: r'appStoreLink')
  String? get appStoreLink;

  QrCodeSettings._();

  factory QrCodeSettings([void updates(QrCodeSettingsBuilder b)]) = _$QrCodeSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrCodeSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrCodeSettings> get serializer => _$QrCodeSettingsSerializer();
}

class _$QrCodeSettingsSerializer implements PrimitiveSerializer<QrCodeSettings> {
  @override
  final Iterable<Type> types = const [QrCodeSettings, _$QrCodeSettings];

  @override
  final String wireName = r'QrCodeSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrCodeSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(QrCodeSettingsId),
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
    if (object.useSystemSettings != null) {
      yield r'useSystemSettings';
      yield serializers.serialize(
        object.useSystemSettings,
        specifiedType: const FullType(bool),
      );
    }
    if (object.useDefaultApp != null) {
      yield r'useDefaultApp';
      yield serializers.serialize(
        object.useDefaultApp,
        specifiedType: const FullType(bool),
      );
    }
    if (object.mobileAppBundleId != null) {
      yield r'mobileAppBundleId';
      yield serializers.serialize(
        object.mobileAppBundleId,
        specifiedType: const FullType(MobileAppBundleId),
      );
    }
    yield r'qrCodeConfig';
    yield serializers.serialize(
      object.qrCodeConfig,
      specifiedType: const FullType(QRCodeConfig),
    );
    if (object.androidEnabled != null) {
      yield r'androidEnabled';
      yield serializers.serialize(
        object.androidEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.iosEnabled != null) {
      yield r'iosEnabled';
      yield serializers.serialize(
        object.iosEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.googlePlayLink != null) {
      yield r'googlePlayLink';
      yield serializers.serialize(
        object.googlePlayLink,
        specifiedType: const FullType(String),
      );
    }
    if (object.appStoreLink != null) {
      yield r'appStoreLink';
      yield serializers.serialize(
        object.appStoreLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrCodeSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrCodeSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(QrCodeSettingsId),
          ) as QrCodeSettingsId?;
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
        case r'useSystemSettings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.useSystemSettings = valueDes;
          break;
        case r'useDefaultApp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.useDefaultApp = valueDes;
          break;
        case r'mobileAppBundleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileAppBundleId),
          ) as MobileAppBundleId?;
          if (valueDes == null) continue;
          result.mobileAppBundleId.replace(valueDes);
          break;
        case r'qrCodeConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QRCodeConfig),
          ) as QRCodeConfig;
          result.qrCodeConfig.replace(valueDes);
          break;
        case r'androidEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.androidEnabled = valueDes;
          break;
        case r'iosEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.iosEnabled = valueDes;
          break;
        case r'googlePlayLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.googlePlayLink = valueDes;
          break;
        case r'appStoreLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appStoreLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrCodeSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrCodeSettingsBuilder();
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



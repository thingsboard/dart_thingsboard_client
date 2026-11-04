// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mobile_app_id.dart';
import 'package:thingsboard_client/src/model/store_info.dart';
import 'package:thingsboard_client/src/model/mobile_app_version_info.dart';
import 'package:thingsboard_client/src/model/platform_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/mobile_app_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mobile_app.g.dart';

/// A JSON value representing the Mobile Application.
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object with Tenant Id
/// * [pkgName] - Application package name. Cannot be empty
/// * [title] - Application title
/// * [appSecret] - Application secret. The length must be at least 16 characters
/// * [platformType] - Application platform type: ANDROID or IOS
/// * [status] - Application status: PUBLISHED, DEPRECATED, SUSPENDED, DRAFT
/// * [versionInfo] - Application version info
/// * [storeInfo] - Application store information
/// * [name] - Mobile app package name
@BuiltValue()
abstract class MobileApp implements Built<MobileApp, MobileAppBuilder> {
  @BuiltValueField(wireName: r'id')
  MobileAppId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Application package name. Cannot be empty
  @BuiltValueField(wireName: r'pkgName')
  String get pkgName;

  /// Application title
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Application secret. The length must be at least 16 characters
  @BuiltValueField(wireName: r'appSecret')
  String get appSecret;

  /// Application platform type: ANDROID or IOS
  @BuiltValueField(wireName: r'platformType')
  PlatformType get platformType;
  // enum platformTypeEnum {  WEB,  ANDROID,  IOS,  };

  /// Application status: PUBLISHED, DEPRECATED, SUSPENDED, DRAFT
  @BuiltValueField(wireName: r'status')
  MobileAppStatus get status;
  // enum statusEnum {  DRAFT,  PUBLISHED,  DEPRECATED,  SUSPENDED,  };

  /// Application version info
  @BuiltValueField(wireName: r'versionInfo')
  MobileAppVersionInfo? get versionInfo;

  /// Application store information
  @BuiltValueField(wireName: r'storeInfo')
  StoreInfo? get storeInfo;

  /// Mobile app package name
  @BuiltValueField(wireName: r'name')
  String? get name;

  MobileApp._();

  factory MobileApp([void updates(MobileAppBuilder b)]) = _$MobileApp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileAppBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileApp> get serializer => _$MobileAppSerializer();
}

class _$MobileAppSerializer implements PrimitiveSerializer<MobileApp> {
  @override
  final Iterable<Type> types = const [MobileApp, _$MobileApp];

  @override
  final String wireName = r'MobileApp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileApp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(MobileAppId),
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
    yield r'pkgName';
    yield serializers.serialize(
      object.pkgName,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'appSecret';
    yield serializers.serialize(
      object.appSecret,
      specifiedType: const FullType(String),
    );
    yield r'platformType';
    yield serializers.serialize(
      object.platformType,
      specifiedType: const FullType(PlatformType),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(MobileAppStatus),
    );
    if (object.versionInfo != null) {
      yield r'versionInfo';
      yield serializers.serialize(
        object.versionInfo,
        specifiedType: const FullType(MobileAppVersionInfo),
      );
    }
    if (object.storeInfo != null) {
      yield r'storeInfo';
      yield serializers.serialize(
        object.storeInfo,
        specifiedType: const FullType(StoreInfo),
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
    MobileApp object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MobileAppBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileAppId),
          ) as MobileAppId?;
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
        case r'pkgName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pkgName = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'appSecret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appSecret = valueDes;
          break;
        case r'platformType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformType),
          ) as PlatformType;
          result.platformType = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MobileAppStatus),
          ) as MobileAppStatus;
          result.status = valueDes;
          break;
        case r'versionInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileAppVersionInfo),
          ) as MobileAppVersionInfo?;
          if (valueDes == null) continue;
          result.versionInfo.replace(valueDes);
          break;
        case r'storeInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StoreInfo),
          ) as StoreInfo?;
          if (valueDes == null) continue;
          result.storeInfo.replace(valueDes);
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
  MobileApp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileAppBuilder();
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



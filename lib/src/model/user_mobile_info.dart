// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/store_info.dart';
import 'package:thingsboard_client/src/model/user.dart';
import 'package:thingsboard_client/src/model/mobile_app_version_info.dart';
import 'package:thingsboard_client/src/model/home_dashboard_info.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_mobile_info.g.dart';

/// UserMobileInfo
///
/// Properties:
/// * [user] 
/// * [storeInfo] 
/// * [versionInfo] 
/// * [homeDashboardInfo] 
/// * [pages] - A value representing the any type (object or primitive)
@BuiltValue()
abstract class UserMobileInfo implements Built<UserMobileInfo, UserMobileInfoBuilder> {
  @BuiltValueField(wireName: r'user')
  User? get user;

  @BuiltValueField(wireName: r'storeInfo')
  StoreInfo? get storeInfo;

  @BuiltValueField(wireName: r'versionInfo')
  MobileAppVersionInfo? get versionInfo;

  @BuiltValueField(wireName: r'homeDashboardInfo')
  HomeDashboardInfo? get homeDashboardInfo;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'pages')
  JsonObject? get pages;

  UserMobileInfo._();

  factory UserMobileInfo([void updates(UserMobileInfoBuilder b)]) = _$UserMobileInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserMobileInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserMobileInfo> get serializer => _$UserMobileInfoSerializer();
}

class _$UserMobileInfoSerializer implements PrimitiveSerializer<UserMobileInfo> {
  @override
  final Iterable<Type> types = const [UserMobileInfo, _$UserMobileInfo];

  @override
  final String wireName = r'UserMobileInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserMobileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
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
    if (object.homeDashboardInfo != null) {
      yield r'homeDashboardInfo';
      yield serializers.serialize(
        object.homeDashboardInfo,
        specifiedType: const FullType(HomeDashboardInfo),
      );
    }
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserMobileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserMobileInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(User),
          ) as User?;
          if (valueDes == null) continue;
          result.user.replace(valueDes);
          break;
        case r'storeInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StoreInfo),
          ) as StoreInfo?;
          if (valueDes == null) continue;
          result.storeInfo.replace(valueDes);
          break;
        case r'versionInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MobileAppVersionInfo),
          ) as MobileAppVersionInfo?;
          if (valueDes == null) continue;
          result.versionInfo.replace(valueDes);
          break;
        case r'homeDashboardInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HomeDashboardInfo),
          ) as HomeDashboardInfo?;
          if (valueDes == null) continue;
          result.homeDashboardInfo.replace(valueDes);
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.pages = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserMobileInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserMobileInfoBuilder();
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



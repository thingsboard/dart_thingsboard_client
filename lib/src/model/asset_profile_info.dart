// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/asset_profile_id.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_profile_info.g.dart';

/// AssetProfileInfo
///
/// Properties:
/// * [id] - JSON object with the Asset Profile Id.
/// * [name] - Entity Name
/// * [image] - Either URL or Base64 data of the icon. Used in the mobile application to visualize set of asset profiles in the grid view.
/// * [defaultDashboardId] - Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to asset details.
/// * [tenantId] - Tenant id.
@BuiltValue()
abstract class AssetProfileInfo
    implements Built<AssetProfileInfo, AssetProfileInfoBuilder> {
  /// JSON object with the Asset Profile Id.
  @BuiltValueField(wireName: r'id')
  AssetProfileId? get id;

  /// Entity Name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Either URL or Base64 data of the icon. Used in the mobile application to visualize set of asset profiles in the grid view.
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to asset details.
  @BuiltValueField(wireName: r'defaultDashboardId')
  DashboardId? get defaultDashboardId;

  /// Tenant id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  AssetProfileInfo._();

  factory AssetProfileInfo([void updates(AssetProfileInfoBuilder b)]) =
      _$AssetProfileInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetProfileInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetProfileInfo> get serializer =>
      _$AssetProfileInfoSerializer();
}

class _$AssetProfileInfoSerializer
    implements PrimitiveSerializer<AssetProfileInfo> {
  @override
  final Iterable<Type> types = const [AssetProfileInfo, _$AssetProfileInfo];

  @override
  final String wireName = r'AssetProfileInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetProfileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AssetProfileId),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultDashboardId != null) {
      yield r'defaultDashboardId';
      yield serializers.serialize(
        object.defaultDashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetProfileInfo object, {
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
    required AssetProfileInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AssetProfileId),
                  )
                  as AssetProfileId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'image':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'defaultDashboardId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DashboardId),
                  )
                  as DashboardId?;
          if (valueDes == null) continue;
          result.defaultDashboardId.replace(valueDes);
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssetProfileInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetProfileInfoBuilder();
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

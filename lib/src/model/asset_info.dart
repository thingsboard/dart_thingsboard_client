// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/asset_profile_id.dart';
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:thingsboard_client/src/model/asset_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_info.g.dart';

/// AssetInfo
///
/// Properties:
/// * [id] - JSON object with the asset Id. Specify this field to update the asset. Referencing non-existing asset Id will cause error. Omit this field to create new asset.
/// * [createdTime] - Timestamp of the asset creation, in milliseconds
/// * [additionalInfo] - Additional parameters of the asset. May include: 'description' (string).
/// * [tenantId] - JSON object with Tenant Id.
/// * [customerId] - JSON object with Customer Id. Optional on create: when omitted, defaults to the owner of the target Entity Group or to the current Customer user. Cannot be changed on update via this endpoint; use the Owner API (changeOwnerToCustomer) to re-assign an existing Asset.
/// * [name] - Unique Asset Name in scope of Tenant
/// * [type] - Asset type
/// * [label] - Label that may be used in widgets
/// * [assetProfileId] - JSON object with Asset Profile Id.
/// * [version]
/// * [ownerName] - Owner name
/// * [groups] - Groups
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class AssetInfo implements Built<AssetInfo, AssetInfoBuilder> {
  /// JSON object with the asset Id. Specify this field to update the asset. Referencing non-existing asset Id will cause error. Omit this field to create new asset.
  @BuiltValueField(wireName: r'id')
  AssetId? get id;

  /// Timestamp of the asset creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Additional parameters of the asset. May include: 'description' (string).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id. Optional on create: when omitted, defaults to the owner of the target Entity Group or to the current Customer user. Cannot be changed on update via this endpoint; use the Owner API (changeOwnerToCustomer) to re-assign an existing Asset.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Unique Asset Name in scope of Tenant
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Asset type
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Label that may be used in widgets
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// JSON object with Asset Profile Id.
  @BuiltValueField(wireName: r'assetProfileId')
  AssetProfileId? get assetProfileId;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Owner name
  @BuiltValueField(wireName: r'ownerName')
  String? get ownerName;

  /// Groups
  @BuiltValueField(wireName: r'groups')
  BuiltList<EntityInfo>? get groups;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  AssetInfo._();

  factory AssetInfo([void updates(AssetInfoBuilder b)]) = _$AssetInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetInfo> get serializer => _$AssetInfoSerializer();
}

class _$AssetInfoSerializer implements PrimitiveSerializer<AssetInfo> {
  @override
  final Iterable<Type> types = const [AssetInfo, _$AssetInfo];

  @override
  final String wireName = r'AssetInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AssetId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.assetProfileId != null) {
      yield r'assetProfileId';
      yield serializers.serialize(
        object.assetProfileId,
        specifiedType: const FullType(AssetProfileId),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.ownerName != null) {
      yield r'ownerName';
      yield serializers.serialize(
        object.ownerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType(BuiltList, [FullType(EntityInfo)]),
      );
    }
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetInfo object, {
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
    required AssetInfoBuilder result,
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
                    specifiedType: const FullType.nullable(AssetId),
                  )
                  as AssetId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'additionalInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
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
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'assetProfileId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AssetProfileId),
                  )
                  as AssetProfileId?;
          if (valueDes == null) continue;
          result.assetProfileId.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'ownerName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ownerName = valueDes;
          break;
        case r'groups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityInfo),
                    ]),
                  )
                  as BuiltList<EntityInfo>?;
          if (valueDes == null) continue;
          result.groups.replace(valueDes);
          break;
        case r'ownerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssetInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetInfoBuilder();
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

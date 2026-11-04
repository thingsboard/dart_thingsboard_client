// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/blob_entity_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blob_entity_info.g.dart';

/// BlobEntityInfo
///
/// Properties:
/// * [id] - JSON object with the blob entity Id. Referencing non-existing blob entity Id will cause error
/// * [createdTime] - Timestamp of the blob entity creation, in milliseconds
/// * [additionalInfo] - Additional parameters of the blob entity
/// * [tenantId] - JSON object with Tenant Id
/// * [customerId] - JSON object with Customer Id
/// * [name] - blob entity name
/// * [type] - blob entity type
/// * [contentType] - blob content type
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class BlobEntityInfo implements Built<BlobEntityInfo, BlobEntityInfoBuilder> {
  /// JSON object with the blob entity Id. Referencing non-existing blob entity Id will cause error
  @BuiltValueField(wireName: r'id')
  BlobEntityId? get id;

  /// Timestamp of the blob entity creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Additional parameters of the blob entity
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// blob entity name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// blob entity type
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// blob content type
  @BuiltValueField(wireName: r'contentType')
  BlobEntityInfoContentTypeEnum? get contentType;
  // enum contentTypeEnum {  application/pdf,  image/jpeg,  image/png,  };

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  BlobEntityInfo._();

  factory BlobEntityInfo([void updates(BlobEntityInfoBuilder b)]) = _$BlobEntityInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlobEntityInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlobEntityInfo> get serializer => _$BlobEntityInfoSerializer();
}

class _$BlobEntityInfoSerializer implements PrimitiveSerializer<BlobEntityInfo> {
  @override
  final Iterable<Type> types = const [BlobEntityInfo, _$BlobEntityInfo];

  @override
  final String wireName = r'BlobEntityInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlobEntityInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(BlobEntityId),
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType(BlobEntityInfoContentTypeEnum),
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
    BlobEntityInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlobEntityInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BlobEntityId),
          ) as BlobEntityId?;
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
        case r'additionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerId),
          ) as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BlobEntityInfoContentTypeEnum),
          ) as BlobEntityInfoContentTypeEnum?;
          if (valueDes == null) continue;
          result.contentType = valueDes;
          break;
        case r'ownerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
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
  BlobEntityInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlobEntityInfoBuilder();
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


/// blob content type
class BlobEntityInfoContentTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'application/pdf')
  static const BlobEntityInfoContentTypeEnum applicationSlashPdf = _$blobEntityInfoContentTypeEnum_applicationSlashPdf;
  @BuiltValueEnumConst(wireName: r'image/jpeg')
  static const BlobEntityInfoContentTypeEnum imageSlashJpeg = _$blobEntityInfoContentTypeEnum_imageSlashJpeg;
  @BuiltValueEnumConst(wireName: r'image/png')
  static const BlobEntityInfoContentTypeEnum imageSlashPng = _$blobEntityInfoContentTypeEnum_imageSlashPng;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BlobEntityInfoContentTypeEnum unknownDefaultOpenApi = _$blobEntityInfoContentTypeEnum_unknownDefaultOpenApi;

  static Serializer<BlobEntityInfoContentTypeEnum> get serializer => _$blobEntityInfoContentTypeEnumSerializer;

  const BlobEntityInfoContentTypeEnum._(String name): super(name);

  static BuiltSet<BlobEntityInfoContentTypeEnum> get values => _$blobEntityInfoContentTypeEnumValues;
  static BlobEntityInfoContentTypeEnum valueOf(String name) => _$blobEntityInfoContentTypeEnumValueOf(name);
}


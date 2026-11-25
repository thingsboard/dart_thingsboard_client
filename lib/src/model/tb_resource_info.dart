// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tb_resource_id.dart';
import 'package:thingsboard_client/src/model/resource_type.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/resource_sub_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_resource_info.g.dart';

/// A JSON value representing the Resource Info.
///
/// Properties:
/// * [id] - JSON object with the Resource Id. Specify this field to update the Resource. Referencing non-existing Resource Id will cause error. Omit this field to create new Resource.
/// * [createdTime] - Timestamp of the resource creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id. Tenant Id of the resource can't be changed.
/// * [customerId] - JSON object with Customer Id. Customer Id of the resource can't be changed.
/// * [title] - Resource title.
/// * [resourceType] - Resource type.
/// * [resourceSubType] - Resource sub type.
/// * [resourceKey] - Resource key.
/// * [publicResourceKey] - Public resource key.
/// * [etag] - Resource etag.
/// * [fileName] - Resource file name.
/// * [descriptor] - Resource descriptor.
/// * [link]
/// * [name]
/// * [public]
/// * [publicLink]
@BuiltValue()
abstract class TbResourceInfo
    implements Built<TbResourceInfo, TbResourceInfoBuilder> {
  /// JSON object with the Resource Id. Specify this field to update the Resource. Referencing non-existing Resource Id will cause error. Omit this field to create new Resource.
  @BuiltValueField(wireName: r'id')
  TbResourceId? get id;

  /// Timestamp of the resource creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id. Tenant Id of the resource can't be changed.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id. Customer Id of the resource can't be changed.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Resource title.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Resource type.
  @BuiltValueField(wireName: r'resourceType')
  ResourceType? get resourceType;
  // enum resourceTypeEnum {  LWM2M_MODEL,  JKS,  PKCS_12,  JS_MODULE,  IMAGE,  DASHBOARD,  GENERAL,  };

  /// Resource sub type.
  @BuiltValueField(wireName: r'resourceSubType')
  ResourceSubType? get resourceSubType;
  // enum resourceSubTypeEnum {  IMAGE,  SCADA_SYMBOL,  EXTENSION,  MODULE,  };

  /// Resource key.
  @BuiltValueField(wireName: r'resourceKey')
  String? get resourceKey;

  /// Public resource key.
  @BuiltValueField(wireName: r'publicResourceKey')
  String? get publicResourceKey;

  /// Resource etag.
  @BuiltValueField(wireName: r'etag')
  String? get etag;

  /// Resource file name.
  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  /// Resource descriptor.
  @BuiltValueField(wireName: r'descriptor')
  JsonObject? get descriptor;

  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'public')
  bool? get public;

  @BuiltValueField(wireName: r'publicLink')
  String? get publicLink;

  TbResourceInfo._();

  factory TbResourceInfo([void updates(TbResourceInfoBuilder b)]) =
      _$TbResourceInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbResourceInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbResourceInfo> get serializer =>
      _$TbResourceInfoSerializer();
}

class _$TbResourceInfoSerializer
    implements PrimitiveSerializer<TbResourceInfo> {
  @override
  final Iterable<Type> types = const [TbResourceInfo, _$TbResourceInfo];

  @override
  final String wireName = r'TbResourceInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbResourceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(TbResourceId),
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
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.resourceType != null) {
      yield r'resourceType';
      yield serializers.serialize(
        object.resourceType,
        specifiedType: const FullType(ResourceType),
      );
    }
    if (object.resourceSubType != null) {
      yield r'resourceSubType';
      yield serializers.serialize(
        object.resourceSubType,
        specifiedType: const FullType(ResourceSubType),
      );
    }
    if (object.resourceKey != null) {
      yield r'resourceKey';
      yield serializers.serialize(
        object.resourceKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.publicResourceKey != null) {
      yield r'publicResourceKey';
      yield serializers.serialize(
        object.publicResourceKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.etag != null) {
      yield r'etag';
      yield serializers.serialize(
        object.etag,
        specifiedType: const FullType(String),
      );
    }
    if (object.fileName != null) {
      yield r'fileName';
      yield serializers.serialize(
        object.fileName,
        specifiedType: const FullType(String),
      );
    }
    if (object.descriptor != null) {
      yield r'descriptor';
      yield serializers.serialize(
        object.descriptor,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.public != null) {
      yield r'public';
      yield serializers.serialize(
        object.public,
        specifiedType: const FullType(bool),
      );
    }
    if (object.publicLink != null) {
      yield r'publicLink';
      yield serializers.serialize(
        object.publicLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TbResourceInfo object, {
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
    required TbResourceInfoBuilder result,
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
                    specifiedType: const FullType.nullable(TbResourceId),
                  )
                  as TbResourceId?;
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
        case r'resourceType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ResourceType),
                  )
                  as ResourceType?;
          if (valueDes == null) continue;
          result.resourceType = valueDes;
          break;
        case r'resourceSubType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ResourceSubType),
                  )
                  as ResourceSubType?;
          if (valueDes == null) continue;
          result.resourceSubType = valueDes;
          break;
        case r'resourceKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.resourceKey = valueDes;
          break;
        case r'publicResourceKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.publicResourceKey = valueDes;
          break;
        case r'etag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.etag = valueDes;
          break;
        case r'fileName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fileName = valueDes;
          break;
        case r'descriptor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.descriptor = valueDes;
          break;
        case r'link':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.link = valueDes;
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
        case r'public':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.public = valueDes;
          break;
        case r'publicLink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.publicLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbResourceInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbResourceInfoBuilder();
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

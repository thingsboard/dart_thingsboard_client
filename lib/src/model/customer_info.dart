// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/custom_menu_id.dart';
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_info.g.dart';

/// CustomerInfo
///
/// Properties:
/// * [id] - JSON object with the customer Id. Specify this field to update the customer. Referencing non-existing customer Id will cause error. Omit this field to create new customer.
/// * [createdTime] - Timestamp of the customer creation, in milliseconds
/// * [additionalInfo] - Additional parameters of the customer. May include: 'description' (string), 'homeDashboardId' (string, UUID of the home dashboard), 'homeDashboardHideToolbar' (boolean, whether to hide the dashboard toolbar), 'isPublic' (boolean, whether this is a public customer).
/// * [country] - Country
/// * [state] - State
/// * [city] - City
/// * [address] - Address Line 1
/// * [address2] - Address Line 2
/// * [zip] - Zip code
/// * [phone] - Phone number
/// * [email] - Email
/// * [title] - Title of the customer
/// * [tenantId] - JSON object with Tenant Id
/// * [parentCustomerId] - JSON object with parent Customer Id
/// * [version] 
/// * [customMenuId] 
/// * [ownerName] - Owner name
/// * [groups] - Groups
/// * [customerId] - JSON object with parent Customer Id
/// * [name] - Name of the customer. Read-only, duplicated from title for backward compatibility
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class CustomerInfo implements Built<CustomerInfo, CustomerInfoBuilder> {
  /// JSON object with the customer Id. Specify this field to update the customer. Referencing non-existing customer Id will cause error. Omit this field to create new customer.
  @BuiltValueField(wireName: r'id')
  CustomerId? get id;

  /// Timestamp of the customer creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Additional parameters of the customer. May include: 'description' (string), 'homeDashboardId' (string, UUID of the home dashboard), 'homeDashboardHideToolbar' (boolean, whether to hide the dashboard toolbar), 'isPublic' (boolean, whether this is a public customer).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// Country
  @BuiltValueField(wireName: r'country')
  String? get country;

  /// State
  @BuiltValueField(wireName: r'state')
  String? get state;

  /// City
  @BuiltValueField(wireName: r'city')
  String? get city;

  /// Address Line 1
  @BuiltValueField(wireName: r'address')
  String? get address;

  /// Address Line 2
  @BuiltValueField(wireName: r'address2')
  String? get address2;

  /// Zip code
  @BuiltValueField(wireName: r'zip')
  String? get zip;

  /// Phone number
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Email
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Title of the customer
  @BuiltValueField(wireName: r'title')
  String get title;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with parent Customer Id
  @BuiltValueField(wireName: r'parentCustomerId')
  CustomerId? get parentCustomerId;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'customMenuId')
  CustomMenuId? get customMenuId;

  /// Owner name
  @BuiltValueField(wireName: r'ownerName')
  String? get ownerName;

  /// Groups
  @BuiltValueField(wireName: r'groups')
  BuiltList<EntityInfo>? get groups;

  /// JSON object with parent Customer Id
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Name of the customer. Read-only, duplicated from title for backward compatibility
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  CustomerInfo._();

  factory CustomerInfo([void updates(CustomerInfoBuilder b)]) = _$CustomerInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerInfo> get serializer => _$CustomerInfoSerializer();
}

class _$CustomerInfoSerializer implements PrimitiveSerializer<CustomerInfo> {
  @override
  final Iterable<Type> types = const [CustomerInfo, _$CustomerInfo];

  @override
  final String wireName = r'CustomerInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(CustomerId),
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
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.address2 != null) {
      yield r'address2';
      yield serializers.serialize(
        object.address2,
        specifiedType: const FullType(String),
      );
    }
    if (object.zip != null) {
      yield r'zip';
      yield serializers.serialize(
        object.zip,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.parentCustomerId != null) {
      yield r'parentCustomerId';
      yield serializers.serialize(
        object.parentCustomerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.customMenuId != null) {
      yield r'customMenuId';
      yield serializers.serialize(
        object.customMenuId,
        specifiedType: const FullType(CustomMenuId),
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
    CustomerInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerId),
          ) as CustomerId?;
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
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.country = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'address2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address2 = valueDes;
          break;
        case r'zip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.zip = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'parentCustomerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerId),
          ) as CustomerId?;
          if (valueDes == null) continue;
          result.parentCustomerId.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'customMenuId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomMenuId),
          ) as CustomMenuId?;
          if (valueDes == null) continue;
          result.customMenuId.replace(valueDes);
          break;
        case r'ownerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerName = valueDes;
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EntityInfo)]),
          ) as BuiltList<EntityInfo>?;
          if (valueDes == null) continue;
          result.groups.replace(valueDes);
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
  CustomerInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerInfoBuilder();
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



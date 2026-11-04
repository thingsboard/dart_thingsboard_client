// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ota_package_id.dart';
import 'package:thingsboard_client/src/model/device_data.dart';
import 'package:thingsboard_client/src/model/device_profile_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/device_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device.g.dart';

/// Device
///
/// Properties:
/// * [id] - JSON object with the Device Id. Specify this field to update the Device. Referencing non-existing Device Id will cause error. Omit this field to create new Device.
/// * [createdTime] - Timestamp of the device creation, in milliseconds
/// * [additionalInfo] - Additional parameters of the device. May include: 'gateway' (boolean, whether the device is a gateway), 'description' (string), 'lastConnectedGateway' (string, UUID of the last gateway that connected this device).
/// * [tenantId] - JSON object with Tenant Id. Use 'assignDeviceToTenant' to change the Tenant Id.
/// * [customerId] - JSON object with Customer Id. Optional on create: when omitted, defaults to the owner of the target Entity Group or to the current Customer user. Cannot be changed on update via this endpoint; use the Owner API (changeOwnerToCustomer) to re-assign an existing Device.
/// * [name] - Unique Device Name in scope of Tenant
/// * [type] - Device Profile Name
/// * [label] - Label that may be used in widgets
/// * [deviceProfileId] - JSON object with Device Profile Id. If not provided, the type will be used to determine the profile. If neither deviceProfileId nor type is specified, the default device profile will be used.
/// * [deviceData] - JSON object with content specific to type of transport in the device profile.
/// * [firmwareId] - JSON object with Ota Package Id.
/// * [softwareId] - JSON object with Ota Package Id.
/// * [version] 
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class Device implements Built<Device, DeviceBuilder> {
  /// JSON object with the Device Id. Specify this field to update the Device. Referencing non-existing Device Id will cause error. Omit this field to create new Device.
  @BuiltValueField(wireName: r'id')
  DeviceId? get id;

  /// Timestamp of the device creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Additional parameters of the device. May include: 'gateway' (boolean, whether the device is a gateway), 'description' (string), 'lastConnectedGateway' (string, UUID of the last gateway that connected this device).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id. Use 'assignDeviceToTenant' to change the Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id. Optional on create: when omitted, defaults to the owner of the target Entity Group or to the current Customer user. Cannot be changed on update via this endpoint; use the Owner API (changeOwnerToCustomer) to re-assign an existing Device.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Unique Device Name in scope of Tenant
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Device Profile Name
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Label that may be used in widgets
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// JSON object with Device Profile Id. If not provided, the type will be used to determine the profile. If neither deviceProfileId nor type is specified, the default device profile will be used.
  @BuiltValueField(wireName: r'deviceProfileId')
  DeviceProfileId? get deviceProfileId;

  /// JSON object with content specific to type of transport in the device profile.
  @BuiltValueField(wireName: r'deviceData')
  DeviceData? get deviceData;

  /// JSON object with Ota Package Id.
  @BuiltValueField(wireName: r'firmwareId')
  OtaPackageId? get firmwareId;

  /// JSON object with Ota Package Id.
  @BuiltValueField(wireName: r'softwareId')
  OtaPackageId? get softwareId;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  Device._();

  factory Device([void updates(DeviceBuilder b)]) = _$Device;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Device> get serializer => _$DeviceSerializer();
}

class _$DeviceSerializer implements PrimitiveSerializer<Device> {
  @override
  final Iterable<Type> types = const [Device, _$Device];

  @override
  final String wireName = r'Device';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Device object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(DeviceId),
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
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceProfileId != null) {
      yield r'deviceProfileId';
      yield serializers.serialize(
        object.deviceProfileId,
        specifiedType: const FullType(DeviceProfileId),
      );
    }
    if (object.deviceData != null) {
      yield r'deviceData';
      yield serializers.serialize(
        object.deviceData,
        specifiedType: const FullType(DeviceData),
      );
    }
    if (object.firmwareId != null) {
      yield r'firmwareId';
      yield serializers.serialize(
        object.firmwareId,
        specifiedType: const FullType(OtaPackageId),
      );
    }
    if (object.softwareId != null) {
      yield r'softwareId';
      yield serializers.serialize(
        object.softwareId,
        specifiedType: const FullType(OtaPackageId),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
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
    Device object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeviceId),
          ) as DeviceId?;
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
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'deviceProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeviceProfileId),
          ) as DeviceProfileId?;
          if (valueDes == null) continue;
          result.deviceProfileId.replace(valueDes);
          break;
        case r'deviceData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeviceData),
          ) as DeviceData?;
          if (valueDes == null) continue;
          result.deviceData.replace(valueDes);
          break;
        case r'firmwareId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OtaPackageId),
          ) as OtaPackageId?;
          if (valueDes == null) continue;
          result.firmwareId.replace(valueDes);
          break;
        case r'softwareId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OtaPackageId),
          ) as OtaPackageId?;
          if (valueDes == null) continue;
          result.softwareId.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
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
  Device deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceBuilder();
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



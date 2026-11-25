// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_type.dart';
import 'package:thingsboard_client/src/model/ota_package_id.dart';
import 'package:thingsboard_client/src/model/device_transport_type.dart';
import 'package:thingsboard_client/src/model/device_profile_provision_type.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/device_profile_id.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/device_profile_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_profile.g.dart';

/// A JSON value representing the device profile.
///
/// Properties:
/// * [id] - JSON object with the device profile Id. Specify this field to update the device profile. Referencing non-existing device profile Id will cause error. Omit this field to create new device profile.
/// * [createdTime] - Timestamp of the profile creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id that owns the profile.
/// * [name] - Unique Device Profile Name in scope of Tenant.
/// * [description] - Device Profile description.
/// * [image] - Either URL or Base64 data of the icon. Used in the mobile application to visualize set of device profiles in the grid view.
/// * [type] - Type of the profile. Always 'DEFAULT' for now. Reserved for future use.
/// * [transportType] - Type of the transport used to connect the device. Default transport supports HTTP, CoAP and MQTT.
/// * [provisionType] - Provisioning strategy.
/// * [defaultRuleChainId] - Reference to the rule chain. If present, the specified rule chain will be used to process all messages related to device, including telemetry, attribute updates, etc. Otherwise, the root rule chain will be used to process those messages.
/// * [defaultDashboardId] - Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to device details.
/// * [defaultQueueName] - Rule engine queue name. If present, the specified queue will be used to store all unprocessed messages related to device, including telemetry, attribute updates, etc. Otherwise, the 'Main' queue will be used to store those messages.
/// * [profileData] - Complex JSON object that includes addition device profile configuration (transport, alarm rules, etc).
/// * [provisionDeviceKey] - Unique provisioning key used by 'Device Provisioning' feature.
/// * [firmwareId] - Reference to the firmware OTA package. If present, the specified package will be used as default device firmware.
/// * [softwareId] - Reference to the software OTA package. If present, the specified package will be used as default device software.
/// * [defaultEdgeRuleChainId] - Reference to the edge rule chain. If present, the specified edge rule chain will be used on the edge to process all messages related to device, including telemetry, attribute updates, etc. Otherwise, the edge root rule chain will be used to process those messages.
/// * [version]
/// * [default_] - Used to mark the default profile. Default profile is used when the device profile is not specified during device creation.
@BuiltValue()
abstract class DeviceProfile
    implements Built<DeviceProfile, DeviceProfileBuilder> {
  /// JSON object with the device profile Id. Specify this field to update the device profile. Referencing non-existing device profile Id will cause error. Omit this field to create new device profile.
  @BuiltValueField(wireName: r'id')
  DeviceProfileId? get id;

  /// Timestamp of the profile creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id that owns the profile.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Unique Device Profile Name in scope of Tenant.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Device Profile description.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Either URL or Base64 data of the icon. Used in the mobile application to visualize set of device profiles in the grid view.
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Type of the profile. Always 'DEFAULT' for now. Reserved for future use.
  @BuiltValueField(wireName: r'type')
  DeviceProfileType? get type;
  // enum typeEnum {  DEFAULT,  };

  /// Type of the transport used to connect the device. Default transport supports HTTP, CoAP and MQTT.
  @BuiltValueField(wireName: r'transportType')
  DeviceTransportType? get transportType;
  // enum transportTypeEnum {  DEFAULT,  MQTT,  COAP,  LWM2M,  SNMP,  };

  /// Provisioning strategy.
  @BuiltValueField(wireName: r'provisionType')
  DeviceProfileProvisionType? get provisionType;
  // enum provisionTypeEnum {  DISABLED,  ALLOW_CREATE_NEW_DEVICES,  CHECK_PRE_PROVISIONED_DEVICES,  X509_CERTIFICATE_CHAIN,  };

  /// Reference to the rule chain. If present, the specified rule chain will be used to process all messages related to device, including telemetry, attribute updates, etc. Otherwise, the root rule chain will be used to process those messages.
  @BuiltValueField(wireName: r'defaultRuleChainId')
  RuleChainId? get defaultRuleChainId;

  /// Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to device details.
  @BuiltValueField(wireName: r'defaultDashboardId')
  DashboardId? get defaultDashboardId;

  /// Rule engine queue name. If present, the specified queue will be used to store all unprocessed messages related to device, including telemetry, attribute updates, etc. Otherwise, the 'Main' queue will be used to store those messages.
  @BuiltValueField(wireName: r'defaultQueueName')
  String? get defaultQueueName;

  /// Complex JSON object that includes addition device profile configuration (transport, alarm rules, etc).
  @BuiltValueField(wireName: r'profileData')
  DeviceProfileData? get profileData;

  /// Unique provisioning key used by 'Device Provisioning' feature.
  @BuiltValueField(wireName: r'provisionDeviceKey')
  String? get provisionDeviceKey;

  /// Reference to the firmware OTA package. If present, the specified package will be used as default device firmware.
  @BuiltValueField(wireName: r'firmwareId')
  OtaPackageId? get firmwareId;

  /// Reference to the software OTA package. If present, the specified package will be used as default device software.
  @BuiltValueField(wireName: r'softwareId')
  OtaPackageId? get softwareId;

  /// Reference to the edge rule chain. If present, the specified edge rule chain will be used on the edge to process all messages related to device, including telemetry, attribute updates, etc. Otherwise, the edge root rule chain will be used to process those messages.
  @BuiltValueField(wireName: r'defaultEdgeRuleChainId')
  RuleChainId? get defaultEdgeRuleChainId;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Used to mark the default profile. Default profile is used when the device profile is not specified during device creation.
  @BuiltValueField(wireName: r'default')
  bool? get default_;

  DeviceProfile._();

  factory DeviceProfile([void updates(DeviceProfileBuilder b)]) =
      _$DeviceProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceProfile> get serializer =>
      _$DeviceProfileSerializer();
}

class _$DeviceProfileSerializer implements PrimitiveSerializer<DeviceProfile> {
  @override
  final Iterable<Type> types = const [DeviceProfile, _$DeviceProfile];

  @override
  final String wireName = r'DeviceProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(DeviceProfileId),
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(DeviceProfileType),
      );
    }
    if (object.transportType != null) {
      yield r'transportType';
      yield serializers.serialize(
        object.transportType,
        specifiedType: const FullType(DeviceTransportType),
      );
    }
    if (object.provisionType != null) {
      yield r'provisionType';
      yield serializers.serialize(
        object.provisionType,
        specifiedType: const FullType(DeviceProfileProvisionType),
      );
    }
    if (object.defaultRuleChainId != null) {
      yield r'defaultRuleChainId';
      yield serializers.serialize(
        object.defaultRuleChainId,
        specifiedType: const FullType(RuleChainId),
      );
    }
    if (object.defaultDashboardId != null) {
      yield r'defaultDashboardId';
      yield serializers.serialize(
        object.defaultDashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.defaultQueueName != null) {
      yield r'defaultQueueName';
      yield serializers.serialize(
        object.defaultQueueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.profileData != null) {
      yield r'profileData';
      yield serializers.serialize(
        object.profileData,
        specifiedType: const FullType(DeviceProfileData),
      );
    }
    if (object.provisionDeviceKey != null) {
      yield r'provisionDeviceKey';
      yield serializers.serialize(
        object.provisionDeviceKey,
        specifiedType: const FullType(String),
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
    if (object.defaultEdgeRuleChainId != null) {
      yield r'defaultEdgeRuleChainId';
      yield serializers.serialize(
        object.defaultEdgeRuleChainId,
        specifiedType: const FullType(RuleChainId),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceProfile object, {
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
    required DeviceProfileBuilder result,
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
                    specifiedType: const FullType.nullable(DeviceProfileId),
                  )
                  as DeviceProfileId?;
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
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DeviceProfileType),
                  )
                  as DeviceProfileType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'transportType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DeviceTransportType),
                  )
                  as DeviceTransportType?;
          if (valueDes == null) continue;
          result.transportType = valueDes;
          break;
        case r'provisionType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DeviceProfileProvisionType,
                    ),
                  )
                  as DeviceProfileProvisionType?;
          if (valueDes == null) continue;
          result.provisionType = valueDes;
          break;
        case r'defaultRuleChainId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RuleChainId),
                  )
                  as RuleChainId?;
          if (valueDes == null) continue;
          result.defaultRuleChainId.replace(valueDes);
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
        case r'defaultQueueName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultQueueName = valueDes;
          break;
        case r'profileData':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DeviceProfileData),
                  )
                  as DeviceProfileData?;
          if (valueDes == null) continue;
          result.profileData.replace(valueDes);
          break;
        case r'provisionDeviceKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.provisionDeviceKey = valueDes;
          break;
        case r'firmwareId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(OtaPackageId),
                  )
                  as OtaPackageId?;
          if (valueDes == null) continue;
          result.firmwareId.replace(valueDes);
          break;
        case r'softwareId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(OtaPackageId),
                  )
                  as OtaPackageId?;
          if (valueDes == null) continue;
          result.softwareId.replace(valueDes);
          break;
        case r'defaultEdgeRuleChainId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RuleChainId),
                  )
                  as RuleChainId?;
          if (valueDes == null) continue;
          result.defaultEdgeRuleChainId.replace(valueDes);
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
        case r'default':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceProfileBuilder();
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

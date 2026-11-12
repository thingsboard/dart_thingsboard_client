// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_type.dart';
import 'package:thingsboard_client/src/model/device_transport_type.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/device_profile_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_profile_info.g.dart';

/// DeviceProfileInfo
///
/// Properties:
/// * [id] - JSON object with the Device Profile Id.
/// * [name] - Entity Name
/// * [image] - Either URL or Base64 data of the icon. Used in the mobile application to visualize set of device profiles in the grid view.
/// * [defaultDashboardId] - Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to device details.
/// * [type] - Type of the profile. Always 'DEFAULT' for now. Reserved for future use.
/// * [transportType] - Type of the transport used to connect the device. Default transport supports HTTP, CoAP and MQTT.
/// * [tenantId] - Tenant id.
@BuiltValue()
abstract class DeviceProfileInfo
    implements Built<DeviceProfileInfo, DeviceProfileInfoBuilder> {
  /// JSON object with the Device Profile Id.
  @BuiltValueField(wireName: r'id')
  DeviceProfileId? get id;

  /// Entity Name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Either URL or Base64 data of the icon. Used in the mobile application to visualize set of device profiles in the grid view.
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to device details.
  @BuiltValueField(wireName: r'defaultDashboardId')
  DashboardId? get defaultDashboardId;

  /// Type of the profile. Always 'DEFAULT' for now. Reserved for future use.
  @BuiltValueField(wireName: r'type')
  DeviceProfileType? get type;
  // enum typeEnum {  DEFAULT,  };

  /// Type of the transport used to connect the device. Default transport supports HTTP, CoAP and MQTT.
  @BuiltValueField(wireName: r'transportType')
  DeviceTransportType? get transportType;
  // enum transportTypeEnum {  DEFAULT,  MQTT,  COAP,  LWM2M,  SNMP,  };

  /// Tenant id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  DeviceProfileInfo._();

  factory DeviceProfileInfo([void updates(DeviceProfileInfoBuilder b)]) =
      _$DeviceProfileInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceProfileInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceProfileInfo> get serializer =>
      _$DeviceProfileInfoSerializer();
}

class _$DeviceProfileInfoSerializer
    implements PrimitiveSerializer<DeviceProfileInfo> {
  @override
  final Iterable<Type> types = const [DeviceProfileInfo, _$DeviceProfileInfo];

  @override
  final String wireName = r'DeviceProfileInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceProfileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(DeviceProfileId),
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
    DeviceProfileInfo object, {
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
    required DeviceProfileInfoBuilder result,
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
  DeviceProfileInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceProfileInfoBuilder();
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

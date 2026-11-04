// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ota_package_id.dart';
import 'package:thingsboard_client/src/model/ota_package_type.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_group_ota_package.g.dart';

/// DeviceGroupOtaPackage
///
/// Properties:
/// * [id] 
/// * [groupId] 
/// * [otaPackageType] 
/// * [otaPackageId] 
/// * [otaPackageUpdateTime] 
@BuiltValue()
abstract class DeviceGroupOtaPackage implements Built<DeviceGroupOtaPackage, DeviceGroupOtaPackageBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'groupId')
  EntityGroupId? get groupId;

  @BuiltValueField(wireName: r'otaPackageType')
  OtaPackageType? get otaPackageType;
  // enum otaPackageTypeEnum {  FIRMWARE,  SOFTWARE,  };

  @BuiltValueField(wireName: r'otaPackageId')
  OtaPackageId? get otaPackageId;

  @BuiltValueField(wireName: r'otaPackageUpdateTime')
  int? get otaPackageUpdateTime;

  DeviceGroupOtaPackage._();

  factory DeviceGroupOtaPackage([void updates(DeviceGroupOtaPackageBuilder b)]) = _$DeviceGroupOtaPackage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceGroupOtaPackageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceGroupOtaPackage> get serializer => _$DeviceGroupOtaPackageSerializer();
}

class _$DeviceGroupOtaPackageSerializer implements PrimitiveSerializer<DeviceGroupOtaPackage> {
  @override
  final Iterable<Type> types = const [DeviceGroupOtaPackage, _$DeviceGroupOtaPackage];

  @override
  final String wireName = r'DeviceGroupOtaPackage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceGroupOtaPackage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.groupId != null) {
      yield r'groupId';
      yield serializers.serialize(
        object.groupId,
        specifiedType: const FullType(EntityGroupId),
      );
    }
    if (object.otaPackageType != null) {
      yield r'otaPackageType';
      yield serializers.serialize(
        object.otaPackageType,
        specifiedType: const FullType(OtaPackageType),
      );
    }
    if (object.otaPackageId != null) {
      yield r'otaPackageId';
      yield serializers.serialize(
        object.otaPackageId,
        specifiedType: const FullType(OtaPackageId),
      );
    }
    if (object.otaPackageUpdateTime != null) {
      yield r'otaPackageUpdateTime';
      yield serializers.serialize(
        object.otaPackageUpdateTime,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceGroupOtaPackage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceGroupOtaPackageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'groupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityGroupId),
          ) as EntityGroupId?;
          if (valueDes == null) continue;
          result.groupId.replace(valueDes);
          break;
        case r'otaPackageType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OtaPackageType),
          ) as OtaPackageType?;
          if (valueDes == null) continue;
          result.otaPackageType = valueDes;
          break;
        case r'otaPackageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OtaPackageId),
          ) as OtaPackageId?;
          if (valueDes == null) continue;
          result.otaPackageId.replace(valueDes);
          break;
        case r'otaPackageUpdateTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.otaPackageUpdateTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceGroupOtaPackage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceGroupOtaPackageBuilder();
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



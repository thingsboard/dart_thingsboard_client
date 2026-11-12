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
import 'package:thingsboard_client/src/model/checksum_algorithm.dart';
import 'package:thingsboard_client/src/model/device_profile_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ota_package.g.dart';

/// OtaPackage
///
/// Properties:
/// * [id] - JSON object with the ota package Id. Specify existing ota package Id to update the ota package. Referencing non-existing ota package id will cause error. Omit this field to create new ota package.
/// * [createdTime] - Timestamp of the ota package creation, in milliseconds
/// * [additionalInfo] - OTA Package description.
/// * [tenantId] - JSON object with Tenant Id. Tenant Id of the ota package can't be changed.
/// * [deviceProfileId] - JSON object with Device Profile Id. Device Profile Id of the ota package can't be changed.
/// * [type] - OTA Package type.
/// * [title] - OTA Package title.
/// * [version] - OTA Package version.
/// * [tag] - OTA Package tag.
/// * [url] - OTA Package url.
/// * [hasData] - Indicates OTA Package 'has data'. Field is returned from DB ('true' if data exists or url is set).  If OTA Package 'has data' is 'false' we can not assign the OTA Package to the Device or Device Profile.
/// * [fileName] - OTA Package file name.
/// * [contentType] - OTA Package content type.
/// * [checksumAlgorithm] - OTA Package checksum algorithm.
/// * [checksum] - OTA Package checksum.
/// * [dataSize] - OTA Package data size.
/// * [data]
/// * [name]
@BuiltValue()
abstract class OtaPackage implements Built<OtaPackage, OtaPackageBuilder> {
  /// JSON object with the ota package Id. Specify existing ota package Id to update the ota package. Referencing non-existing ota package id will cause error. Omit this field to create new ota package.
  @BuiltValueField(wireName: r'id')
  OtaPackageId? get id;

  /// Timestamp of the ota package creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// OTA Package description.
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id. Tenant Id of the ota package can't be changed.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Device Profile Id. Device Profile Id of the ota package can't be changed.
  @BuiltValueField(wireName: r'deviceProfileId')
  DeviceProfileId? get deviceProfileId;

  /// OTA Package type.
  @BuiltValueField(wireName: r'type')
  OtaPackageType? get type;
  // enum typeEnum {  FIRMWARE,  SOFTWARE,  };

  /// OTA Package title.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// OTA Package version.
  @BuiltValueField(wireName: r'version')
  String? get version;

  /// OTA Package tag.
  @BuiltValueField(wireName: r'tag')
  String? get tag;

  /// OTA Package url.
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Indicates OTA Package 'has data'. Field is returned from DB ('true' if data exists or url is set).  If OTA Package 'has data' is 'false' we can not assign the OTA Package to the Device or Device Profile.
  @BuiltValueField(wireName: r'hasData')
  bool? get hasData;

  /// OTA Package file name.
  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  /// OTA Package content type.
  @BuiltValueField(wireName: r'contentType')
  String? get contentType;

  /// OTA Package checksum algorithm.
  @BuiltValueField(wireName: r'checksumAlgorithm')
  ChecksumAlgorithm? get checksumAlgorithm;
  // enum checksumAlgorithmEnum {  MD5,  SHA256,  SHA384,  SHA512,  CRC32,  MURMUR3_32,  MURMUR3_128,  };

  /// OTA Package checksum.
  @BuiltValueField(wireName: r'checksum')
  String? get checksum;

  /// OTA Package data size.
  @BuiltValueField(wireName: r'dataSize')
  int? get dataSize;

  @BuiltValueField(wireName: r'data')
  String? get data;

  @BuiltValueField(wireName: r'name')
  String? get name;

  OtaPackage._();

  factory OtaPackage([void updates(OtaPackageBuilder b)]) = _$OtaPackage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OtaPackageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OtaPackage> get serializer => _$OtaPackageSerializer();
}

class _$OtaPackageSerializer implements PrimitiveSerializer<OtaPackage> {
  @override
  final Iterable<Type> types = const [OtaPackage, _$OtaPackage];

  @override
  final String wireName = r'OtaPackage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OtaPackage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(OtaPackageId),
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
    if (object.deviceProfileId != null) {
      yield r'deviceProfileId';
      yield serializers.serialize(
        object.deviceProfileId,
        specifiedType: const FullType(DeviceProfileId),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(OtaPackageType),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.tag != null) {
      yield r'tag';
      yield serializers.serialize(
        object.tag,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.hasData != null) {
      yield r'hasData';
      yield serializers.serialize(
        object.hasData,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fileName != null) {
      yield r'fileName';
      yield serializers.serialize(
        object.fileName,
        specifiedType: const FullType(String),
      );
    }
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType(String),
      );
    }
    if (object.checksumAlgorithm != null) {
      yield r'checksumAlgorithm';
      yield serializers.serialize(
        object.checksumAlgorithm,
        specifiedType: const FullType(ChecksumAlgorithm),
      );
    }
    if (object.checksum != null) {
      yield r'checksum';
      yield serializers.serialize(
        object.checksum,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataSize != null) {
      yield r'dataSize';
      yield serializers.serialize(
        object.dataSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    OtaPackage object, {
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
    required OtaPackageBuilder result,
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
                    specifiedType: const FullType.nullable(OtaPackageId),
                  )
                  as OtaPackageId?;
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
        case r'deviceProfileId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DeviceProfileId),
                  )
                  as DeviceProfileId?;
          if (valueDes == null) continue;
          result.deviceProfileId.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(OtaPackageType),
                  )
                  as OtaPackageType?;
          if (valueDes == null) continue;
          result.type = valueDes;
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
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'tag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tag = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'hasData':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasData = valueDes;
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
        case r'contentType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.contentType = valueDes;
          break;
        case r'checksumAlgorithm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChecksumAlgorithm),
                  )
                  as ChecksumAlgorithm?;
          if (valueDes == null) continue;
          result.checksumAlgorithm = valueDes;
          break;
        case r'checksum':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.checksum = valueDes;
          break;
        case r'dataSize':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.dataSize = valueDes;
          break;
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.data = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OtaPackage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OtaPackageBuilder();
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

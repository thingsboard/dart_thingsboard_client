// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/resource_type.dart';
import 'package:thingsboard_client/src/model/resource_sub_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_export_data.g.dart';

/// ResourceExportData
///
/// Properties:
/// * [link] 
/// * [title] 
/// * [type] 
/// * [subType] 
/// * [resourceKey] 
/// * [fileName] 
/// * [publicResourceKey] 
/// * [mediaType] 
/// * [data] 
/// * [isPublic] 
/// * [public] 
@BuiltValue()
abstract class ResourceExportData implements Built<ResourceExportData, ResourceExportDataBuilder> {
  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  ResourceType? get type;
  // enum typeEnum {  LWM2M_MODEL,  JKS,  PKCS_12,  JS_MODULE,  IMAGE,  DASHBOARD,  GENERAL,  };

  @BuiltValueField(wireName: r'subType')
  ResourceSubType? get subType;
  // enum subTypeEnum {  IMAGE,  SCADA_SYMBOL,  EXTENSION,  MODULE,  };

  @BuiltValueField(wireName: r'resourceKey')
  String? get resourceKey;

  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  @BuiltValueField(wireName: r'publicResourceKey')
  String? get publicResourceKey;

  @BuiltValueField(wireName: r'mediaType')
  String? get mediaType;

  @BuiltValueField(wireName: r'data')
  String? get data;

  @BuiltValueField(wireName: r'isPublic')
  bool? get isPublic;

  @BuiltValueField(wireName: r'public')
  bool? get public;

  ResourceExportData._();

  factory ResourceExportData([void updates(ResourceExportDataBuilder b)]) = _$ResourceExportData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceExportDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceExportData> get serializer => _$ResourceExportDataSerializer();
}

class _$ResourceExportDataSerializer implements PrimitiveSerializer<ResourceExportData> {
  @override
  final Iterable<Type> types = const [ResourceExportData, _$ResourceExportData];

  @override
  final String wireName = r'ResourceExportData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ResourceType),
      );
    }
    if (object.subType != null) {
      yield r'subType';
      yield serializers.serialize(
        object.subType,
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
    if (object.fileName != null) {
      yield r'fileName';
      yield serializers.serialize(
        object.fileName,
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
    if (object.mediaType != null) {
      yield r'mediaType';
      yield serializers.serialize(
        object.mediaType,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(String),
      );
    }
    if (object.isPublic != null) {
      yield r'isPublic';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.public != null) {
      yield r'public';
      yield serializers.serialize(
        object.public,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResourceExportDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.link = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResourceType),
          ) as ResourceType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'subType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResourceSubType),
          ) as ResourceSubType?;
          if (valueDes == null) continue;
          result.subType = valueDes;
          break;
        case r'resourceKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resourceKey = valueDes;
          break;
        case r'fileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileName = valueDes;
          break;
        case r'publicResourceKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publicResourceKey = valueDes;
          break;
        case r'mediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mediaType = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        case r'isPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPublic = valueDes;
          break;
        case r'public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.public = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceExportData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceExportDataBuilder();
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



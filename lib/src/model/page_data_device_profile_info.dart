// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/device_profile_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_data_device_profile_info.g.dart';

/// PageDataDeviceProfileInfo
///
/// Properties:
/// * [data] - Array of the entities
/// * [totalPages] - Total number of available pages. Calculated based on the 'pageSize' request parameter and total number of entities that match search criteria
/// * [totalElements] - Total number of elements in all available pages
/// * [hasNext] - 'false' value indicates the end of the result set
@BuiltValue()
abstract class PageDataDeviceProfileInfo
    implements
        Built<PageDataDeviceProfileInfo, PageDataDeviceProfileInfoBuilder> {
  /// Array of the entities
  @BuiltValueField(wireName: r'data')
  BuiltList<DeviceProfileInfo>? get data;

  /// Total number of available pages. Calculated based on the 'pageSize' request parameter and total number of entities that match search criteria
  @BuiltValueField(wireName: r'totalPages')
  int? get totalPages;

  /// Total number of elements in all available pages
  @BuiltValueField(wireName: r'totalElements')
  int? get totalElements;

  /// 'false' value indicates the end of the result set
  @BuiltValueField(wireName: r'hasNext')
  bool? get hasNext;

  PageDataDeviceProfileInfo._();

  factory PageDataDeviceProfileInfo([
    void updates(PageDataDeviceProfileInfoBuilder b),
  ]) = _$PageDataDeviceProfileInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PageDataDeviceProfileInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PageDataDeviceProfileInfo> get serializer =>
      _$PageDataDeviceProfileInfoSerializer();
}

class _$PageDataDeviceProfileInfoSerializer
    implements PrimitiveSerializer<PageDataDeviceProfileInfo> {
  @override
  final Iterable<Type> types = const [
    PageDataDeviceProfileInfo,
    _$PageDataDeviceProfileInfo,
  ];

  @override
  final String wireName = r'PageDataDeviceProfileInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PageDataDeviceProfileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(DeviceProfileInfo)]),
      );
    }
    if (object.totalPages != null) {
      yield r'totalPages';
      yield serializers.serialize(
        object.totalPages,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalElements != null) {
      yield r'totalElements';
      yield serializers.serialize(
        object.totalElements,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasNext != null) {
      yield r'hasNext';
      yield serializers.serialize(
        object.hasNext,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PageDataDeviceProfileInfo object, {
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
    required PageDataDeviceProfileInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DeviceProfileInfo),
                    ]),
                  )
                  as BuiltList<DeviceProfileInfo>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'totalPages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalPages = valueDes;
          break;
        case r'totalElements':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalElements = valueDes;
          break;
        case r'hasNext':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasNext = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PageDataDeviceProfileInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PageDataDeviceProfileInfoBuilder();
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

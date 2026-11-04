// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_type_filter.g.dart';

/// DeviceTypeFilter
///
/// Properties:
/// * [type] 
/// * [deviceTypes] 
/// * [deviceNameFilter] 
/// * [deviceType] 
@BuiltValue()
abstract class DeviceTypeFilter implements EntityFilter, Built<DeviceTypeFilter, DeviceTypeFilterBuilder> {
  @Deprecated('deviceType has been deprecated')
  @BuiltValueField(wireName: r'deviceType')
  String? get deviceType;

  @BuiltValueField(wireName: r'deviceTypes')
  BuiltList<String>? get deviceTypes;

  @BuiltValueField(wireName: r'deviceNameFilter')
  String? get deviceNameFilter;

  DeviceTypeFilter._();

  factory DeviceTypeFilter([void updates(DeviceTypeFilterBuilder b)]) = _$DeviceTypeFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceTypeFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceTypeFilter> get serializer => _$DeviceTypeFilterSerializer();
}

class _$DeviceTypeFilterSerializer implements PrimitiveSerializer<DeviceTypeFilter> {
  @override
  final Iterable<Type> types = const [DeviceTypeFilter, _$DeviceTypeFilter];

  @override
  final String wireName = r'DeviceTypeFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceTypeFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deviceType != null) {
      yield r'deviceType';
      yield serializers.serialize(
        object.deviceType,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceNameFilter != null) {
      yield r'deviceNameFilter';
      yield serializers.serialize(
        object.deviceNameFilter,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceTypes != null) {
      yield r'deviceTypes';
      yield serializers.serialize(
        object.deviceTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceTypeFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceTypeFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deviceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceType = valueDes;
          break;
        case r'deviceNameFilter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceNameFilter = valueDes;
          break;
        case r'deviceTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.deviceTypes.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceTypeFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceTypeFilterBuilder();
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



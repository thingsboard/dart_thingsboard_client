// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/relations_search_parameters.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_search_query.g.dart';

/// The device search query JSON
///
/// Properties:
/// * [parameters] - Main search parameters.
/// * [relationType] - Type of the relation between root entity and device (e.g. 'Contains' or 'Manages').
/// * [deviceTypes] - Array of device types to filter the related entities (e.g. 'Temperature Sensor', 'Smoke Sensor').
@BuiltValue()
abstract class DeviceSearchQuery implements Built<DeviceSearchQuery, DeviceSearchQueryBuilder> {
  /// Main search parameters.
  @BuiltValueField(wireName: r'parameters')
  RelationsSearchParameters? get parameters;

  /// Type of the relation between root entity and device (e.g. 'Contains' or 'Manages').
  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  /// Array of device types to filter the related entities (e.g. 'Temperature Sensor', 'Smoke Sensor').
  @BuiltValueField(wireName: r'deviceTypes')
  BuiltList<String>? get deviceTypes;

  DeviceSearchQuery._();

  factory DeviceSearchQuery([void updates(DeviceSearchQueryBuilder b)]) = _$DeviceSearchQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceSearchQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceSearchQuery> get serializer => _$DeviceSearchQuerySerializer();
}

class _$DeviceSearchQuerySerializer implements PrimitiveSerializer<DeviceSearchQuery> {
  @override
  final Iterable<Type> types = const [DeviceSearchQuery, _$DeviceSearchQuery];

  @override
  final String wireName = r'DeviceSearchQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceSearchQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(RelationsSearchParameters),
      );
    }
    if (object.relationType != null) {
      yield r'relationType';
      yield serializers.serialize(
        object.relationType,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceSearchQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceSearchQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RelationsSearchParameters),
          ) as RelationsSearchParameters?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'relationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relationType = valueDes;
          break;
        case r'deviceTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.deviceTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceSearchQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceSearchQueryBuilder();
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



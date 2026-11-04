// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/system_info_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info.g.dart';

/// SystemInfo
///
/// Properties:
/// * [monolith] - Is monolith.
/// * [systemData] - System data.
@BuiltValue()
abstract class SystemInfo implements Built<SystemInfo, SystemInfoBuilder> {
  /// Is monolith.
  @BuiltValueField(wireName: r'monolith')
  bool? get monolith;

  /// System data.
  @BuiltValueField(wireName: r'systemData')
  BuiltList<SystemInfoData>? get systemData;

  SystemInfo._();

  factory SystemInfo([void updates(SystemInfoBuilder b)]) = _$SystemInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfo> get serializer => _$SystemInfoSerializer();
}

class _$SystemInfoSerializer implements PrimitiveSerializer<SystemInfo> {
  @override
  final Iterable<Type> types = const [SystemInfo, _$SystemInfo];

  @override
  final String wireName = r'SystemInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.monolith != null) {
      yield r'monolith';
      yield serializers.serialize(
        object.monolith,
        specifiedType: const FullType(bool),
      );
    }
    if (object.systemData != null) {
      yield r'systemData';
      yield serializers.serialize(
        object.systemData,
        specifiedType: const FullType(BuiltList, [FullType(SystemInfoData)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SystemInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'monolith':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.monolith = valueDes;
          break;
        case r'systemData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SystemInfoData)]),
          ) as BuiltList<SystemInfoData>?;
          if (valueDes == null) continue;
          result.systemData.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoBuilder();
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



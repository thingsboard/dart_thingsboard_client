// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_data.g.dart';

/// SystemInfoData
///
/// Properties:
/// * [serviceId] - Service Id.
/// * [serviceType] - Service type.
/// * [cpuUsage] - CPU usage, in percent.
/// * [cpuCount] - Total CPU usage.
/// * [memoryUsage] - Memory usage, in percent.
/// * [totalMemory] - Total memory in bytes.
/// * [discUsage] - Disk usage, in percent.
/// * [totalDiscSpace] - Total disc space in bytes.
@BuiltValue()
abstract class SystemInfoData
    implements Built<SystemInfoData, SystemInfoDataBuilder> {
  /// Service Id.
  @BuiltValueField(wireName: r'serviceId')
  String? get serviceId;

  /// Service type.
  @BuiltValueField(wireName: r'serviceType')
  String? get serviceType;

  /// CPU usage, in percent.
  @BuiltValueField(wireName: r'cpuUsage')
  int? get cpuUsage;

  /// Total CPU usage.
  @BuiltValueField(wireName: r'cpuCount')
  int? get cpuCount;

  /// Memory usage, in percent.
  @BuiltValueField(wireName: r'memoryUsage')
  int? get memoryUsage;

  /// Total memory in bytes.
  @BuiltValueField(wireName: r'totalMemory')
  int? get totalMemory;

  /// Disk usage, in percent.
  @BuiltValueField(wireName: r'discUsage')
  int? get discUsage;

  /// Total disc space in bytes.
  @BuiltValueField(wireName: r'totalDiscSpace')
  int? get totalDiscSpace;

  SystemInfoData._();

  factory SystemInfoData([void updates(SystemInfoDataBuilder b)]) =
      _$SystemInfoData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoData> get serializer =>
      _$SystemInfoDataSerializer();
}

class _$SystemInfoDataSerializer
    implements PrimitiveSerializer<SystemInfoData> {
  @override
  final Iterable<Type> types = const [SystemInfoData, _$SystemInfoData];

  @override
  final String wireName = r'SystemInfoData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.serviceId != null) {
      yield r'serviceId';
      yield serializers.serialize(
        object.serviceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceType != null) {
      yield r'serviceType';
      yield serializers.serialize(
        object.serviceType,
        specifiedType: const FullType(String),
      );
    }
    if (object.cpuUsage != null) {
      yield r'cpuUsage';
      yield serializers.serialize(
        object.cpuUsage,
        specifiedType: const FullType(int),
      );
    }
    if (object.cpuCount != null) {
      yield r'cpuCount';
      yield serializers.serialize(
        object.cpuCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.memoryUsage != null) {
      yield r'memoryUsage';
      yield serializers.serialize(
        object.memoryUsage,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalMemory != null) {
      yield r'totalMemory';
      yield serializers.serialize(
        object.totalMemory,
        specifiedType: const FullType(int),
      );
    }
    if (object.discUsage != null) {
      yield r'discUsage';
      yield serializers.serialize(
        object.discUsage,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalDiscSpace != null) {
      yield r'totalDiscSpace';
      yield serializers.serialize(
        object.totalDiscSpace,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoData object, {
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
    required SystemInfoDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'serviceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.serviceId = valueDes;
          break;
        case r'serviceType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.serviceType = valueDes;
          break;
        case r'cpuUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cpuUsage = valueDes;
          break;
        case r'cpuCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cpuCount = valueDes;
          break;
        case r'memoryUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.memoryUsage = valueDes;
          break;
        case r'totalMemory':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalMemory = valueDes;
          break;
        case r'discUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.discUsage = valueDes;
          break;
        case r'totalDiscSpace':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalDiscSpace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoDataBuilder();
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

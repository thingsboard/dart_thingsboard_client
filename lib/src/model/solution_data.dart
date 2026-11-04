// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_export_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'solution_data.g.dart';

/// Portable solution package containing exported entities grouped by type. Represents a self-contained snapshot that can be imported into another tenant.
///
/// Properties:
/// * [entities] - Exported entities grouped by entity type. Each key is an entity type (e.g. DEVICE_PROFILE, RULE_CHAIN) and the value is a list of entity export data objects.
@BuiltValue()
abstract class SolutionData implements Built<SolutionData, SolutionDataBuilder> {
  /// Exported entities grouped by entity type. Each key is an entity type (e.g. DEVICE_PROFILE, RULE_CHAIN) and the value is a list of entity export data objects.
  @BuiltValueField(wireName: r'entities')
  BuiltMap<String, BuiltList<EntityExportData>> get entities;

  SolutionData._();

  factory SolutionData([void updates(SolutionDataBuilder b)]) = _$SolutionData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SolutionDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SolutionData> get serializer => _$SolutionDataSerializer();
}

class _$SolutionDataSerializer implements PrimitiveSerializer<SolutionData> {
  @override
  final Iterable<Type> types = const [SolutionData, _$SolutionData];

  @override
  final String wireName = r'SolutionData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SolutionData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entities';
    yield serializers.serialize(
      object.entities,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(EntityExportData)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SolutionData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SolutionDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(EntityExportData)])]),
          ) as BuiltMap<String, BuiltList<EntityExportData>>;
          result.entities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SolutionData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SolutionDataBuilder();
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



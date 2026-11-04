// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'solution_import_result.g.dart';

/// Result of a solution import operation.
///
/// Properties:
/// * [success] - 'true' if all entities were imported successfully.
/// * [created] - Number of newly created entities per entity type. Entity types with zero created entities are omitted. Entity groups are reported under the ENTITY_GROUP key regardless of their inner type (e.g. a user group and a device group both contribute to ENTITY_GROUP).
/// * [idMapping] - Mapping from external entity IDs (as they appear in the solution file) to the internal entity IDs assigned during import.
@BuiltValue()
abstract class SolutionImportResult implements Built<SolutionImportResult, SolutionImportResultBuilder> {
  /// 'true' if all entities were imported successfully.
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Number of newly created entities per entity type. Entity types with zero created entities are omitted. Entity groups are reported under the ENTITY_GROUP key regardless of their inner type (e.g. a user group and a device group both contribute to ENTITY_GROUP).
  @BuiltValueField(wireName: r'created')
  BuiltMap<String, int>? get created;

  /// Mapping from external entity IDs (as they appear in the solution file) to the internal entity IDs assigned during import.
  @BuiltValueField(wireName: r'idMapping')
  BuiltMap<String, String>? get idMapping;

  SolutionImportResult._();

  factory SolutionImportResult([void updates(SolutionImportResultBuilder b)]) = _$SolutionImportResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SolutionImportResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SolutionImportResult> get serializer => _$SolutionImportResultSerializer();
}

class _$SolutionImportResultSerializer implements PrimitiveSerializer<SolutionImportResult> {
  @override
  final Iterable<Type> types = const [SolutionImportResult, _$SolutionImportResult];

  @override
  final String wireName = r'SolutionImportResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SolutionImportResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.idMapping != null) {
      yield r'idMapping';
      yield serializers.serialize(
        object.idMapping,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SolutionImportResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SolutionImportResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.success = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.created.replace(valueDes);
          break;
        case r'idMapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.idMapping.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SolutionImportResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SolutionImportResultBuilder();
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



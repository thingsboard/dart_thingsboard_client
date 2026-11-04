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

part 'solution_validation_result.g.dart';

/// Result of a solution validation (dry-run). Checks structural validity and dependency references without modifying any data.
///
/// Properties:
/// * [valid] - 'true' if the solution can be imported without errors. 'false' if there are structural issues (empty entities, unsupported types, malformed data).
/// * [entitySummary] - Number of entities per type found in the solution file.
/// * [conflicts] - List of blocking issues that would prevent import (e.g. unsupported entity types, missing or malformed entity data).
/// * [warnings] - List of non-blocking warnings (e.g. missing dependency references).
@BuiltValue()
abstract class SolutionValidationResult
    implements
        Built<SolutionValidationResult, SolutionValidationResultBuilder> {
  /// 'true' if the solution can be imported without errors. 'false' if there are structural issues (empty entities, unsupported types, malformed data).
  @BuiltValueField(wireName: r'valid')
  bool? get valid;

  /// Number of entities per type found in the solution file.
  @BuiltValueField(wireName: r'entitySummary')
  BuiltMap<String, int>? get entitySummary;

  /// List of blocking issues that would prevent import (e.g. unsupported entity types, missing or malformed entity data).
  @BuiltValueField(wireName: r'conflicts')
  BuiltList<String>? get conflicts;

  /// List of non-blocking warnings (e.g. missing dependency references).
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  SolutionValidationResult._();

  factory SolutionValidationResult([
    void updates(SolutionValidationResultBuilder b),
  ]) = _$SolutionValidationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SolutionValidationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SolutionValidationResult> get serializer =>
      _$SolutionValidationResultSerializer();
}

class _$SolutionValidationResultSerializer
    implements PrimitiveSerializer<SolutionValidationResult> {
  @override
  final Iterable<Type> types = const [
    SolutionValidationResult,
    _$SolutionValidationResult,
  ];

  @override
  final String wireName = r'SolutionValidationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SolutionValidationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.valid != null) {
      yield r'valid';
      yield serializers.serialize(
        object.valid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.entitySummary != null) {
      yield r'entitySummary';
      yield serializers.serialize(
        object.entitySummary,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.conflicts != null) {
      yield r'conflicts';
      yield serializers.serialize(
        object.conflicts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SolutionValidationResult object, {
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
    required SolutionValidationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'valid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.valid = valueDes;
          break;
        case r'entitySummary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.entitySummary.replace(valueDes);
          break;
        case r'conflicts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.conflicts.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SolutionValidationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SolutionValidationResultBuilder();
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

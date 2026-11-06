// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/solution_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'solution_export_response.g.dart';

/// Solution export response containing the exported solution data and any dependency warnings.
///
/// Properties:
/// * [solution] - The exported solution data containing all requested entities grouped by type.
/// * [warnings] - List of dependency warnings. Generated when exported entities reference other entities that are not included in the export (e.g. a device profile references a rule chain that was not selected for export).
@BuiltValue()
abstract class SolutionExportResponse
    implements Built<SolutionExportResponse, SolutionExportResponseBuilder> {
  /// The exported solution data containing all requested entities grouped by type.
  @BuiltValueField(wireName: r'solution')
  SolutionData? get solution;

  /// List of dependency warnings. Generated when exported entities reference other entities that are not included in the export (e.g. a device profile references a rule chain that was not selected for export).
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  SolutionExportResponse._();

  factory SolutionExportResponse([
    void updates(SolutionExportResponseBuilder b),
  ]) = _$SolutionExportResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SolutionExportResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SolutionExportResponse> get serializer =>
      _$SolutionExportResponseSerializer();
}

class _$SolutionExportResponseSerializer
    implements PrimitiveSerializer<SolutionExportResponse> {
  @override
  final Iterable<Type> types = const [
    SolutionExportResponse,
    _$SolutionExportResponse,
  ];

  @override
  final String wireName = r'SolutionExportResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SolutionExportResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.solution != null) {
      yield r'solution';
      yield serializers.serialize(
        object.solution,
        specifiedType: const FullType(SolutionData),
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
    SolutionExportResponse object, {
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
    required SolutionExportResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'solution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SolutionData),
                  )
                  as SolutionData?;
          if (valueDes == null) continue;
          result.solution.replace(valueDes);
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
  SolutionExportResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SolutionExportResponseBuilder();
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

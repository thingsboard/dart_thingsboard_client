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

part 'bulk_import_result_edge.g.dart';

/// BulkImportResultEdge
///
/// Properties:
/// * [created]
/// * [updated]
/// * [errors]
/// * [errorsList]
@BuiltValue()
abstract class BulkImportResultEdge
    implements Built<BulkImportResultEdge, BulkImportResultEdgeBuilder> {
  @BuiltValueField(wireName: r'created')
  int? get created;

  @BuiltValueField(wireName: r'updated')
  int? get updated;

  @BuiltValueField(wireName: r'errors')
  int? get errors;

  @BuiltValueField(wireName: r'errorsList')
  BuiltList<String>? get errorsList;

  BulkImportResultEdge._();

  factory BulkImportResultEdge([void updates(BulkImportResultEdgeBuilder b)]) =
      _$BulkImportResultEdge;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkImportResultEdgeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkImportResultEdge> get serializer =>
      _$BulkImportResultEdgeSerializer();
}

class _$BulkImportResultEdgeSerializer
    implements PrimitiveSerializer<BulkImportResultEdge> {
  @override
  final Iterable<Type> types = const [
    BulkImportResultEdge,
    _$BulkImportResultEdge,
  ];

  @override
  final String wireName = r'BulkImportResultEdge';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkImportResultEdge object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(int),
      );
    }
    if (object.updated != null) {
      yield r'updated';
      yield serializers.serialize(
        object.updated,
        specifiedType: const FullType(int),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(int),
      );
    }
    if (object.errorsList != null) {
      yield r'errorsList';
      yield serializers.serialize(
        object.errorsList,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkImportResultEdge object, {
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
    required BulkImportResultEdgeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.created = valueDes;
          break;
        case r'updated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.updated = valueDes;
          break;
        case r'errors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.errors = valueDes;
          break;
        case r'errorsList':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.errorsList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkImportResultEdge deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkImportResultEdgeBuilder();
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

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

part 'edge_search_query.g.dart';

/// EdgeSearchQuery
///
/// Properties:
/// * [parameters] - Main search parameters.
/// * [relationType] - Type of the relation between root entity and edge (e.g. 'Contains' or 'Manages').
/// * [edgeTypes] - Array of edge types to filter the related entities (e.g. 'Silos', 'Stores').
@BuiltValue()
abstract class EdgeSearchQuery
    implements Built<EdgeSearchQuery, EdgeSearchQueryBuilder> {
  /// Main search parameters.
  @BuiltValueField(wireName: r'parameters')
  RelationsSearchParameters? get parameters;

  /// Type of the relation between root entity and edge (e.g. 'Contains' or 'Manages').
  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  /// Array of edge types to filter the related entities (e.g. 'Silos', 'Stores').
  @BuiltValueField(wireName: r'edgeTypes')
  BuiltList<String>? get edgeTypes;

  EdgeSearchQuery._();

  factory EdgeSearchQuery([void updates(EdgeSearchQueryBuilder b)]) =
      _$EdgeSearchQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeSearchQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeSearchQuery> get serializer =>
      _$EdgeSearchQuerySerializer();
}

class _$EdgeSearchQuerySerializer
    implements PrimitiveSerializer<EdgeSearchQuery> {
  @override
  final Iterable<Type> types = const [EdgeSearchQuery, _$EdgeSearchQuery];

  @override
  final String wireName = r'EdgeSearchQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeSearchQuery object, {
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
    if (object.edgeTypes != null) {
      yield r'edgeTypes';
      yield serializers.serialize(
        object.edgeTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdgeSearchQuery object, {
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
    required EdgeSearchQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parameters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RelationsSearchParameters,
                    ),
                  )
                  as RelationsSearchParameters?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'relationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.relationType = valueDes;
          break;
        case r'edgeTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.edgeTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdgeSearchQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeSearchQueryBuilder();
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

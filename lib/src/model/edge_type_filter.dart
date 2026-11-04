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

part 'edge_type_filter.g.dart';

/// EdgeTypeFilter
///
/// Properties:
/// * [type]
/// * [edgeTypes]
/// * [edgeNameFilter]
/// * [edgeType]
@BuiltValue()
abstract class EdgeTypeFilter
    implements EntityFilter, Built<EdgeTypeFilter, EdgeTypeFilterBuilder> {
  @BuiltValueField(wireName: r'edgeNameFilter')
  String? get edgeNameFilter;

  @BuiltValueField(wireName: r'edgeTypes')
  BuiltList<String>? get edgeTypes;

  @Deprecated('edgeType has been deprecated')
  @BuiltValueField(wireName: r'edgeType')
  String? get edgeType;

  EdgeTypeFilter._();

  factory EdgeTypeFilter([void updates(EdgeTypeFilterBuilder b)]) =
      _$EdgeTypeFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeTypeFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeTypeFilter> get serializer =>
      _$EdgeTypeFilterSerializer();
}

class _$EdgeTypeFilterSerializer
    implements PrimitiveSerializer<EdgeTypeFilter> {
  @override
  final Iterable<Type> types = const [EdgeTypeFilter, _$EdgeTypeFilter];

  @override
  final String wireName = r'EdgeTypeFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeTypeFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.edgeNameFilter != null) {
      yield r'edgeNameFilter';
      yield serializers.serialize(
        object.edgeNameFilter,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.edgeTypes != null) {
      yield r'edgeTypes';
      yield serializers.serialize(
        object.edgeTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.edgeType != null) {
      yield r'edgeType';
      yield serializers.serialize(
        object.edgeType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdgeTypeFilter object, {
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
    required EdgeTypeFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'edgeNameFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.edgeNameFilter = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
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
        case r'edgeType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.edgeType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdgeTypeFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeTypeFilterBuilder();
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

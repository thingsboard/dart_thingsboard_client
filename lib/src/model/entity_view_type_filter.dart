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

part 'entity_view_type_filter.g.dart';

/// EntityViewTypeFilter
///
/// Properties:
/// * [type]
/// * [entityViewTypes]
/// * [entityViewNameFilter]
/// * [entityViewType]
@BuiltValue()
abstract class EntityViewTypeFilter
    implements
        EntityFilter,
        Built<EntityViewTypeFilter, EntityViewTypeFilterBuilder> {
  @BuiltValueField(wireName: r'entityViewNameFilter')
  String? get entityViewNameFilter;

  @BuiltValueField(wireName: r'entityViewTypes')
  BuiltList<String>? get entityViewTypes;

  @Deprecated('entityViewType has been deprecated')
  @BuiltValueField(wireName: r'entityViewType')
  String? get entityViewType;

  EntityViewTypeFilter._();

  factory EntityViewTypeFilter([void updates(EntityViewTypeFilterBuilder b)]) =
      _$EntityViewTypeFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityViewTypeFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityViewTypeFilter> get serializer =>
      _$EntityViewTypeFilterSerializer();
}

class _$EntityViewTypeFilterSerializer
    implements PrimitiveSerializer<EntityViewTypeFilter> {
  @override
  final Iterable<Type> types = const [
    EntityViewTypeFilter,
    _$EntityViewTypeFilter,
  ];

  @override
  final String wireName = r'EntityViewTypeFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityViewTypeFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityViewNameFilter != null) {
      yield r'entityViewNameFilter';
      yield serializers.serialize(
        object.entityViewNameFilter,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityViewType != null) {
      yield r'entityViewType';
      yield serializers.serialize(
        object.entityViewType,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.entityViewTypes != null) {
      yield r'entityViewTypes';
      yield serializers.serialize(
        object.entityViewTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityViewTypeFilter object, {
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
    required EntityViewTypeFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityViewNameFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityViewNameFilter = valueDes;
          break;
        case r'entityViewType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityViewType = valueDes;
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
        case r'entityViewTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.entityViewTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityViewTypeFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityViewTypeFilterBuilder();
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

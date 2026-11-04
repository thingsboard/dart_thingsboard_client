// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_data_sort_order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_data_page_link.g.dart';

/// EntityDataPageLink
///
/// Properties:
/// * [pageSize]
/// * [page]
/// * [textSearch]
/// * [sortOrder]
/// * [dynamic_]
@BuiltValue()
abstract class EntityDataPageLink
    implements Built<EntityDataPageLink, EntityDataPageLinkBuilder> {
  @BuiltValueField(wireName: r'pageSize')
  int? get pageSize;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'textSearch')
  String? get textSearch;

  @BuiltValueField(wireName: r'sortOrder')
  EntityDataSortOrder? get sortOrder;

  @BuiltValueField(wireName: r'dynamic')
  bool? get dynamic_;

  EntityDataPageLink._();

  factory EntityDataPageLink([void updates(EntityDataPageLinkBuilder b)]) =
      _$EntityDataPageLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityDataPageLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityDataPageLink> get serializer =>
      _$EntityDataPageLinkSerializer();
}

class _$EntityDataPageLinkSerializer
    implements PrimitiveSerializer<EntityDataPageLink> {
  @override
  final Iterable<Type> types = const [EntityDataPageLink, _$EntityDataPageLink];

  @override
  final String wireName = r'EntityDataPageLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityDataPageLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pageSize != null) {
      yield r'pageSize';
      yield serializers.serialize(
        object.pageSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.textSearch != null) {
      yield r'textSearch';
      yield serializers.serialize(
        object.textSearch,
        specifiedType: const FullType(String),
      );
    }
    if (object.sortOrder != null) {
      yield r'sortOrder';
      yield serializers.serialize(
        object.sortOrder,
        specifiedType: const FullType(EntityDataSortOrder),
      );
    }
    if (object.dynamic_ != null) {
      yield r'dynamic';
      yield serializers.serialize(
        object.dynamic_,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityDataPageLink object, {
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
    required EntityDataPageLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pageSize':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.pageSize = valueDes;
          break;
        case r'page':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        case r'textSearch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.textSearch = valueDes;
          break;
        case r'sortOrder':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityDataSortOrder),
                  )
                  as EntityDataSortOrder?;
          if (valueDes == null) continue;
          result.sortOrder.replace(valueDes);
          break;
        case r'dynamic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.dynamic_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityDataPageLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityDataPageLinkBuilder();
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

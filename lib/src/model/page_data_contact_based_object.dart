// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/contact_based_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_data_contact_based_object.g.dart';

/// PageDataContactBasedObject
///
/// Properties:
/// * [data] - Array of the entities
/// * [hasNext] - 'false' value indicates the end of the result set
/// * [totalElements] - Total number of elements in all available pages
/// * [totalPages] - Total number of available pages. Calculated based on the 'pageSize' request parameter and total number of entities that match search criteria
@BuiltValue()
abstract class PageDataContactBasedObject
    implements
        Built<PageDataContactBasedObject, PageDataContactBasedObjectBuilder> {
  /// Array of the entities
  @BuiltValueField(wireName: r'data')
  BuiltList<ContactBasedObject>? get data;

  /// 'false' value indicates the end of the result set
  @BuiltValueField(wireName: r'hasNext')
  bool? get hasNext;

  /// Total number of elements in all available pages
  @BuiltValueField(wireName: r'totalElements')
  int? get totalElements;

  /// Total number of available pages. Calculated based on the 'pageSize' request parameter and total number of entities that match search criteria
  @BuiltValueField(wireName: r'totalPages')
  int? get totalPages;

  PageDataContactBasedObject._();

  factory PageDataContactBasedObject([
    void updates(PageDataContactBasedObjectBuilder b),
  ]) = _$PageDataContactBasedObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PageDataContactBasedObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PageDataContactBasedObject> get serializer =>
      _$PageDataContactBasedObjectSerializer();
}

class _$PageDataContactBasedObjectSerializer
    implements PrimitiveSerializer<PageDataContactBasedObject> {
  @override
  final Iterable<Type> types = const [
    PageDataContactBasedObject,
    _$PageDataContactBasedObject,
  ];

  @override
  final String wireName = r'PageDataContactBasedObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PageDataContactBasedObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [
          FullType(ContactBasedObject),
        ]),
      );
    }
    if (object.hasNext != null) {
      yield r'hasNext';
      yield serializers.serialize(
        object.hasNext,
        specifiedType: const FullType(bool),
      );
    }
    if (object.totalElements != null) {
      yield r'totalElements';
      yield serializers.serialize(
        object.totalElements,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPages != null) {
      yield r'totalPages';
      yield serializers.serialize(
        object.totalPages,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PageDataContactBasedObject object, {
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
    required PageDataContactBasedObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ContactBasedObject),
                    ]),
                  )
                  as BuiltList<ContactBasedObject>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'hasNext':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasNext = valueDes;
          break;
        case r'totalElements':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalElements = valueDes;
          break;
        case r'totalPages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalPages = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PageDataContactBasedObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PageDataContactBasedObjectBuilder();
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

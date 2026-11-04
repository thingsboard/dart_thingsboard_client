// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/object_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edqs_sync_request.g.dart';

/// EdqsSyncRequest
///
/// Properties:
/// * [objectTypes] 
@BuiltValue()
abstract class EdqsSyncRequest implements Built<EdqsSyncRequest, EdqsSyncRequestBuilder> {
  @BuiltValueField(wireName: r'objectTypes')
  BuiltSet<ObjectType>? get objectTypes;

  EdqsSyncRequest._();

  factory EdqsSyncRequest([void updates(EdqsSyncRequestBuilder b)]) = _$EdqsSyncRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdqsSyncRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdqsSyncRequest> get serializer => _$EdqsSyncRequestSerializer();
}

class _$EdqsSyncRequestSerializer implements PrimitiveSerializer<EdqsSyncRequest> {
  @override
  final Iterable<Type> types = const [EdqsSyncRequest, _$EdqsSyncRequest];

  @override
  final String wireName = r'EdqsSyncRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdqsSyncRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.objectTypes != null) {
      yield r'objectTypes';
      yield serializers.serialize(
        object.objectTypes,
        specifiedType: const FullType(BuiltSet, [FullType(ObjectType)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdqsSyncRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdqsSyncRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'objectTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(ObjectType)]),
          ) as BuiltSet<ObjectType>?;
          if (valueDes == null) continue;
          result.objectTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdqsSyncRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdqsSyncRequestBuilder();
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



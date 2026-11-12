// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alias_entity_id.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_entity_filter.g.dart';

/// SingleEntityFilter
///
/// Properties:
/// * [type]
/// * [singleEntity]
@BuiltValue()
abstract class SingleEntityFilter
    implements
        EntityFilter,
        Built<SingleEntityFilter, SingleEntityFilterBuilder> {
  @BuiltValueField(wireName: r'singleEntity')
  AliasEntityId? get singleEntity;

  SingleEntityFilter._();

  factory SingleEntityFilter([void updates(SingleEntityFilterBuilder b)]) =
      _$SingleEntityFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SingleEntityFilterBuilder b) =>
      b..type = r'singleEntity';

  @BuiltValueSerializer(custom: true)
  static Serializer<SingleEntityFilter> get serializer =>
      _$SingleEntityFilterSerializer();
}

class _$SingleEntityFilterSerializer
    implements PrimitiveSerializer<SingleEntityFilter> {
  @override
  final Iterable<Type> types = const [SingleEntityFilter, _$SingleEntityFilter];

  @override
  final String wireName = r'SingleEntityFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SingleEntityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.singleEntity != null) {
      yield r'singleEntity';
      yield serializers.serialize(
        object.singleEntity,
        specifiedType: const FullType(AliasEntityId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SingleEntityFilter object, {
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
    required SingleEntityFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'singleEntity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AliasEntityId),
                  )
                  as AliasEntityId?;
          if (valueDes == null) continue;
          result.singleEntity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SingleEntityFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SingleEntityFilterBuilder();
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

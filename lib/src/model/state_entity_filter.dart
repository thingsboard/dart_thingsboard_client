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

part 'state_entity_filter.g.dart';

/// StateEntityFilter
///
/// Properties:
/// * [type]
/// * [defaultStateEntity]
@BuiltValue()
abstract class StateEntityFilter
    implements
        EntityFilter,
        Built<StateEntityFilter, StateEntityFilterBuilder> {
  @BuiltValueField(wireName: r'defaultStateEntity')
  AliasEntityId? get defaultStateEntity;

  StateEntityFilter._();

  factory StateEntityFilter([void updates(StateEntityFilterBuilder b)]) =
      _$StateEntityFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StateEntityFilterBuilder b) => b..type = r'stateEntity';

  @BuiltValueSerializer(custom: true)
  static Serializer<StateEntityFilter> get serializer =>
      _$StateEntityFilterSerializer();
}

class _$StateEntityFilterSerializer
    implements PrimitiveSerializer<StateEntityFilter> {
  @override
  final Iterable<Type> types = const [StateEntityFilter, _$StateEntityFilter];

  @override
  final String wireName = r'StateEntityFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StateEntityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.defaultStateEntity != null) {
      yield r'defaultStateEntity';
      yield serializers.serialize(
        object.defaultStateEntity,
        specifiedType: const FullType(AliasEntityId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StateEntityFilter object, {
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
    required StateEntityFilterBuilder result,
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
        case r'defaultStateEntity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AliasEntityId),
                  )
                  as AliasEntityId?;
          if (valueDes == null) continue;
          result.defaultStateEntity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StateEntityFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StateEntityFilterBuilder();
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

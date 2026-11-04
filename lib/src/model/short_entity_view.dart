// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'short_entity_view.g.dart';

/// ShortEntityView
///
/// Properties:
/// * [id] - Entity Id object
/// * [name] - Name of the entity
@BuiltValue()
abstract class ShortEntityView
    implements Built<ShortEntityView, ShortEntityViewBuilder> {
  /// Entity Id object
  @BuiltValueField(wireName: r'id')
  EntityId get id;

  /// Name of the entity
  @BuiltValueField(wireName: r'name')
  String get name;

  ShortEntityView._();

  factory ShortEntityView([void updates(ShortEntityViewBuilder b)]) =
      _$ShortEntityView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShortEntityViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShortEntityView> get serializer =>
      _$ShortEntityViewSerializer();
}

class _$ShortEntityViewSerializer
    implements PrimitiveSerializer<ShortEntityView> {
  @override
  final Iterable<Type> types = const [ShortEntityView, _$ShortEntityView];

  @override
  final String wireName = r'ShortEntityView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShortEntityView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(EntityId),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ShortEntityView object, {
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
    required ShortEntityViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityId),
                  )
                  as EntityId;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShortEntityView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShortEntityViewBuilder();
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

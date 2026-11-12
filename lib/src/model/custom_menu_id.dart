// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_menu_id.g.dart';

/// CustomMenuId
///
/// Properties:
/// * [id] - string
@BuiltValue()
abstract class CustomMenuId
    implements Built<CustomMenuId, CustomMenuIdBuilder> {
  /// string
  @BuiltValueField(wireName: r'id')
  String get id;

  CustomMenuId._();

  factory CustomMenuId([void updates(CustomMenuIdBuilder b)]) = _$CustomMenuId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomMenuIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomMenuId> get serializer => _$CustomMenuIdSerializer();
}

class _$CustomMenuIdSerializer implements PrimitiveSerializer<CustomMenuId> {
  @override
  final Iterable<Type> types = const [CustomMenuId, _$CustomMenuId];

  @override
  final String wireName = r'CustomMenuId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomMenuId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomMenuId object, {
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
    required CustomMenuIdBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomMenuId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomMenuIdBuilder();
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

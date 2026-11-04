// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/menu_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_menu_config.g.dart';

/// CustomMenuConfig
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class CustomMenuConfig
    implements Built<CustomMenuConfig, CustomMenuConfigBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<MenuItem>? get items;

  CustomMenuConfig._();

  factory CustomMenuConfig([void updates(CustomMenuConfigBuilder b)]) =
      _$CustomMenuConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomMenuConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomMenuConfig> get serializer =>
      _$CustomMenuConfigSerializer();
}

class _$CustomMenuConfigSerializer
    implements PrimitiveSerializer<CustomMenuConfig> {
  @override
  final Iterable<Type> types = const [CustomMenuConfig, _$CustomMenuConfig];

  @override
  final String wireName = r'CustomMenuConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomMenuConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(MenuItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomMenuConfig object, {
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
    required CustomMenuConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(MenuItem),
                    ]),
                  )
                  as BuiltList<MenuItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomMenuConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomMenuConfigBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/menu_item_type.dart';
import 'package:thingsboard_client/src/model/menu_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_menu_item.g.dart';

/// DefaultMenuItem
///
/// Properties:
/// * [type] - Menu item type
/// * [visible] - Mark if menu item is visible for user
/// * [id] - Unique identifier for predefined menu items
/// * [name] - Name of the menu item
/// * [icon] - URL of the menu item icon. Overrides 'materialIcon'
/// * [pages] - List of child menu items
@BuiltValue()
abstract class DefaultMenuItem
    implements MenuItem, Built<DefaultMenuItem, DefaultMenuItemBuilder> {
  /// List of child menu items
  @BuiltValueField(wireName: r'pages')
  BuiltList<DefaultMenuItem>? get pages;

  /// Name of the menu item
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// URL of the menu item icon. Overrides 'materialIcon'
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Unique identifier for predefined menu items
  @BuiltValueField(wireName: r'id')
  String? get id;

  DefaultMenuItem._();

  factory DefaultMenuItem([void updates(DefaultMenuItemBuilder b)]) =
      _$DefaultMenuItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultMenuItemBuilder b) =>
      b..type = MenuItemType.DEFAULT;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultMenuItem> get serializer =>
      _$DefaultMenuItemSerializer();
}

class _$DefaultMenuItemSerializer
    implements PrimitiveSerializer<DefaultMenuItem> {
  @override
  final Iterable<Type> types = const [DefaultMenuItem, _$DefaultMenuItem];

  @override
  final String wireName = r'DefaultMenuItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultMenuItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(BuiltList, [FullType(DefaultMenuItem)]),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MenuItemType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultMenuItem object, {
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
    required DefaultMenuItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'icon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'pages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DefaultMenuItem),
                    ]),
                  )
                  as BuiltList<DefaultMenuItem>?;
          if (valueDes == null) continue;
          result.pages.replace(valueDes);
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'visible':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.visible = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MenuItemType),
                  )
                  as MenuItemType;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DefaultMenuItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultMenuItemBuilder();
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

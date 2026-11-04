// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/default_menu_item.dart';
import 'package:thingsboard_client/src/model/home_menu_item.dart';
import 'package:thingsboard_client/src/model/menu_item_type.dart';
import 'package:thingsboard_client/src/model/custom_menu_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu_item.g.dart';

/// MenuItem
///
/// Properties:
/// * [type] - Menu item type
/// * [visible]
@BuiltValue(instantiable: false)
abstract class MenuItem {
  /// Menu item type
  @BuiltValueField(wireName: r'type')
  MenuItemType get type;
  // enum typeEnum {  HOME,  DEFAULT,  CUSTOM,  };

  @BuiltValueField(wireName: r'visible')
  bool? get visible;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'CUSTOM': CustomMenuItem,
    r'DEFAULT': DefaultMenuItem,
    r'HOME': HomeMenuItem,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<MenuItem> get serializer => _$MenuItemSerializer();
}

extension MenuItemDiscriminatorExt on MenuItem {
  String? get discriminatorValue {
    if (this is CustomMenuItem) {
      return r'CUSTOM';
    }
    if (this is DefaultMenuItem) {
      return r'DEFAULT';
    }
    if (this is HomeMenuItem) {
      return r'HOME';
    }
    return null;
  }
}

extension MenuItemBuilderDiscriminatorExt on MenuItemBuilder {
  String? get discriminatorValue {
    if (this is CustomMenuItemBuilder) {
      return r'CUSTOM';
    }
    if (this is DefaultMenuItemBuilder) {
      return r'DEFAULT';
    }
    if (this is HomeMenuItemBuilder) {
      return r'HOME';
    }
    return null;
  }
}

class _$MenuItemSerializer implements PrimitiveSerializer<MenuItem> {
  @override
  final Iterable<Type> types = const [MenuItem];

  @override
  final String wireName = r'MenuItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MenuItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MenuItemType),
    );
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MenuItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CustomMenuItem) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CustomMenuItem),
      )!;
    }
    if (object is DefaultMenuItem) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DefaultMenuItem),
      )!;
    }
    if (object is HomeMenuItem) {
      return serializers.serialize(
        object,
        specifiedType: FullType(HomeMenuItem),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  MenuItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(MenuItem.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'CUSTOM':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CustomMenuItem),
            )
            as CustomMenuItem;
      case r'DEFAULT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DefaultMenuItem),
            )
            as DefaultMenuItem;
      case r'HOME':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(HomeMenuItem),
            )
            as HomeMenuItem;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($MenuItem),
            )
            as $MenuItem;
    }
  }
}

/// a concrete implementation of [MenuItem], since [MenuItem] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MenuItem
    implements MenuItem, Built<$MenuItem, $MenuItemBuilder> {
  $MenuItem._();

  factory $MenuItem([void Function($MenuItemBuilder)? updates]) = _$$MenuItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MenuItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MenuItem> get serializer => _$$MenuItemSerializer();
}

class _$$MenuItemSerializer implements PrimitiveSerializer<$MenuItem> {
  @override
  final Iterable<Type> types = const [$MenuItem, _$$MenuItem];

  @override
  final String wireName = r'$MenuItem';

  @override
  Object serialize(
    Serializers serializers,
    $MenuItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MenuItem))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MenuItemBuilder result,
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
                    specifiedType: const FullType(MenuItemType),
                  )
                  as MenuItemType;
          result.type = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MenuItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MenuItemBuilder();
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

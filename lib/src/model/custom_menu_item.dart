// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/cm_item_type.dart';
import 'package:thingsboard_client/src/model/menu_item_type.dart';
import 'package:thingsboard_client/src/model/menu_item.dart';
import 'package:thingsboard_client/src/model/cm_item_link_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_menu_item.g.dart';

/// CustomMenuItem
///
/// Properties:
/// * [type] - Menu item type
/// * [visible] - Mark if menu item is visible for user
/// * [name] - Name of the menu item
/// * [icon] - URL of the menu item icon. Overrides 'materialIcon'
/// * [menuItemType] - Type of menu item (LINK or SECTION). LINK type means item has no child items, SECTION type should have at least one child
/// * [linkType] - Type of menu item (URL or DASHBOARD)
/// * [dashboardId] - Id of the Dashboard to open, when user clicks the menu item
/// * [hideDashboardToolbar] - Hide the dashboard toolbar
/// * [url] - URL to open in the iframe, when user clicks the menu item
/// * [setAccessToken] - Set the access token of the current user to a new dashboard
/// * [pages] - List of child menu items
@BuiltValue()
abstract class CustomMenuItem
    implements MenuItem, Built<CustomMenuItem, CustomMenuItemBuilder> {
  /// Type of menu item (LINK or SECTION). LINK type means item has no child items, SECTION type should have at least one child
  @BuiltValueField(wireName: r'menuItemType')
  CMItemType get menuItemType;
  // enum menuItemTypeEnum {  LINK,  SECTION,  };

  /// List of child menu items
  @BuiltValueField(wireName: r'pages')
  BuiltList<CustomMenuItem>? get pages;

  /// Id of the Dashboard to open, when user clicks the menu item
  @BuiltValueField(wireName: r'dashboardId')
  String? get dashboardId;

  /// Set the access token of the current user to a new dashboard
  @BuiltValueField(wireName: r'setAccessToken')
  bool? get setAccessToken;

  /// Name of the menu item
  @BuiltValueField(wireName: r'name')
  String get name;

  /// URL of the menu item icon. Overrides 'materialIcon'
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Type of menu item (URL or DASHBOARD)
  @BuiltValueField(wireName: r'linkType')
  CMItemLinkType? get linkType;
  // enum linkTypeEnum {  URL,  DASHBOARD,  };

  /// Hide the dashboard toolbar
  @BuiltValueField(wireName: r'hideDashboardToolbar')
  bool? get hideDashboardToolbar;

  /// URL to open in the iframe, when user clicks the menu item
  @BuiltValueField(wireName: r'url')
  String? get url;

  CustomMenuItem._();

  factory CustomMenuItem([void updates(CustomMenuItemBuilder b)]) =
      _$CustomMenuItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomMenuItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomMenuItem> get serializer =>
      _$CustomMenuItemSerializer();
}

class _$CustomMenuItemSerializer
    implements PrimitiveSerializer<CustomMenuItem> {
  @override
  final Iterable<Type> types = const [CustomMenuItem, _$CustomMenuItem];

  @override
  final String wireName = r'CustomMenuItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomMenuItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'menuItemType';
    yield serializers.serialize(
      object.menuItemType,
      specifiedType: const FullType(CMItemType),
    );
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(BuiltList, [FullType(CustomMenuItem)]),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(String),
      );
    }
    if (object.setAccessToken != null) {
      yield r'setAccessToken';
      yield serializers.serialize(
        object.setAccessToken,
        specifiedType: const FullType(bool),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.linkType != null) {
      yield r'linkType';
      yield serializers.serialize(
        object.linkType,
        specifiedType: const FullType(CMItemLinkType),
      );
    }
    if (object.hideDashboardToolbar != null) {
      yield r'hideDashboardToolbar';
      yield serializers.serialize(
        object.hideDashboardToolbar,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MenuItemType),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomMenuItem object, {
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
    required CustomMenuItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'menuItemType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CMItemType),
                  )
                  as CMItemType;
          result.menuItemType = valueDes;
          break;
        case r'pages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CustomMenuItem),
                    ]),
                  )
                  as BuiltList<CustomMenuItem>?;
          if (valueDes == null) continue;
          result.pages.replace(valueDes);
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
        case r'dashboardId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dashboardId = valueDes;
          break;
        case r'setAccessToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.setAccessToken = valueDes;
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
        case r'linkType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CMItemLinkType),
                  )
                  as CMItemLinkType?;
          if (valueDes == null) continue;
          result.linkType = valueDes;
          break;
        case r'hideDashboardToolbar':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hideDashboardToolbar = valueDes;
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
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomMenuItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomMenuItemBuilder();
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

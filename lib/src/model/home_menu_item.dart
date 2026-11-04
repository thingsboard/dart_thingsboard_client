// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/home_menu_item_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/default_menu_item.dart';
import 'package:thingsboard_client/src/model/menu_item_type.dart';
import 'package:thingsboard_client/src/model/menu_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'home_menu_item.g.dart';

/// HomeMenuItem
///
/// Properties:
/// * [type] - Menu item type
/// * [visible] 
/// * [id] - Unique identifier for predefined menu items
/// * [name] - Name of the menu item
/// * [icon] - URL of the menu item icon. Overrides 'materialIcon'
/// * [pages] - List of child menu items
/// * [homeType] - DEFAULT or DASHBOARD. DASHBOARD means default home page presentation changed to refer to dashboard
/// * [dashboardId] - Id of the Dashboard to open, when user clicks the menu item
/// * [hideDashboardToolbar] - Hide the dashboard toolbar
@BuiltValue()
abstract class HomeMenuItem implements MenuItem, Built<HomeMenuItem, HomeMenuItemBuilder> {
  /// List of child menu items
  @BuiltValueField(wireName: r'pages')
  BuiltList<DefaultMenuItem>? get pages;

  /// Id of the Dashboard to open, when user clicks the menu item
  @BuiltValueField(wireName: r'dashboardId')
  String? get dashboardId;

  /// Name of the menu item
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// URL of the menu item icon. Overrides 'materialIcon'
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Unique identifier for predefined menu items
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Hide the dashboard toolbar
  @BuiltValueField(wireName: r'hideDashboardToolbar')
  bool? get hideDashboardToolbar;

  /// DEFAULT or DASHBOARD. DASHBOARD means default home page presentation changed to refer to dashboard
  @BuiltValueField(wireName: r'homeType')
  HomeMenuItemType? get homeType;
  // enum homeTypeEnum {  DEFAULT,  DASHBOARD,  };

  HomeMenuItem._();

  factory HomeMenuItem([void updates(HomeMenuItemBuilder b)]) = _$HomeMenuItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HomeMenuItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HomeMenuItem> get serializer => _$HomeMenuItemSerializer();
}

class _$HomeMenuItemSerializer implements PrimitiveSerializer<HomeMenuItem> {
  @override
  final Iterable<Type> types = const [HomeMenuItem, _$HomeMenuItem];

  @override
  final String wireName = r'HomeMenuItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HomeMenuItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(BuiltList, [FullType(DefaultMenuItem)]),
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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.hideDashboardToolbar != null) {
      yield r'hideDashboardToolbar';
      yield serializers.serialize(
        object.hideDashboardToolbar,
        specifiedType: const FullType(bool),
      );
    }
    if (object.homeType != null) {
      yield r'homeType';
      yield serializers.serialize(
        object.homeType,
        specifiedType: const FullType(HomeMenuItemType),
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
    HomeMenuItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HomeMenuItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DefaultMenuItem)]),
          ) as BuiltList<DefaultMenuItem>?;
          if (valueDes == null) continue;
          result.pages.replace(valueDes);
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.visible = valueDes;
          break;
        case r'dashboardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dashboardId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'hideDashboardToolbar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hideDashboardToolbar = valueDes;
          break;
        case r'homeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HomeMenuItemType),
          ) as HomeMenuItemType?;
          if (valueDes == null) continue;
          result.homeType = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MenuItemType),
          ) as MenuItemType;
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
  HomeMenuItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HomeMenuItemBuilder();
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



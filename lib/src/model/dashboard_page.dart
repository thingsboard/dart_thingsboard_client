// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mobile_page.dart';
import 'package:thingsboard_client/src/model/mobile_page_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_page.g.dart';

/// DashboardPage
///
/// Properties:
/// * [type] 
/// * [visible] 
/// * [label] - Page label
/// * [icon] - URL of the page icon
/// * [dashboardId] - Dashboard id
@BuiltValue()
abstract class DashboardPage implements MobilePage, Built<DashboardPage, DashboardPageBuilder> {
  /// Dashboard id
  @BuiltValueField(wireName: r'dashboardId')
  String? get dashboardId;

  /// URL of the page icon
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Page label
  @BuiltValueField(wireName: r'label')
  String? get label;

  DashboardPage._();

  factory DashboardPage([void updates(DashboardPageBuilder b)]) = _$DashboardPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardPage> get serializer => _$DashboardPageSerializer();
}

class _$DashboardPageSerializer implements PrimitiveSerializer<DashboardPage> {
  @override
  final Iterable<Type> types = const [DashboardPage, _$DashboardPage];

  @override
  final String wireName = r'DashboardPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
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
      specifiedType: const FullType(MobilePageType),
    );
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardPage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DashboardPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.visible = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MobilePageType),
          ) as MobilePageType;
          result.type = valueDes;
          break;
        case r'dashboardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dashboardId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardPageBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'home_dashboard_info.g.dart';

/// A JSON object that represents home dashboard id and other parameters
///
/// Properties:
/// * [dashboardId] - JSON object with the dashboard Id.
/// * [hideDashboardToolbar] - Hide dashboard toolbar flag. Useful for rendering dashboards on mobile.
@BuiltValue()
abstract class HomeDashboardInfo
    implements Built<HomeDashboardInfo, HomeDashboardInfoBuilder> {
  /// JSON object with the dashboard Id.
  @BuiltValueField(wireName: r'dashboardId')
  DashboardId? get dashboardId;

  /// Hide dashboard toolbar flag. Useful for rendering dashboards on mobile.
  @BuiltValueField(wireName: r'hideDashboardToolbar')
  bool? get hideDashboardToolbar;

  HomeDashboardInfo._();

  factory HomeDashboardInfo([void updates(HomeDashboardInfoBuilder b)]) =
      _$HomeDashboardInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HomeDashboardInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HomeDashboardInfo> get serializer =>
      _$HomeDashboardInfoSerializer();
}

class _$HomeDashboardInfoSerializer
    implements PrimitiveSerializer<HomeDashboardInfo> {
  @override
  final Iterable<Type> types = const [HomeDashboardInfo, _$HomeDashboardInfo];

  @override
  final String wireName = r'HomeDashboardInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HomeDashboardInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.hideDashboardToolbar != null) {
      yield r'hideDashboardToolbar';
      yield serializers.serialize(
        object.hideDashboardToolbar,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HomeDashboardInfo object, {
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
    required HomeDashboardInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dashboardId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DashboardId),
                  )
                  as DashboardId?;
          if (valueDes == null) continue;
          result.dashboardId.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HomeDashboardInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HomeDashboardInfoBuilder();
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

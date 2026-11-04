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

part 'starred_dashboard_info.g.dart';

/// StarredDashboardInfo
///
/// Properties:
/// * [id] - JSON object with Dashboard id.
/// * [title] - Title of the dashboard.
/// * [starredAt] - Starred timestamp
@BuiltValue()
abstract class StarredDashboardInfo implements Built<StarredDashboardInfo, StarredDashboardInfoBuilder> {
  /// JSON object with Dashboard id.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Title of the dashboard.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Starred timestamp
  @BuiltValueField(wireName: r'starredAt')
  int? get starredAt;

  StarredDashboardInfo._();

  factory StarredDashboardInfo([void updates(StarredDashboardInfoBuilder b)]) = _$StarredDashboardInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StarredDashboardInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StarredDashboardInfo> get serializer => _$StarredDashboardInfoSerializer();
}

class _$StarredDashboardInfoSerializer implements PrimitiveSerializer<StarredDashboardInfo> {
  @override
  final Iterable<Type> types = const [StarredDashboardInfo, _$StarredDashboardInfo];

  @override
  final String wireName = r'StarredDashboardInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StarredDashboardInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.starredAt != null) {
      yield r'starredAt';
      yield serializers.serialize(
        object.starredAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StarredDashboardInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StarredDashboardInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'starredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.starredAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StarredDashboardInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StarredDashboardInfoBuilder();
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



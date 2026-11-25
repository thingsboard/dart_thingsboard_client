// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/starred_dashboard_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/last_visited_dashboard_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_dashboards_info.g.dart';

/// UserDashboardsInfo
///
/// Properties:
/// * [last] - List of last visited dashboards.
/// * [starred] - List of starred dashboards.
@BuiltValue()
abstract class UserDashboardsInfo
    implements Built<UserDashboardsInfo, UserDashboardsInfoBuilder> {
  /// List of last visited dashboards.
  @BuiltValueField(wireName: r'last')
  BuiltList<LastVisitedDashboardInfo>? get last;

  /// List of starred dashboards.
  @BuiltValueField(wireName: r'starred')
  BuiltList<StarredDashboardInfo>? get starred;

  UserDashboardsInfo._();

  factory UserDashboardsInfo([void updates(UserDashboardsInfoBuilder b)]) =
      _$UserDashboardsInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserDashboardsInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserDashboardsInfo> get serializer =>
      _$UserDashboardsInfoSerializer();
}

class _$UserDashboardsInfoSerializer
    implements PrimitiveSerializer<UserDashboardsInfo> {
  @override
  final Iterable<Type> types = const [UserDashboardsInfo, _$UserDashboardsInfo];

  @override
  final String wireName = r'UserDashboardsInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserDashboardsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.last != null) {
      yield r'last';
      yield serializers.serialize(
        object.last,
        specifiedType: const FullType(BuiltList, [
          FullType(LastVisitedDashboardInfo),
        ]),
      );
    }
    if (object.starred != null) {
      yield r'starred';
      yield serializers.serialize(
        object.starred,
        specifiedType: const FullType(BuiltList, [
          FullType(StarredDashboardInfo),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserDashboardsInfo object, {
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
    required UserDashboardsInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'last':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(LastVisitedDashboardInfo),
                    ]),
                  )
                  as BuiltList<LastVisitedDashboardInfo>?;
          if (valueDes == null) continue;
          result.last.replace(valueDes);
          break;
        case r'starred':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StarredDashboardInfo),
                    ]),
                  )
                  as BuiltList<StarredDashboardInfo>?;
          if (valueDes == null) continue;
          result.starred.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserDashboardsInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDashboardsInfoBuilder();
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

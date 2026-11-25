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

part 'last_visited_dashboard_info.g.dart';

/// LastVisitedDashboardInfo
///
/// Properties:
/// * [id] - JSON object with Dashboard id.
/// * [title] - Title of the dashboard.
/// * [starred] - Starred flag
/// * [lastVisited] - Last visit timestamp
@BuiltValue()
abstract class LastVisitedDashboardInfo
    implements
        Built<LastVisitedDashboardInfo, LastVisitedDashboardInfoBuilder> {
  /// JSON object with Dashboard id.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Title of the dashboard.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Starred flag
  @BuiltValueField(wireName: r'starred')
  bool? get starred;

  /// Last visit timestamp
  @BuiltValueField(wireName: r'lastVisited')
  int? get lastVisited;

  LastVisitedDashboardInfo._();

  factory LastVisitedDashboardInfo([
    void updates(LastVisitedDashboardInfoBuilder b),
  ]) = _$LastVisitedDashboardInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LastVisitedDashboardInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LastVisitedDashboardInfo> get serializer =>
      _$LastVisitedDashboardInfoSerializer();
}

class _$LastVisitedDashboardInfoSerializer
    implements PrimitiveSerializer<LastVisitedDashboardInfo> {
  @override
  final Iterable<Type> types = const [
    LastVisitedDashboardInfo,
    _$LastVisitedDashboardInfo,
  ];

  @override
  final String wireName = r'LastVisitedDashboardInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LastVisitedDashboardInfo object, {
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
    if (object.starred != null) {
      yield r'starred';
      yield serializers.serialize(
        object.starred,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lastVisited != null) {
      yield r'lastVisited';
      yield serializers.serialize(
        object.lastVisited,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LastVisitedDashboardInfo object, {
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
    required LastVisitedDashboardInfoBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'starred':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.starred = valueDes;
          break;
        case r'lastVisited':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastVisited = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LastVisitedDashboardInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LastVisitedDashboardInfoBuilder();
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

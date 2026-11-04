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

part 'home_dashboard_params.g.dart';

/// HomeDashboardParams
///
/// Properties:
/// * [id] - Home dashboard Id to assign for the new user.
/// * [hideToolbar] - Indicates if hide toolbar should be hidden.
@BuiltValue()
abstract class HomeDashboardParams implements Built<HomeDashboardParams, HomeDashboardParamsBuilder> {
  /// Home dashboard Id to assign for the new user.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Indicates if hide toolbar should be hidden.
  @BuiltValueField(wireName: r'hideToolbar')
  bool? get hideToolbar;

  HomeDashboardParams._();

  factory HomeDashboardParams([void updates(HomeDashboardParamsBuilder b)]) = _$HomeDashboardParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HomeDashboardParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HomeDashboardParams> get serializer => _$HomeDashboardParamsSerializer();
}

class _$HomeDashboardParamsSerializer implements PrimitiveSerializer<HomeDashboardParams> {
  @override
  final Iterable<Type> types = const [HomeDashboardParams, _$HomeDashboardParams];

  @override
  final String wireName = r'HomeDashboardParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HomeDashboardParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.hideToolbar != null) {
      yield r'hideToolbar';
      yield serializers.serialize(
        object.hideToolbar,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HomeDashboardParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HomeDashboardParamsBuilder result,
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
        case r'hideToolbar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hideToolbar = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HomeDashboardParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HomeDashboardParamsBuilder();
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



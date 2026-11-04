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

part 'default_dashboard_params.g.dart';

/// DefaultDashboardParams
///
/// Properties:
/// * [id] - Default dashboard Id to assign for the new user.
/// * [fullscreen] - Set default dashboard to full screen mode.
@BuiltValue()
abstract class DefaultDashboardParams implements Built<DefaultDashboardParams, DefaultDashboardParamsBuilder> {
  /// Default dashboard Id to assign for the new user.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Set default dashboard to full screen mode.
  @BuiltValueField(wireName: r'fullscreen')
  bool? get fullscreen;

  DefaultDashboardParams._();

  factory DefaultDashboardParams([void updates(DefaultDashboardParamsBuilder b)]) = _$DefaultDashboardParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultDashboardParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultDashboardParams> get serializer => _$DefaultDashboardParamsSerializer();
}

class _$DefaultDashboardParamsSerializer implements PrimitiveSerializer<DefaultDashboardParams> {
  @override
  final Iterable<Type> types = const [DefaultDashboardParams, _$DefaultDashboardParams];

  @override
  final String wireName = r'DefaultDashboardParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultDashboardParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullscreen != null) {
      yield r'fullscreen';
      yield serializers.serialize(
        object.fullscreen,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultDashboardParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DefaultDashboardParamsBuilder result,
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
        case r'fullscreen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fullscreen = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DefaultDashboardParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultDashboardParamsBuilder();
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



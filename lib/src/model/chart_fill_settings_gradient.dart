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

part 'chart_fill_settings_gradient.g.dart';

/// ChartFillSettingsGradient
///
/// Properties:
/// * [start] 
/// * [end] 
@BuiltValue()
abstract class ChartFillSettingsGradient implements Built<ChartFillSettingsGradient, ChartFillSettingsGradientBuilder> {
  @BuiltValueField(wireName: r'start')
  double? get start;

  @BuiltValueField(wireName: r'end')
  double? get end;

  ChartFillSettingsGradient._();

  factory ChartFillSettingsGradient([void updates(ChartFillSettingsGradientBuilder b)]) = _$ChartFillSettingsGradient;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChartFillSettingsGradientBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChartFillSettingsGradient> get serializer => _$ChartFillSettingsGradientSerializer();
}

class _$ChartFillSettingsGradientSerializer implements PrimitiveSerializer<ChartFillSettingsGradient> {
  @override
  final Iterable<Type> types = const [ChartFillSettingsGradient, _$ChartFillSettingsGradient];

  @override
  final String wireName = r'ChartFillSettingsGradient';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChartFillSettingsGradient object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(double),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChartFillSettingsGradient object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChartFillSettingsGradientBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.end = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChartFillSettingsGradient deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChartFillSettingsGradientBuilder();
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



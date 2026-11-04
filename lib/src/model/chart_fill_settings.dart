// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/chart_fill_settings_gradient.dart';
import 'package:thingsboard_client/src/model/chart_fill_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chart_fill_settings.g.dart';

/// ChartFillSettings
///
/// Properties:
/// * [type] 
/// * [opacity] 
/// * [gradient] 
@BuiltValue()
abstract class ChartFillSettings implements Built<ChartFillSettings, ChartFillSettingsBuilder> {
  @BuiltValueField(wireName: r'type')
  ChartFillType? get type;
  // enum typeEnum {  none,  opacity,  gradient,  };

  @BuiltValueField(wireName: r'opacity')
  double? get opacity;

  @BuiltValueField(wireName: r'gradient')
  ChartFillSettingsGradient? get gradient;

  ChartFillSettings._();

  factory ChartFillSettings([void updates(ChartFillSettingsBuilder b)]) = _$ChartFillSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChartFillSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChartFillSettings> get serializer => _$ChartFillSettingsSerializer();
}

class _$ChartFillSettingsSerializer implements PrimitiveSerializer<ChartFillSettings> {
  @override
  final Iterable<Type> types = const [ChartFillSettings, _$ChartFillSettings];

  @override
  final String wireName = r'ChartFillSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChartFillSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ChartFillType),
      );
    }
    if (object.opacity != null) {
      yield r'opacity';
      yield serializers.serialize(
        object.opacity,
        specifiedType: const FullType(double),
      );
    }
    if (object.gradient != null) {
      yield r'gradient';
      yield serializers.serialize(
        object.gradient,
        specifiedType: const FullType(ChartFillSettingsGradient),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChartFillSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChartFillSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChartFillType),
          ) as ChartFillType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'opacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.opacity = valueDes;
          break;
        case r'gradient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChartFillSettingsGradient),
          ) as ChartFillSettingsGradient?;
          if (valueDes == null) continue;
          result.gradient.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChartFillSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChartFillSettingsBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/legend_position.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legend_config.g.dart';

/// LegendConfig
///
/// Properties:
/// * [position]
/// * [sortDataKeys]
/// * [showMin]
/// * [showMax]
/// * [showAvg]
/// * [showTotal]
/// * [showLatest]
@BuiltValue()
abstract class LegendConfig
    implements Built<LegendConfig, LegendConfigBuilder> {
  @BuiltValueField(wireName: r'position')
  LegendPosition? get position;
  // enum positionEnum {  top,  bottom,  left,  right,  };

  @BuiltValueField(wireName: r'sortDataKeys')
  bool? get sortDataKeys;

  @BuiltValueField(wireName: r'showMin')
  bool? get showMin;

  @BuiltValueField(wireName: r'showMax')
  bool? get showMax;

  @BuiltValueField(wireName: r'showAvg')
  bool? get showAvg;

  @BuiltValueField(wireName: r'showTotal')
  bool? get showTotal;

  @BuiltValueField(wireName: r'showLatest')
  bool? get showLatest;

  LegendConfig._();

  factory LegendConfig([void updates(LegendConfigBuilder b)]) = _$LegendConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegendConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegendConfig> get serializer => _$LegendConfigSerializer();
}

class _$LegendConfigSerializer implements PrimitiveSerializer<LegendConfig> {
  @override
  final Iterable<Type> types = const [LegendConfig, _$LegendConfig];

  @override
  final String wireName = r'LegendConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegendConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(LegendPosition),
      );
    }
    if (object.sortDataKeys != null) {
      yield r'sortDataKeys';
      yield serializers.serialize(
        object.sortDataKeys,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showMin != null) {
      yield r'showMin';
      yield serializers.serialize(
        object.showMin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showMax != null) {
      yield r'showMax';
      yield serializers.serialize(
        object.showMax,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showAvg != null) {
      yield r'showAvg';
      yield serializers.serialize(
        object.showAvg,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showTotal != null) {
      yield r'showTotal';
      yield serializers.serialize(
        object.showTotal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showLatest != null) {
      yield r'showLatest';
      yield serializers.serialize(
        object.showLatest,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LegendConfig object, {
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
    required LegendConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'position':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LegendPosition),
                  )
                  as LegendPosition?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'sortDataKeys':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sortDataKeys = valueDes;
          break;
        case r'showMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showMin = valueDes;
          break;
        case r'showMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showMax = valueDes;
          break;
        case r'showAvg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showAvg = valueDes;
          break;
        case r'showTotal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTotal = valueDes;
          break;
        case r'showLatest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showLatest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LegendConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegendConfigBuilder();
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

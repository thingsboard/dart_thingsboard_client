// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity.dart';
import 'package:thingsboard_client/src/model/simple_entity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trendz_usage.g.dart';

/// TrendzUsage
///
/// Properties:
/// * [used]
/// * [anomalyUsage]
/// * [predictionUsage]
/// * [calculationUsage]
/// * [viewUsage]
/// * [metricUsage]
/// * [chatUsage]
@BuiltValue()
abstract class TrendzUsage implements Built<TrendzUsage, TrendzUsageBuilder> {
  @BuiltValueField(wireName: r'used')
  bool? get used;

  @BuiltValueField(wireName: r'anomalyUsage')
  Entity? get anomalyUsage;

  @BuiltValueField(wireName: r'predictionUsage')
  Entity? get predictionUsage;

  @BuiltValueField(wireName: r'calculationUsage')
  Entity? get calculationUsage;

  @BuiltValueField(wireName: r'viewUsage')
  SimpleEntity? get viewUsage;

  @BuiltValueField(wireName: r'metricUsage')
  SimpleEntity? get metricUsage;

  @BuiltValueField(wireName: r'chatUsage')
  SimpleEntity? get chatUsage;

  TrendzUsage._();

  factory TrendzUsage([void updates(TrendzUsageBuilder b)]) = _$TrendzUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendzUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendzUsage> get serializer => _$TrendzUsageSerializer();
}

class _$TrendzUsageSerializer implements PrimitiveSerializer<TrendzUsage> {
  @override
  final Iterable<Type> types = const [TrendzUsage, _$TrendzUsage];

  @override
  final String wireName = r'TrendzUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendzUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.used != null) {
      yield r'used';
      yield serializers.serialize(
        object.used,
        specifiedType: const FullType(bool),
      );
    }
    if (object.anomalyUsage != null) {
      yield r'anomalyUsage';
      yield serializers.serialize(
        object.anomalyUsage,
        specifiedType: const FullType(Entity),
      );
    }
    if (object.predictionUsage != null) {
      yield r'predictionUsage';
      yield serializers.serialize(
        object.predictionUsage,
        specifiedType: const FullType(Entity),
      );
    }
    if (object.calculationUsage != null) {
      yield r'calculationUsage';
      yield serializers.serialize(
        object.calculationUsage,
        specifiedType: const FullType(Entity),
      );
    }
    if (object.viewUsage != null) {
      yield r'viewUsage';
      yield serializers.serialize(
        object.viewUsage,
        specifiedType: const FullType(SimpleEntity),
      );
    }
    if (object.metricUsage != null) {
      yield r'metricUsage';
      yield serializers.serialize(
        object.metricUsage,
        specifiedType: const FullType(SimpleEntity),
      );
    }
    if (object.chatUsage != null) {
      yield r'chatUsage';
      yield serializers.serialize(
        object.chatUsage,
        specifiedType: const FullType(SimpleEntity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendzUsage object, {
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
    required TrendzUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'used':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.used = valueDes;
          break;
        case r'anomalyUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Entity),
                  )
                  as Entity?;
          if (valueDes == null) continue;
          result.anomalyUsage.replace(valueDes);
          break;
        case r'predictionUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Entity),
                  )
                  as Entity?;
          if (valueDes == null) continue;
          result.predictionUsage.replace(valueDes);
          break;
        case r'calculationUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Entity),
                  )
                  as Entity?;
          if (valueDes == null) continue;
          result.calculationUsage.replace(valueDes);
          break;
        case r'viewUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SimpleEntity),
                  )
                  as SimpleEntity?;
          if (valueDes == null) continue;
          result.viewUsage.replace(valueDes);
          break;
        case r'metricUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SimpleEntity),
                  )
                  as SimpleEntity?;
          if (valueDes == null) continue;
          result.metricUsage.replace(valueDes);
          break;
        case r'chatUsage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SimpleEntity),
                  )
                  as SimpleEntity?;
          if (valueDes == null) continue;
          result.chatUsage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendzUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendzUsageBuilder();
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

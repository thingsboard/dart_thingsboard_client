// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trendz_summary.g.dart';

/// TrendzSummary
///
/// Properties:
/// * [metricSummaryItems]
/// * [anomalyModelSummaryItems]
/// * [calculationFieldSummaryItems]
/// * [predictionModelSummaryItems]
/// * [viewSummaryItems]
/// * [aiSummaryItems]
@BuiltValue()
abstract class TrendzSummary
    implements Built<TrendzSummary, TrendzSummaryBuilder> {
  @BuiltValueField(wireName: r'metricSummaryItems')
  BuiltList<JsonObject?>? get metricSummaryItems;

  @BuiltValueField(wireName: r'anomalyModelSummaryItems')
  BuiltList<JsonObject?>? get anomalyModelSummaryItems;

  @BuiltValueField(wireName: r'calculationFieldSummaryItems')
  BuiltList<JsonObject?>? get calculationFieldSummaryItems;

  @BuiltValueField(wireName: r'predictionModelSummaryItems')
  BuiltList<JsonObject?>? get predictionModelSummaryItems;

  @BuiltValueField(wireName: r'viewSummaryItems')
  BuiltList<JsonObject?>? get viewSummaryItems;

  @BuiltValueField(wireName: r'aiSummaryItems')
  BuiltList<JsonObject?>? get aiSummaryItems;

  TrendzSummary._();

  factory TrendzSummary([void updates(TrendzSummaryBuilder b)]) =
      _$TrendzSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendzSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendzSummary> get serializer =>
      _$TrendzSummarySerializer();
}

class _$TrendzSummarySerializer implements PrimitiveSerializer<TrendzSummary> {
  @override
  final Iterable<Type> types = const [TrendzSummary, _$TrendzSummary];

  @override
  final String wireName = r'TrendzSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendzSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metricSummaryItems != null) {
      yield r'metricSummaryItems';
      yield serializers.serialize(
        object.metricSummaryItems,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.anomalyModelSummaryItems != null) {
      yield r'anomalyModelSummaryItems';
      yield serializers.serialize(
        object.anomalyModelSummaryItems,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.calculationFieldSummaryItems != null) {
      yield r'calculationFieldSummaryItems';
      yield serializers.serialize(
        object.calculationFieldSummaryItems,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.predictionModelSummaryItems != null) {
      yield r'predictionModelSummaryItems';
      yield serializers.serialize(
        object.predictionModelSummaryItems,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.viewSummaryItems != null) {
      yield r'viewSummaryItems';
      yield serializers.serialize(
        object.viewSummaryItems,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.aiSummaryItems != null) {
      yield r'aiSummaryItems';
      yield serializers.serialize(
        object.aiSummaryItems,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendzSummary object, {
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
    required TrendzSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metricSummaryItems':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.metricSummaryItems.replace(valueDes);
          break;
        case r'anomalyModelSummaryItems':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.anomalyModelSummaryItems.replace(valueDes);
          break;
        case r'calculationFieldSummaryItems':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.calculationFieldSummaryItems.replace(valueDes);
          break;
        case r'predictionModelSummaryItems':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.predictionModelSummaryItems.replace(valueDes);
          break;
        case r'viewSummaryItems':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.viewSummaryItems.replace(valueDes);
          break;
        case r'aiSummaryItems':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.aiSummaryItems.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendzSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendzSummaryBuilder();
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

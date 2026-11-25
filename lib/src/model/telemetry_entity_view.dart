// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/attributes_entity_view.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'telemetry_entity_view.g.dart';

/// TelemetryEntityView
///
/// Properties:
/// * [timeseries] - List of time-series data keys to expose
/// * [attributes] - JSON object with attributes to expose
@BuiltValue()
abstract class TelemetryEntityView
    implements Built<TelemetryEntityView, TelemetryEntityViewBuilder> {
  /// List of time-series data keys to expose
  @BuiltValueField(wireName: r'timeseries')
  BuiltList<String>? get timeseries;

  /// JSON object with attributes to expose
  @BuiltValueField(wireName: r'attributes')
  AttributesEntityView get attributes;

  TelemetryEntityView._();

  factory TelemetryEntityView([void updates(TelemetryEntityViewBuilder b)]) =
      _$TelemetryEntityView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TelemetryEntityViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TelemetryEntityView> get serializer =>
      _$TelemetryEntityViewSerializer();
}

class _$TelemetryEntityViewSerializer
    implements PrimitiveSerializer<TelemetryEntityView> {
  @override
  final Iterable<Type> types = const [
    TelemetryEntityView,
    _$TelemetryEntityView,
  ];

  @override
  final String wireName = r'TelemetryEntityView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TelemetryEntityView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timeseries != null) {
      yield r'timeseries';
      yield serializers.serialize(
        object.timeseries,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'attributes';
    yield serializers.serialize(
      object.attributes,
      specifiedType: const FullType(AttributesEntityView),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TelemetryEntityView object, {
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
    required TelemetryEntityViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timeseries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.timeseries.replace(valueDes);
          break;
        case r'attributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AttributesEntityView),
                  )
                  as AttributesEntityView;
          result.attributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TelemetryEntityView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TelemetryEntityViewBuilder();
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

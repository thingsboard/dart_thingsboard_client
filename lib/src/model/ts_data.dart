// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ts_data.g.dart';

/// TsData
///
/// Properties:
/// * [ts] - Timestamp last updated timeseries, in milliseconds
/// * [value] - Object representing value of timeseries key
@BuiltValue()
abstract class TsData implements Built<TsData, TsDataBuilder> {
  /// Timestamp last updated timeseries, in milliseconds
  @BuiltValueField(wireName: r'ts')
  int? get ts;

  /// Object representing value of timeseries key
  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  TsData._();

  factory TsData([void updates(TsDataBuilder b)]) = _$TsData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TsDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TsData> get serializer => _$TsDataSerializer();
}

class _$TsDataSerializer implements PrimitiveSerializer<TsData> {
  @override
  final Iterable<Type> types = const [TsData, _$TsData];

  @override
  final String wireName = r'TsData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TsData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ts != null) {
      yield r'ts';
      yield serializers.serialize(
        object.ts,
        specifiedType: const FullType(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TsData object, {
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
    required TsDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.ts = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TsData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TsDataBuilder();
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

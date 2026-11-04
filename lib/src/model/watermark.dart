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

part 'watermark.g.dart';

/// Watermark
///
/// Properties:
/// * [duration] 
@BuiltValue()
abstract class Watermark implements Built<Watermark, WatermarkBuilder> {
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  Watermark._();

  factory Watermark([void updates(WatermarkBuilder b)]) = _$Watermark;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatermarkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Watermark> get serializer => _$WatermarkSerializer();
}

class _$WatermarkSerializer implements PrimitiveSerializer<Watermark> {
  @override
  final Iterable<Type> types = const [Watermark, _$Watermark];

  @override
  final String wireName = r'Watermark';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Watermark object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Watermark object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WatermarkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Watermark deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatermarkBuilder();
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



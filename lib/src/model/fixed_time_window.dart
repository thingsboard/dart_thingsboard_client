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

part 'fixed_time_window.g.dart';

/// FixedTimeWindow
///
/// Properties:
/// * [startTimeMs]
/// * [endTimeMs]
@BuiltValue()
abstract class FixedTimeWindow
    implements Built<FixedTimeWindow, FixedTimeWindowBuilder> {
  @BuiltValueField(wireName: r'startTimeMs')
  int? get startTimeMs;

  @BuiltValueField(wireName: r'endTimeMs')
  int? get endTimeMs;

  FixedTimeWindow._();

  factory FixedTimeWindow([void updates(FixedTimeWindowBuilder b)]) =
      _$FixedTimeWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FixedTimeWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FixedTimeWindow> get serializer =>
      _$FixedTimeWindowSerializer();
}

class _$FixedTimeWindowSerializer
    implements PrimitiveSerializer<FixedTimeWindow> {
  @override
  final Iterable<Type> types = const [FixedTimeWindow, _$FixedTimeWindow];

  @override
  final String wireName = r'FixedTimeWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FixedTimeWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.startTimeMs != null) {
      yield r'startTimeMs';
      yield serializers.serialize(
        object.startTimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.endTimeMs != null) {
      yield r'endTimeMs';
      yield serializers.serialize(
        object.endTimeMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FixedTimeWindow object, {
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
    required FixedTimeWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'startTimeMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.startTimeMs = valueDes;
          break;
        case r'endTimeMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.endTimeMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FixedTimeWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FixedTimeWindowBuilder();
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

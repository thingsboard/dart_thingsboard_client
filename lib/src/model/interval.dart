// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/interval_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interval.g.dart';

/// Interval
///
/// Properties:
/// * [interval]
/// * [intervalType]
@BuiltValue()
abstract class Interval implements Built<Interval, IntervalBuilder> {
  @BuiltValueField(wireName: r'interval')
  int? get interval;

  @BuiltValueField(wireName: r'intervalType')
  IntervalType? get intervalType;
  // enum intervalTypeEnum {  MILLISECONDS,  WEEK,  WEEK_ISO,  MONTH,  QUARTER,  };

  Interval._();

  factory Interval([void updates(IntervalBuilder b)]) = _$Interval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Interval> get serializer => _$IntervalSerializer();
}

class _$IntervalSerializer implements PrimitiveSerializer<Interval> {
  @override
  final Iterable<Type> types = const [Interval, _$Interval];

  @override
  final String wireName = r'Interval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Interval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(int),
      );
    }
    if (object.intervalType != null) {
      yield r'intervalType';
      yield serializers.serialize(
        object.intervalType,
        specifiedType: const FullType(IntervalType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Interval object, {
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
    required IntervalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        case r'intervalType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IntervalType),
                  )
                  as IntervalType?;
          if (valueDes == null) continue;
          result.intervalType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Interval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntervalBuilder();
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

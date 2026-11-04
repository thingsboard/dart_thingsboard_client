// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agg_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'month_interval.g.dart';

/// MonthInterval
///
/// Properties:
/// * [type]
/// * [tz]
/// * [offsetSec]
@BuiltValue()
abstract class MonthInterval
    implements AggInterval, Built<MonthInterval, MonthIntervalBuilder> {
  @BuiltValueField(wireName: r'tz')
  String get tz;

  @BuiltValueField(wireName: r'offsetSec')
  int? get offsetSec;

  MonthInterval._();

  factory MonthInterval([void updates(MonthIntervalBuilder b)]) =
      _$MonthInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MonthIntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MonthInterval> get serializer =>
      _$MonthIntervalSerializer();
}

class _$MonthIntervalSerializer implements PrimitiveSerializer<MonthInterval> {
  @override
  final Iterable<Type> types = const [MonthInterval, _$MonthInterval];

  @override
  final String wireName = r'MonthInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MonthInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.offsetSec != null) {
      yield r'offsetSec';
      yield serializers.serialize(
        object.offsetSec,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'tz';
    yield serializers.serialize(
      object.tz,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MonthInterval object, {
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
    required MonthIntervalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'offsetSec':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.offsetSec = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'tz':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tz = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MonthInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonthIntervalBuilder();
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

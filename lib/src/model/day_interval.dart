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

part 'day_interval.g.dart';

/// DayInterval
///
/// Properties:
/// * [type]
/// * [tz]
/// * [offsetSec]
@BuiltValue()
abstract class DayInterval
    implements AggInterval, Built<DayInterval, DayIntervalBuilder> {
  @BuiltValueField(wireName: r'tz')
  String get tz;

  @BuiltValueField(wireName: r'offsetSec')
  int? get offsetSec;

  DayInterval._();

  factory DayInterval([void updates(DayIntervalBuilder b)]) = _$DayInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DayIntervalBuilder b) => b..type = r'DAY';

  @BuiltValueSerializer(custom: true)
  static Serializer<DayInterval> get serializer => _$DayIntervalSerializer();
}

class _$DayIntervalSerializer implements PrimitiveSerializer<DayInterval> {
  @override
  final Iterable<Type> types = const [DayInterval, _$DayInterval];

  @override
  final String wireName = r'DayInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DayInterval object, {
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
    DayInterval object, {
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
    required DayIntervalBuilder result,
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
  DayInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DayIntervalBuilder();
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

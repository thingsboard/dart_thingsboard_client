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

part 'hour_interval.g.dart';

/// HourInterval
///
/// Properties:
/// * [type]
/// * [tz]
/// * [offsetSec]
@BuiltValue()
abstract class HourInterval
    implements AggInterval, Built<HourInterval, HourIntervalBuilder> {
  @BuiltValueField(wireName: r'tz')
  String get tz;

  @BuiltValueField(wireName: r'offsetSec')
  int? get offsetSec;

  HourInterval._();

  factory HourInterval([void updates(HourIntervalBuilder b)]) = _$HourInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HourIntervalBuilder b) => b..type = r'HOUR';

  @BuiltValueSerializer(custom: true)
  static Serializer<HourInterval> get serializer => _$HourIntervalSerializer();
}

class _$HourIntervalSerializer implements PrimitiveSerializer<HourInterval> {
  @override
  final Iterable<Type> types = const [HourInterval, _$HourInterval];

  @override
  final String wireName = r'HourInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HourInterval object, {
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
    HourInterval object, {
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
    required HourIntervalBuilder result,
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
  HourInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HourIntervalBuilder();
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

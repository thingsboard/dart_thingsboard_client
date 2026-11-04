// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/fixed_time_window.dart';
import 'package:thingsboard_client/src/model/interval.dart';
import 'package:thingsboard_client/src/model/quick_time_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history.g.dart';

/// History
///
/// Properties:
/// * [historyType] 
/// * [interval] 
/// * [timewindowMs] 
/// * [fixedTimewindow] 
/// * [quickInterval] 
@BuiltValue()
abstract class History implements Built<History, HistoryBuilder> {
  @BuiltValueField(wireName: r'historyType')
  int? get historyType;

  @BuiltValueField(wireName: r'interval')
  Interval? get interval;

  @BuiltValueField(wireName: r'timewindowMs')
  int? get timewindowMs;

  @BuiltValueField(wireName: r'fixedTimewindow')
  FixedTimeWindow? get fixedTimewindow;

  @BuiltValueField(wireName: r'quickInterval')
  QuickTimeInterval? get quickInterval;
  // enum quickIntervalEnum {  YESTERDAY,  DAY_BEFORE_YESTERDAY,  THIS_DAY_LAST_WEEK,  PREVIOUS_WEEK,  PREVIOUS_WEEK_ISO,  PREVIOUS_MONTH,  PREVIOUS_QUARTER,  PREVIOUS_HALF_YEAR,  PREVIOUS_YEAR,  CURRENT_HOUR,  CURRENT_DAY,  CURRENT_DAY_SO_FAR,  CURRENT_WEEK,  CURRENT_WEEK_ISO,  CURRENT_WEEK_SO_FAR,  CURRENT_WEEK_ISO_SO_FAR,  CURRENT_MONTH,  CURRENT_MONTH_SO_FAR,  CURRENT_QUARTER,  CURRENT_QUARTER_SO_FAR,  CURRENT_HALF_YEAR,  CURRENT_HALF_YEAR_SO_FAR,  CURRENT_YEAR,  CURRENT_YEAR_SO_FAR,  };

  History._();

  factory History([void updates(HistoryBuilder b)]) = _$History;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<History> get serializer => _$HistorySerializer();
}

class _$HistorySerializer implements PrimitiveSerializer<History> {
  @override
  final Iterable<Type> types = const [History, _$History];

  @override
  final String wireName = r'History';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    History object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.historyType != null) {
      yield r'historyType';
      yield serializers.serialize(
        object.historyType,
        specifiedType: const FullType(int),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(Interval),
      );
    }
    if (object.timewindowMs != null) {
      yield r'timewindowMs';
      yield serializers.serialize(
        object.timewindowMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.fixedTimewindow != null) {
      yield r'fixedTimewindow';
      yield serializers.serialize(
        object.fixedTimewindow,
        specifiedType: const FullType(FixedTimeWindow),
      );
    }
    if (object.quickInterval != null) {
      yield r'quickInterval';
      yield serializers.serialize(
        object.quickInterval,
        specifiedType: const FullType(QuickTimeInterval),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    History object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'historyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.historyType = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Interval),
          ) as Interval?;
          if (valueDes == null) continue;
          result.interval.replace(valueDes);
          break;
        case r'timewindowMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timewindowMs = valueDes;
          break;
        case r'fixedTimewindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FixedTimeWindow),
          ) as FixedTimeWindow?;
          if (valueDes == null) continue;
          result.fixedTimewindow.replace(valueDes);
          break;
        case r'quickInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(QuickTimeInterval),
          ) as QuickTimeInterval?;
          if (valueDes == null) continue;
          result.quickInterval = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  History deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryBuilder();
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



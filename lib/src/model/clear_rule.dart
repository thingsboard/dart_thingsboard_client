// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_search_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'clear_rule.g.dart';

/// ClearRule
///
/// Properties:
/// * [alarmStatuses]
@BuiltValue()
abstract class ClearRule implements Built<ClearRule, ClearRuleBuilder> {
  @BuiltValueField(wireName: r'alarmStatuses')
  BuiltSet<AlarmSearchStatus>? get alarmStatuses;

  ClearRule._();

  factory ClearRule([void updates(ClearRuleBuilder b)]) = _$ClearRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClearRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClearRule> get serializer => _$ClearRuleSerializer();
}

class _$ClearRuleSerializer implements PrimitiveSerializer<ClearRule> {
  @override
  final Iterable<Type> types = const [ClearRule, _$ClearRule];

  @override
  final String wireName = r'ClearRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClearRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alarmStatuses != null) {
      yield r'alarmStatuses';
      yield serializers.serialize(
        object.alarmStatuses,
        specifiedType: const FullType(BuiltSet, [FullType(AlarmSearchStatus)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClearRule object, {
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
    required ClearRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alarmStatuses':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(AlarmSearchStatus),
                    ]),
                  )
                  as BuiltSet<AlarmSearchStatus>?;
          if (valueDes == null) continue;
          result.alarmStatuses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClearRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClearRuleBuilder();
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

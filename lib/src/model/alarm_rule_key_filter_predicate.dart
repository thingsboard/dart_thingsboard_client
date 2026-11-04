// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_rule_boolean_filter_predicate.dart';
import 'package:thingsboard_client/src/model/no_data_filter_predicate.dart';
import 'package:thingsboard_client/src/model/alarm_rule_complex_filter_predicate.dart';
import 'package:thingsboard_client/src/model/alarm_rule_string_filter_predicate.dart';
import 'package:thingsboard_client/src/model/alarm_rule_numeric_filter_predicate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_rule_key_filter_predicate.g.dart';

/// Filter predicate for alarm rule key-based filtering
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AlarmRuleKeyFilterPredicate  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'BOOLEAN': AlarmRuleBooleanFilterPredicate,
    r'COMPLEX': AlarmRuleComplexFilterPredicate,
    r'NO_DATA': NoDataFilterPredicate,
    r'NUMERIC': AlarmRuleNumericFilterPredicate,
    r'STRING': AlarmRuleStringFilterPredicate,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmRuleKeyFilterPredicate> get serializer => _$AlarmRuleKeyFilterPredicateSerializer();
}

extension AlarmRuleKeyFilterPredicateDiscriminatorExt on AlarmRuleKeyFilterPredicate {
    String? get discriminatorValue {
        if (this is AlarmRuleBooleanFilterPredicate) {
            return r'BOOLEAN';
        }
        if (this is AlarmRuleComplexFilterPredicate) {
            return r'COMPLEX';
        }
        if (this is NoDataFilterPredicate) {
            return r'NO_DATA';
        }
        if (this is AlarmRuleNumericFilterPredicate) {
            return r'NUMERIC';
        }
        if (this is AlarmRuleStringFilterPredicate) {
            return r'STRING';
        }
        return null;
    }
}
extension AlarmRuleKeyFilterPredicateBuilderDiscriminatorExt on AlarmRuleKeyFilterPredicateBuilder {
    String? get discriminatorValue {
        if (this is AlarmRuleBooleanFilterPredicateBuilder) {
            return r'BOOLEAN';
        }
        if (this is AlarmRuleComplexFilterPredicateBuilder) {
            return r'COMPLEX';
        }
        if (this is NoDataFilterPredicateBuilder) {
            return r'NO_DATA';
        }
        if (this is AlarmRuleNumericFilterPredicateBuilder) {
            return r'NUMERIC';
        }
        if (this is AlarmRuleStringFilterPredicateBuilder) {
            return r'STRING';
        }
        return null;
    }
}

class _$AlarmRuleKeyFilterPredicateSerializer implements PrimitiveSerializer<AlarmRuleKeyFilterPredicate> {
  @override
  final Iterable<Type> types = const [AlarmRuleKeyFilterPredicate];

  @override
  final String wireName = r'AlarmRuleKeyFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmRuleKeyFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleKeyFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AlarmRuleBooleanFilterPredicate) {
      return serializers.serialize(object, specifiedType: FullType(AlarmRuleBooleanFilterPredicate))!;
    }
    if (object is AlarmRuleComplexFilterPredicate) {
      return serializers.serialize(object, specifiedType: FullType(AlarmRuleComplexFilterPredicate))!;
    }
    if (object is NoDataFilterPredicate) {
      return serializers.serialize(object, specifiedType: FullType(NoDataFilterPredicate))!;
    }
    if (object is AlarmRuleNumericFilterPredicate) {
      return serializers.serialize(object, specifiedType: FullType(AlarmRuleNumericFilterPredicate))!;
    }
    if (object is AlarmRuleStringFilterPredicate) {
      return serializers.serialize(object, specifiedType: FullType(AlarmRuleStringFilterPredicate))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AlarmRuleKeyFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AlarmRuleKeyFilterPredicate.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'BOOLEAN':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmRuleBooleanFilterPredicate)) as AlarmRuleBooleanFilterPredicate;
      case r'COMPLEX':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmRuleComplexFilterPredicate)) as AlarmRuleComplexFilterPredicate;
      case r'NO_DATA':
        return serializers.deserialize(serialized, specifiedType: FullType(NoDataFilterPredicate)) as NoDataFilterPredicate;
      case r'NUMERIC':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmRuleNumericFilterPredicate)) as AlarmRuleNumericFilterPredicate;
      case r'STRING':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmRuleStringFilterPredicate)) as AlarmRuleStringFilterPredicate;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AlarmRuleKeyFilterPredicate)) as $AlarmRuleKeyFilterPredicate;
    }
  }
}


/// a concrete implementation of [AlarmRuleKeyFilterPredicate], since [AlarmRuleKeyFilterPredicate] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AlarmRuleKeyFilterPredicate implements AlarmRuleKeyFilterPredicate, Built<$AlarmRuleKeyFilterPredicate, $AlarmRuleKeyFilterPredicateBuilder> {
  $AlarmRuleKeyFilterPredicate._();

  factory $AlarmRuleKeyFilterPredicate([void Function($AlarmRuleKeyFilterPredicateBuilder)? updates]) = _$$AlarmRuleKeyFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AlarmRuleKeyFilterPredicateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AlarmRuleKeyFilterPredicate> get serializer => _$$AlarmRuleKeyFilterPredicateSerializer();
}

class _$$AlarmRuleKeyFilterPredicateSerializer implements PrimitiveSerializer<$AlarmRuleKeyFilterPredicate> {
  @override
  final Iterable<Type> types = const [$AlarmRuleKeyFilterPredicate, _$$AlarmRuleKeyFilterPredicate];

  @override
  final String wireName = r'$AlarmRuleKeyFilterPredicate';

  @override
  Object serialize(
    Serializers serializers,
    $AlarmRuleKeyFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AlarmRuleKeyFilterPredicate))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmRuleKeyFilterPredicateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AlarmRuleKeyFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AlarmRuleKeyFilterPredicateBuilder();
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


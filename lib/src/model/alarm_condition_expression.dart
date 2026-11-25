// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tbel_alarm_condition_expression.dart';
import 'package:thingsboard_client/src/model/simple_alarm_condition_expression.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_condition_expression.g.dart';

/// AlarmConditionExpression
///
/// Properties:
/// * [type]
@BuiltValue(instantiable: false)
abstract class AlarmConditionExpression {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'SIMPLE': SimpleAlarmConditionExpression,
    r'TBEL': TbelAlarmConditionExpression,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmConditionExpression> get serializer =>
      _$AlarmConditionExpressionSerializer();
}

extension AlarmConditionExpressionDiscriminatorExt on AlarmConditionExpression {
  String? get discriminatorValue {
    if (this is SimpleAlarmConditionExpression) {
      return r'SIMPLE';
    }
    if (this is TbelAlarmConditionExpression) {
      return r'TBEL';
    }
    return null;
  }
}

extension AlarmConditionExpressionBuilderDiscriminatorExt
    on AlarmConditionExpressionBuilder {
  String? get discriminatorValue {
    if (this is SimpleAlarmConditionExpressionBuilder) {
      return r'SIMPLE';
    }
    if (this is TbelAlarmConditionExpressionBuilder) {
      return r'TBEL';
    }
    return null;
  }
}

class _$AlarmConditionExpressionSerializer
    implements PrimitiveSerializer<AlarmConditionExpression> {
  @override
  final Iterable<Type> types = const [AlarmConditionExpression];

  @override
  final String wireName = r'AlarmConditionExpression';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmConditionExpression object, {
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
    AlarmConditionExpression object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is SimpleAlarmConditionExpression) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SimpleAlarmConditionExpression),
      )!;
    }
    if (object is TbelAlarmConditionExpression) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TbelAlarmConditionExpression),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  AlarmConditionExpression deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          AlarmConditionExpression.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'SIMPLE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SimpleAlarmConditionExpression),
            )
            as SimpleAlarmConditionExpression;
      case r'TBEL':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TbelAlarmConditionExpression),
            )
            as TbelAlarmConditionExpression;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($AlarmConditionExpression),
            )
            as $AlarmConditionExpression;
    }
  }
}

/// a concrete implementation of [AlarmConditionExpression], since [AlarmConditionExpression] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AlarmConditionExpression
    implements
        AlarmConditionExpression,
        Built<$AlarmConditionExpression, $AlarmConditionExpressionBuilder> {
  $AlarmConditionExpression._();

  factory $AlarmConditionExpression([
    void Function($AlarmConditionExpressionBuilder)? updates,
  ]) = _$$AlarmConditionExpression;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AlarmConditionExpressionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AlarmConditionExpression> get serializer =>
      _$$AlarmConditionExpressionSerializer();
}

class _$$AlarmConditionExpressionSerializer
    implements PrimitiveSerializer<$AlarmConditionExpression> {
  @override
  final Iterable<Type> types = const [
    $AlarmConditionExpression,
    _$$AlarmConditionExpression,
  ];

  @override
  final String wireName = r'$AlarmConditionExpression';

  @override
  Object serialize(
    Serializers serializers,
    $AlarmConditionExpression object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(AlarmConditionExpression),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmConditionExpressionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  $AlarmConditionExpression deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AlarmConditionExpressionBuilder();
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

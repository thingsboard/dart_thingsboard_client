// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/specific_time_schedule.dart';
import 'package:thingsboard_client/src/model/custom_time_schedule.dart';
import 'package:thingsboard_client/src/model/any_time_schedule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_schedule.g.dart';

/// AlarmSchedule
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AlarmSchedule  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'ANY_TIME': AnyTimeSchedule,
    r'CUSTOM': CustomTimeSchedule,
    r'SPECIFIC_TIME': SpecificTimeSchedule,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmSchedule> get serializer => _$AlarmScheduleSerializer();
}

extension AlarmScheduleDiscriminatorExt on AlarmSchedule {
    String? get discriminatorValue {
        if (this is AnyTimeSchedule) {
            return r'ANY_TIME';
        }
        if (this is CustomTimeSchedule) {
            return r'CUSTOM';
        }
        if (this is SpecificTimeSchedule) {
            return r'SPECIFIC_TIME';
        }
        return null;
    }
}
extension AlarmScheduleBuilderDiscriminatorExt on AlarmScheduleBuilder {
    String? get discriminatorValue {
        if (this is AnyTimeScheduleBuilder) {
            return r'ANY_TIME';
        }
        if (this is CustomTimeScheduleBuilder) {
            return r'CUSTOM';
        }
        if (this is SpecificTimeScheduleBuilder) {
            return r'SPECIFIC_TIME';
        }
        return null;
    }
}

class _$AlarmScheduleSerializer implements PrimitiveSerializer<AlarmSchedule> {
  @override
  final Iterable<Type> types = const [AlarmSchedule];

  @override
  final String wireName = r'AlarmSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmSchedule object, {
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
    AlarmSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AnyTimeSchedule) {
      return serializers.serialize(object, specifiedType: FullType(AnyTimeSchedule))!;
    }
    if (object is CustomTimeSchedule) {
      return serializers.serialize(object, specifiedType: FullType(CustomTimeSchedule))!;
    }
    if (object is SpecificTimeSchedule) {
      return serializers.serialize(object, specifiedType: FullType(SpecificTimeSchedule))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AlarmSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AlarmSchedule.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ANY_TIME':
        return serializers.deserialize(serialized, specifiedType: FullType(AnyTimeSchedule)) as AnyTimeSchedule;
      case r'CUSTOM':
        return serializers.deserialize(serialized, specifiedType: FullType(CustomTimeSchedule)) as CustomTimeSchedule;
      case r'SPECIFIC_TIME':
        return serializers.deserialize(serialized, specifiedType: FullType(SpecificTimeSchedule)) as SpecificTimeSchedule;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AlarmSchedule)) as $AlarmSchedule;
    }
  }
}


/// a concrete implementation of [AlarmSchedule], since [AlarmSchedule] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AlarmSchedule implements AlarmSchedule, Built<$AlarmSchedule, $AlarmScheduleBuilder> {
  $AlarmSchedule._();

  factory $AlarmSchedule([void Function($AlarmScheduleBuilder)? updates]) = _$$AlarmSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AlarmScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AlarmSchedule> get serializer => _$$AlarmScheduleSerializer();
}

class _$$AlarmScheduleSerializer implements PrimitiveSerializer<$AlarmSchedule> {
  @override
  final Iterable<Type> types = const [$AlarmSchedule, _$$AlarmSchedule];

  @override
  final String wireName = r'$AlarmSchedule';

  @override
  Object serialize(
    Serializers serializers,
    $AlarmSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AlarmSchedule))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmScheduleBuilder result,
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
  $AlarmSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AlarmScheduleBuilder();
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


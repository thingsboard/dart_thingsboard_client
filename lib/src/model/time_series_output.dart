// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/output.dart';
import 'package:thingsboard_client/src/model/attribute_scope.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_output.g.dart';

/// TimeSeriesOutput
///
/// Properties:
/// * [decimalsByDefault]
/// * [name]
/// * [scope]
/// * [strategy]
/// * [type]
@BuiltValue()
abstract class TimeSeriesOutput
    implements Output, Built<TimeSeriesOutput, TimeSeriesOutputBuilder> {
  TimeSeriesOutput._();

  factory TimeSeriesOutput([void updates(TimeSeriesOutputBuilder b)]) =
      _$TimeSeriesOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesOutput> get serializer =>
      _$TimeSeriesOutputSerializer();
}

class _$TimeSeriesOutputSerializer
    implements PrimitiveSerializer<TimeSeriesOutput> {
  @override
  final Iterable<Type> types = const [TimeSeriesOutput, _$TimeSeriesOutput];

  @override
  final String wireName = r'TimeSeriesOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.decimalsByDefault != null) {
      yield r'decimalsByDefault';
      yield serializers.serialize(
        object.decimalsByDefault,
        specifiedType: const FullType(int),
      );
    }
    if (object.strategy != null) {
      yield r'strategy';
      yield serializers.serialize(
        object.strategy,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(AttributeScope),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesOutput object, {
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
    required TimeSeriesOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'decimalsByDefault':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.decimalsByDefault = valueDes;
          break;
        case r'strategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.strategy = valueDes;
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
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AttributeScope),
                  )
                  as AttributeScope?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesOutputBuilder();
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

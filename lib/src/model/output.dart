// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/attribute_scope.dart';
import 'package:thingsboard_client/src/model/attributes_output.dart';
import 'package:thingsboard_client/src/model/time_series_output.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'output.g.dart';

/// Output
///
/// Properties:
/// * [decimalsByDefault] 
/// * [name] 
/// * [scope] 
/// * [strategy] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class Output  {
  @BuiltValueField(wireName: r'decimalsByDefault')
  int? get decimalsByDefault;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'scope')
  AttributeScope? get scope;
  // enum scopeEnum {  CLIENT_SCOPE,  SERVER_SCOPE,  SHARED_SCOPE,  };

  @BuiltValueField(wireName: r'strategy')
  JsonObject? get strategy;

  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'ATTRIBUTES': AttributesOutput,
    r'TIME_SERIES': TimeSeriesOutput,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<Output> get serializer => _$OutputSerializer();
}

extension OutputDiscriminatorExt on Output {
    String? get discriminatorValue {
        if (this is AttributesOutput) {
            return r'ATTRIBUTES';
        }
        if (this is TimeSeriesOutput) {
            return r'TIME_SERIES';
        }
        return null;
    }
}
extension OutputBuilderDiscriminatorExt on OutputBuilder {
    String? get discriminatorValue {
        if (this is AttributesOutputBuilder) {
            return r'ATTRIBUTES';
        }
        if (this is TimeSeriesOutputBuilder) {
            return r'TIME_SERIES';
        }
        return null;
    }
}

class _$OutputSerializer implements PrimitiveSerializer<Output> {
  @override
  final Iterable<Type> types = const [Output];

  @override
  final String wireName = r'Output';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Output object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.decimalsByDefault != null) {
      yield r'decimalsByDefault';
      yield serializers.serialize(
        object.decimalsByDefault,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(AttributeScope),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Output object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AttributesOutput) {
      return serializers.serialize(object, specifiedType: FullType(AttributesOutput))!;
    }
    if (object is TimeSeriesOutput) {
      return serializers.serialize(object, specifiedType: FullType(TimeSeriesOutput))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Output deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(Output.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ATTRIBUTES':
        return serializers.deserialize(serialized, specifiedType: FullType(AttributesOutput)) as AttributesOutput;
      case r'TIME_SERIES':
        return serializers.deserialize(serialized, specifiedType: FullType(TimeSeriesOutput)) as TimeSeriesOutput;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($Output)) as $Output;
    }
  }
}


/// a concrete implementation of [Output], since [Output] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Output implements Output, Built<$Output, $OutputBuilder> {
  $Output._();

  factory $Output([void Function($OutputBuilder)? updates]) = _$$Output;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($OutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Output> get serializer => _$$OutputSerializer();
}

class _$$OutputSerializer implements PrimitiveSerializer<$Output> {
  @override
  final Iterable<Type> types = const [$Output, _$$Output];

  @override
  final String wireName = r'$Output';

  @override
  Object serialize(
    Serializers serializers,
    $Output object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Output))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'decimalsByDefault':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.decimalsByDefault = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AttributeScope),
          ) as AttributeScope?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        case r'strategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.strategy = valueDes;
          break;
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
  $Output deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $OutputBuilder();
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


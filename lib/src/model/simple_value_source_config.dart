// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/value_source_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_value_source_config.g.dart';

/// SimpleValueSourceConfig
///
/// Properties:
/// * [type]
/// * [value]
/// * [latestKeyType]
/// * [latestKey]
/// * [entityKeyType]
/// * [entityAlias]
/// * [entityKey]
@BuiltValue()
abstract class SimpleValueSourceConfig
    implements Built<SimpleValueSourceConfig, SimpleValueSourceConfigBuilder> {
  @BuiltValueField(wireName: r'type')
  ValueSourceType? get type;
  // enum typeEnum {  constant,  latestKey,  entity,  };

  @BuiltValueField(wireName: r'value')
  double? get value;

  @BuiltValueField(wireName: r'latestKeyType')
  String? get latestKeyType;

  @BuiltValueField(wireName: r'latestKey')
  String? get latestKey;

  @BuiltValueField(wireName: r'entityKeyType')
  String? get entityKeyType;

  @BuiltValueField(wireName: r'entityAlias')
  String? get entityAlias;

  @BuiltValueField(wireName: r'entityKey')
  String? get entityKey;

  SimpleValueSourceConfig._();

  factory SimpleValueSourceConfig([
    void updates(SimpleValueSourceConfigBuilder b),
  ]) = _$SimpleValueSourceConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SimpleValueSourceConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SimpleValueSourceConfig> get serializer =>
      _$SimpleValueSourceConfigSerializer();
}

class _$SimpleValueSourceConfigSerializer
    implements PrimitiveSerializer<SimpleValueSourceConfig> {
  @override
  final Iterable<Type> types = const [
    SimpleValueSourceConfig,
    _$SimpleValueSourceConfig,
  ];

  @override
  final String wireName = r'SimpleValueSourceConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SimpleValueSourceConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ValueSourceType),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
    if (object.latestKeyType != null) {
      yield r'latestKeyType';
      yield serializers.serialize(
        object.latestKeyType,
        specifiedType: const FullType(String),
      );
    }
    if (object.latestKey != null) {
      yield r'latestKey';
      yield serializers.serialize(
        object.latestKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityKeyType != null) {
      yield r'entityKeyType';
      yield serializers.serialize(
        object.entityKeyType,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityAlias != null) {
      yield r'entityAlias';
      yield serializers.serialize(
        object.entityAlias,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityKey != null) {
      yield r'entityKey';
      yield serializers.serialize(
        object.entityKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SimpleValueSourceConfig object, {
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
    required SimpleValueSourceConfigBuilder result,
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
                    specifiedType: const FullType.nullable(ValueSourceType),
                  )
                  as ValueSourceType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'latestKeyType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestKeyType = valueDes;
          break;
        case r'latestKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestKey = valueDes;
          break;
        case r'entityKeyType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityKeyType = valueDes;
          break;
        case r'entityAlias':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityAlias = valueDes;
          break;
        case r'entityKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SimpleValueSourceConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleValueSourceConfigBuilder();
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

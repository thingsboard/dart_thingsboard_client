// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribute_data.g.dart';

/// AttributeData
///
/// Properties:
/// * [lastUpdateTs] - Timestamp last updated attribute, in milliseconds
/// * [key] - String representing attribute key
/// * [value] - Object representing value of attribute key
@BuiltValue()
abstract class AttributeData
    implements Built<AttributeData, AttributeDataBuilder> {
  /// Timestamp last updated attribute, in milliseconds
  @BuiltValueField(wireName: r'lastUpdateTs')
  int? get lastUpdateTs;

  /// String representing attribute key
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// Object representing value of attribute key
  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  AttributeData._();

  factory AttributeData([void updates(AttributeDataBuilder b)]) =
      _$AttributeData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributeDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributeData> get serializer =>
      _$AttributeDataSerializer();
}

class _$AttributeDataSerializer implements PrimitiveSerializer<AttributeData> {
  @override
  final Iterable<Type> types = const [AttributeData, _$AttributeData];

  @override
  final String wireName = r'AttributeData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributeData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastUpdateTs != null) {
      yield r'lastUpdateTs';
      yield serializers.serialize(
        object.lastUpdateTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributeData object, {
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
    required AttributeDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lastUpdateTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastUpdateTs = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttributeData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeDataBuilder();
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

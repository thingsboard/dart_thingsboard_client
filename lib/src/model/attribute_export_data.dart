// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribute_export_data.g.dart';

/// AttributeExportData
///
/// Properties:
/// * [key]
/// * [lastUpdateTs]
/// * [booleanValue]
/// * [strValue]
/// * [longValue]
/// * [doubleValue]
/// * [jsonValue]
@BuiltValue()
abstract class AttributeExportData
    implements Built<AttributeExportData, AttributeExportDataBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'lastUpdateTs')
  int? get lastUpdateTs;

  @BuiltValueField(wireName: r'booleanValue')
  bool? get booleanValue;

  @BuiltValueField(wireName: r'strValue')
  String? get strValue;

  @BuiltValueField(wireName: r'longValue')
  int? get longValue;

  @BuiltValueField(wireName: r'doubleValue')
  double? get doubleValue;

  @BuiltValueField(wireName: r'jsonValue')
  String? get jsonValue;

  AttributeExportData._();

  factory AttributeExportData([void updates(AttributeExportDataBuilder b)]) =
      _$AttributeExportData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributeExportDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributeExportData> get serializer =>
      _$AttributeExportDataSerializer();
}

class _$AttributeExportDataSerializer
    implements PrimitiveSerializer<AttributeExportData> {
  @override
  final Iterable<Type> types = const [
    AttributeExportData,
    _$AttributeExportData,
  ];

  @override
  final String wireName = r'AttributeExportData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributeExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastUpdateTs != null) {
      yield r'lastUpdateTs';
      yield serializers.serialize(
        object.lastUpdateTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.booleanValue != null) {
      yield r'booleanValue';
      yield serializers.serialize(
        object.booleanValue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.strValue != null) {
      yield r'strValue';
      yield serializers.serialize(
        object.strValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.longValue != null) {
      yield r'longValue';
      yield serializers.serialize(
        object.longValue,
        specifiedType: const FullType(int),
      );
    }
    if (object.doubleValue != null) {
      yield r'doubleValue';
      yield serializers.serialize(
        object.doubleValue,
        specifiedType: const FullType(double),
      );
    }
    if (object.jsonValue != null) {
      yield r'jsonValue';
      yield serializers.serialize(
        object.jsonValue,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributeExportData object, {
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
    required AttributeExportDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'booleanValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.booleanValue = valueDes;
          break;
        case r'strValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.strValue = valueDes;
          break;
        case r'longValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.longValue = valueDes;
          break;
        case r'doubleValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.doubleValue = valueDes;
          break;
        case r'jsonValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.jsonValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttributeExportData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeExportDataBuilder();
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

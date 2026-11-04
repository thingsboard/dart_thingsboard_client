// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/data_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'snmp_mapping.g.dart';

/// SnmpMapping
///
/// Properties:
/// * [oid] 
/// * [key] 
/// * [dataType] 
@BuiltValue()
abstract class SnmpMapping implements Built<SnmpMapping, SnmpMappingBuilder> {
  @BuiltValueField(wireName: r'oid')
  String? get oid;

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'dataType')
  DataType? get dataType;
  // enum dataTypeEnum {  BOOLEAN,  LONG,  DOUBLE,  STRING,  JSON,  };

  SnmpMapping._();

  factory SnmpMapping([void updates(SnmpMappingBuilder b)]) = _$SnmpMapping;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SnmpMappingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SnmpMapping> get serializer => _$SnmpMappingSerializer();
}

class _$SnmpMappingSerializer implements PrimitiveSerializer<SnmpMapping> {
  @override
  final Iterable<Type> types = const [SnmpMapping, _$SnmpMapping];

  @override
  final String wireName = r'SnmpMapping';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SnmpMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.oid != null) {
      yield r'oid';
      yield serializers.serialize(
        object.oid,
        specifiedType: const FullType(String),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataType != null) {
      yield r'dataType';
      yield serializers.serialize(
        object.dataType,
        specifiedType: const FullType(DataType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SnmpMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SnmpMappingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'oid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oid = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'dataType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DataType),
          ) as DataType?;
          if (valueDes == null) continue;
          result.dataType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SnmpMapping deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnmpMappingBuilder();
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



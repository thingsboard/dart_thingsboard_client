// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/data_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ts_kv_entry.g.dart';

/// TsKvEntry
///
/// Properties:
/// * [ts] 
/// * [value] 
/// * [key] 
/// * [doubleValue] 
/// * [longValue] 
/// * [booleanValue] 
/// * [valueAsString] 
/// * [dataType] 
/// * [jsonValue] 
/// * [strValue] 
/// * [version] 
@BuiltValue()
abstract class TsKvEntry implements Built<TsKvEntry, TsKvEntryBuilder> {
  @BuiltValueField(wireName: r'ts')
  int? get ts;

  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'doubleValue')
  double? get doubleValue;

  @BuiltValueField(wireName: r'longValue')
  int? get longValue;

  @BuiltValueField(wireName: r'booleanValue')
  bool? get booleanValue;

  @BuiltValueField(wireName: r'valueAsString')
  String? get valueAsString;

  @BuiltValueField(wireName: r'dataType')
  DataType? get dataType;
  // enum dataTypeEnum {  BOOLEAN,  LONG,  DOUBLE,  STRING,  JSON,  };

  @BuiltValueField(wireName: r'jsonValue')
  String? get jsonValue;

  @BuiltValueField(wireName: r'strValue')
  String? get strValue;

  @BuiltValueField(wireName: r'version')
  int? get version;

  TsKvEntry._();

  factory TsKvEntry([void updates(TsKvEntryBuilder b)]) = _$TsKvEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TsKvEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TsKvEntry> get serializer => _$TsKvEntrySerializer();
}

class _$TsKvEntrySerializer implements PrimitiveSerializer<TsKvEntry> {
  @override
  final Iterable<Type> types = const [TsKvEntry, _$TsKvEntry];

  @override
  final String wireName = r'TsKvEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TsKvEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ts != null) {
      yield r'ts';
      yield serializers.serialize(
        object.ts,
        specifiedType: const FullType(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.doubleValue != null) {
      yield r'doubleValue';
      yield serializers.serialize(
        object.doubleValue,
        specifiedType: const FullType(double),
      );
    }
    if (object.longValue != null) {
      yield r'longValue';
      yield serializers.serialize(
        object.longValue,
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
    if (object.valueAsString != null) {
      yield r'valueAsString';
      yield serializers.serialize(
        object.valueAsString,
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
    if (object.jsonValue != null) {
      yield r'jsonValue';
      yield serializers.serialize(
        object.jsonValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.strValue != null) {
      yield r'strValue';
      yield serializers.serialize(
        object.strValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TsKvEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TsKvEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ts = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'doubleValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.doubleValue = valueDes;
          break;
        case r'longValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.longValue = valueDes;
          break;
        case r'booleanValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.booleanValue = valueDes;
          break;
        case r'valueAsString':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.valueAsString = valueDes;
          break;
        case r'dataType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DataType),
          ) as DataType?;
          if (valueDes == null) continue;
          result.dataType = valueDes;
          break;
        case r'jsonValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jsonValue = valueDes;
          break;
        case r'strValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.strValue = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TsKvEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TsKvEntryBuilder();
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



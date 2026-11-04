// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/column_mapping.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping.g.dart';

/// Mapping
///
/// Properties:
/// * [columns]
/// * [delimiter]
/// * [updateFlag]
/// * [header]
@BuiltValue()
abstract class Mapping implements Built<Mapping, MappingBuilder> {
  @BuiltValueField(wireName: r'columns')
  BuiltList<ColumnMapping>? get columns;

  @BuiltValueField(wireName: r'delimiter')
  String? get delimiter;

  @BuiltValueField(wireName: r'update')
  bool? get updateFlag;

  @BuiltValueField(wireName: r'header')
  bool? get header;

  Mapping._();

  factory Mapping([void updates(MappingBuilder b)]) = _$Mapping;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Mapping> get serializer => _$MappingSerializer();
}

class _$MappingSerializer implements PrimitiveSerializer<Mapping> {
  @override
  final Iterable<Type> types = const [Mapping, _$Mapping];

  @override
  final String wireName = r'Mapping';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Mapping object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.columns != null) {
      yield r'columns';
      yield serializers.serialize(
        object.columns,
        specifiedType: const FullType(BuiltList, [FullType(ColumnMapping)]),
      );
    }
    if (object.delimiter != null) {
      yield r'delimiter';
      yield serializers.serialize(
        object.delimiter,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateFlag != null) {
      yield r'update';
      yield serializers.serialize(
        object.updateFlag,
        specifiedType: const FullType(bool),
      );
    }
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Mapping object, {
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
    required MappingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'columns':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ColumnMapping),
                    ]),
                  )
                  as BuiltList<ColumnMapping>?;
          if (valueDes == null) continue;
          result.columns.replace(valueDes);
          break;
        case r'delimiter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.delimiter = valueDes;
          break;
        case r'update':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.updateFlag = valueDes;
          break;
        case r'header':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.header = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Mapping deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingBuilder();
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

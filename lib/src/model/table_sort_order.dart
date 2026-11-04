// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/table_sort_direction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'table_sort_order.g.dart';

/// TableSortOrder
///
/// Properties:
/// * [column] 
/// * [direction] 
@BuiltValue()
abstract class TableSortOrder implements Built<TableSortOrder, TableSortOrderBuilder> {
  @BuiltValueField(wireName: r'column')
  String? get column;

  @BuiltValueField(wireName: r'direction')
  TableSortDirection? get direction;
  // enum directionEnum {  ASC,  DESC,  };

  TableSortOrder._();

  factory TableSortOrder([void updates(TableSortOrderBuilder b)]) = _$TableSortOrder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TableSortOrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TableSortOrder> get serializer => _$TableSortOrderSerializer();
}

class _$TableSortOrderSerializer implements PrimitiveSerializer<TableSortOrder> {
  @override
  final Iterable<Type> types = const [TableSortOrder, _$TableSortOrder];

  @override
  final String wireName = r'TableSortOrder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TableSortOrder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.column != null) {
      yield r'column';
      yield serializers.serialize(
        object.column,
        specifiedType: const FullType(String),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(TableSortDirection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TableSortOrder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TableSortOrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'column':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.column = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TableSortDirection),
          ) as TableSortDirection?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TableSortOrder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TableSortOrderBuilder();
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



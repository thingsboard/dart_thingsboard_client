// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/ts_kv_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_ts_kv_query_result.g.dart';

/// ReadTsKvQueryResult
///
/// Properties:
/// * [queryId] 
/// * [data] 
/// * [lastEntryTs] 
@BuiltValue()
abstract class ReadTsKvQueryResult implements Built<ReadTsKvQueryResult, ReadTsKvQueryResultBuilder> {
  @BuiltValueField(wireName: r'queryId')
  int? get queryId;

  @BuiltValueField(wireName: r'data')
  BuiltList<TsKvEntry>? get data;

  @BuiltValueField(wireName: r'lastEntryTs')
  int? get lastEntryTs;

  ReadTsKvQueryResult._();

  factory ReadTsKvQueryResult([void updates(ReadTsKvQueryResultBuilder b)]) = _$ReadTsKvQueryResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadTsKvQueryResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadTsKvQueryResult> get serializer => _$ReadTsKvQueryResultSerializer();
}

class _$ReadTsKvQueryResultSerializer implements PrimitiveSerializer<ReadTsKvQueryResult> {
  @override
  final Iterable<Type> types = const [ReadTsKvQueryResult, _$ReadTsKvQueryResult];

  @override
  final String wireName = r'ReadTsKvQueryResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadTsKvQueryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.queryId != null) {
      yield r'queryId';
      yield serializers.serialize(
        object.queryId,
        specifiedType: const FullType(int),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(TsKvEntry)]),
      );
    }
    if (object.lastEntryTs != null) {
      yield r'lastEntryTs';
      yield serializers.serialize(
        object.lastEntryTs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadTsKvQueryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReadTsKvQueryResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.queryId = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TsKvEntry)]),
          ) as BuiltList<TsKvEntry>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'lastEntryTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastEntryTs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadTsKvQueryResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadTsKvQueryResultBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_load_error.dart';
import 'package:thingsboard_client/src/model/entity_type_load_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_load_result.g.dart';

/// VersionLoadResult
///
/// Properties:
/// * [result] 
/// * [error] 
/// * [done] 
@BuiltValue()
abstract class VersionLoadResult implements Built<VersionLoadResult, VersionLoadResultBuilder> {
  @BuiltValueField(wireName: r'result')
  BuiltList<EntityTypeLoadResult>? get result;

  @BuiltValueField(wireName: r'error')
  EntityLoadError? get error;

  @BuiltValueField(wireName: r'done')
  bool? get done;

  VersionLoadResult._();

  factory VersionLoadResult([void updates(VersionLoadResultBuilder b)]) = _$VersionLoadResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VersionLoadResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionLoadResult> get serializer => _$VersionLoadResultSerializer();
}

class _$VersionLoadResultSerializer implements PrimitiveSerializer<VersionLoadResult> {
  @override
  final Iterable<Type> types = const [VersionLoadResult, _$VersionLoadResult];

  @override
  final String wireName = r'VersionLoadResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionLoadResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(BuiltList, [FullType(EntityTypeLoadResult)]),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(EntityLoadError),
      );
    }
    if (object.done != null) {
      yield r'done';
      yield serializers.serialize(
        object.done,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionLoadResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VersionLoadResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EntityTypeLoadResult)]),
          ) as BuiltList<EntityTypeLoadResult>?;
          if (valueDes == null) continue;
          result.result.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityLoadError),
          ) as EntityLoadError?;
          if (valueDes == null) continue;
          result.error.replace(valueDes);
          break;
        case r'done':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.done = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VersionLoadResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VersionLoadResultBuilder();
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



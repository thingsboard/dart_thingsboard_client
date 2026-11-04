// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_creation_result.g.dart';

/// VersionCreationResult
///
/// Properties:
/// * [version] 
/// * [added] 
/// * [modified] 
/// * [removed] 
/// * [error] 
/// * [done] 
@BuiltValue()
abstract class VersionCreationResult implements Built<VersionCreationResult, VersionCreationResultBuilder> {
  @BuiltValueField(wireName: r'version')
  EntityVersion? get version;

  @BuiltValueField(wireName: r'added')
  int? get added;

  @BuiltValueField(wireName: r'modified')
  int? get modified;

  @BuiltValueField(wireName: r'removed')
  int? get removed;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'done')
  bool? get done;

  VersionCreationResult._();

  factory VersionCreationResult([void updates(VersionCreationResultBuilder b)]) = _$VersionCreationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VersionCreationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionCreationResult> get serializer => _$VersionCreationResultSerializer();
}

class _$VersionCreationResultSerializer implements PrimitiveSerializer<VersionCreationResult> {
  @override
  final Iterable<Type> types = const [VersionCreationResult, _$VersionCreationResult];

  @override
  final String wireName = r'VersionCreationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionCreationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(EntityVersion),
      );
    }
    if (object.added != null) {
      yield r'added';
      yield serializers.serialize(
        object.added,
        specifiedType: const FullType(int),
      );
    }
    if (object.modified != null) {
      yield r'modified';
      yield serializers.serialize(
        object.modified,
        specifiedType: const FullType(int),
      );
    }
    if (object.removed != null) {
      yield r'removed';
      yield serializers.serialize(
        object.removed,
        specifiedType: const FullType(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
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
    VersionCreationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VersionCreationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityVersion),
          ) as EntityVersion?;
          if (valueDes == null) continue;
          result.version.replace(valueDes);
          break;
        case r'added':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.added = valueDes;
          break;
        case r'modified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.modified = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.removed = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
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
  VersionCreationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VersionCreationResultBuilder();
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



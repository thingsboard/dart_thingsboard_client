// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_export_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_data_diff.g.dart';

/// EntityDataDiff
///
/// Properties:
/// * [currentVersion]
/// * [otherVersion]
@BuiltValue()
abstract class EntityDataDiff
    implements Built<EntityDataDiff, EntityDataDiffBuilder> {
  @BuiltValueField(wireName: r'currentVersion')
  EntityExportData? get currentVersion;

  @BuiltValueField(wireName: r'otherVersion')
  EntityExportData? get otherVersion;

  EntityDataDiff._();

  factory EntityDataDiff([void updates(EntityDataDiffBuilder b)]) =
      _$EntityDataDiff;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityDataDiffBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityDataDiff> get serializer =>
      _$EntityDataDiffSerializer();
}

class _$EntityDataDiffSerializer
    implements PrimitiveSerializer<EntityDataDiff> {
  @override
  final Iterable<Type> types = const [EntityDataDiff, _$EntityDataDiff];

  @override
  final String wireName = r'EntityDataDiff';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityDataDiff object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentVersion != null) {
      yield r'currentVersion';
      yield serializers.serialize(
        object.currentVersion,
        specifiedType: const FullType(EntityExportData),
      );
    }
    if (object.otherVersion != null) {
      yield r'otherVersion';
      yield serializers.serialize(
        object.otherVersion,
        specifiedType: const FullType(EntityExportData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityDataDiff object, {
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
    required EntityDataDiffBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currentVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityExportData),
                  )
                  as EntityExportData?;
          if (valueDes == null) continue;
          result.currentVersion = valueDes;
          break;
        case r'otherVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityExportData),
                  )
                  as EntityExportData?;
          if (valueDes == null) continue;
          result.otherVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityDataDiff deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityDataDiffBuilder();
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

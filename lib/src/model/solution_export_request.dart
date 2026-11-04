// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_export_settings.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'solution_export_request.g.dart';

/// Solution export request specifying which entities to include and export settings.
///
/// Properties:
/// * [internalIds] - Set of internal entity IDs to export. The 'id' of each EntityId is the server-internal UUID. All listed entities must belong to the current tenant. Optional, but at least one of 'internalIds' or 'externalIds' must be non-empty.
/// * [externalIds] - Set of external entity IDs to export. The 'id' of each EntityId is the external UUID (as stored in the 'externalId' field on the entity in the current tenant). The server looks up each entity by 'externalId' and 'entityType' within the current tenant. Optional, but at least one of 'internalIds' or 'externalIds' must be non-empty.
/// * [settings] - Optional export settings controlling what additional data is included (relations, attributes, credentials, etc.). If not specified, default settings will be used that include all available data.
@BuiltValue()
abstract class SolutionExportRequest implements Built<SolutionExportRequest, SolutionExportRequestBuilder> {
  /// Set of internal entity IDs to export. The 'id' of each EntityId is the server-internal UUID. All listed entities must belong to the current tenant. Optional, but at least one of 'internalIds' or 'externalIds' must be non-empty.
  @BuiltValueField(wireName: r'internalIds')
  BuiltSet<EntityId>? get internalIds;

  /// Set of external entity IDs to export. The 'id' of each EntityId is the external UUID (as stored in the 'externalId' field on the entity in the current tenant). The server looks up each entity by 'externalId' and 'entityType' within the current tenant. Optional, but at least one of 'internalIds' or 'externalIds' must be non-empty.
  @BuiltValueField(wireName: r'externalIds')
  BuiltSet<EntityId>? get externalIds;

  /// Optional export settings controlling what additional data is included (relations, attributes, credentials, etc.). If not specified, default settings will be used that include all available data.
  @BuiltValueField(wireName: r'settings')
  EntityExportSettings? get settings;

  SolutionExportRequest._();

  factory SolutionExportRequest([void updates(SolutionExportRequestBuilder b)]) = _$SolutionExportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SolutionExportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SolutionExportRequest> get serializer => _$SolutionExportRequestSerializer();
}

class _$SolutionExportRequestSerializer implements PrimitiveSerializer<SolutionExportRequest> {
  @override
  final Iterable<Type> types = const [SolutionExportRequest, _$SolutionExportRequest];

  @override
  final String wireName = r'SolutionExportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SolutionExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.internalIds != null) {
      yield r'internalIds';
      yield serializers.serialize(
        object.internalIds,
        specifiedType: const FullType(BuiltSet, [FullType(EntityId)]),
      );
    }
    if (object.externalIds != null) {
      yield r'externalIds';
      yield serializers.serialize(
        object.externalIds,
        specifiedType: const FullType(BuiltSet, [FullType(EntityId)]),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType(EntityExportSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SolutionExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SolutionExportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'internalIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(EntityId)]),
          ) as BuiltSet<EntityId>?;
          if (valueDes == null) continue;
          result.internalIds.replace(valueDes);
          break;
        case r'externalIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(EntityId)]),
          ) as BuiltSet<EntityId>?;
          if (valueDes == null) continue;
          result.externalIds.replace(valueDes);
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityExportSettings),
          ) as EntityExportSettings?;
          if (valueDes == null) continue;
          result.settings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SolutionExportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SolutionExportRequestBuilder();
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



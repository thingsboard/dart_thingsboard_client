// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/relations_search_parameters.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_search_query.g.dart';

/// AssetSearchQuery
///
/// Properties:
/// * [parameters] - Main search parameters.
/// * [relationType] - Type of the relation between root entity and asset (e.g. 'Contains' or 'Manages').
/// * [assetTypes] - Array of asset types to filter the related entities (e.g. 'Building', 'Vehicle').
@BuiltValue()
abstract class AssetSearchQuery
    implements Built<AssetSearchQuery, AssetSearchQueryBuilder> {
  /// Main search parameters.
  @BuiltValueField(wireName: r'parameters')
  RelationsSearchParameters? get parameters;

  /// Type of the relation between root entity and asset (e.g. 'Contains' or 'Manages').
  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  /// Array of asset types to filter the related entities (e.g. 'Building', 'Vehicle').
  @BuiltValueField(wireName: r'assetTypes')
  BuiltList<String>? get assetTypes;

  AssetSearchQuery._();

  factory AssetSearchQuery([void updates(AssetSearchQueryBuilder b)]) =
      _$AssetSearchQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetSearchQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetSearchQuery> get serializer =>
      _$AssetSearchQuerySerializer();
}

class _$AssetSearchQuerySerializer
    implements PrimitiveSerializer<AssetSearchQuery> {
  @override
  final Iterable<Type> types = const [AssetSearchQuery, _$AssetSearchQuery];

  @override
  final String wireName = r'AssetSearchQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetSearchQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(RelationsSearchParameters),
      );
    }
    if (object.relationType != null) {
      yield r'relationType';
      yield serializers.serialize(
        object.relationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.assetTypes != null) {
      yield r'assetTypes';
      yield serializers.serialize(
        object.assetTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetSearchQuery object, {
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
    required AssetSearchQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parameters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RelationsSearchParameters,
                    ),
                  )
                  as RelationsSearchParameters?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'relationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.relationType = valueDes;
          break;
        case r'assetTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.assetTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssetSearchQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetSearchQueryBuilder();
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

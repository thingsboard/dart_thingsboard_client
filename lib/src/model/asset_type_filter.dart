// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_type_filter.g.dart';

/// AssetTypeFilter
///
/// Properties:
/// * [type]
/// * [assetTypes]
/// * [assetNameFilter]
/// * [assetType]
@BuiltValue()
abstract class AssetTypeFilter
    implements EntityFilter, Built<AssetTypeFilter, AssetTypeFilterBuilder> {
  @BuiltValueField(wireName: r'assetTypes')
  BuiltList<String>? get assetTypes;

  @BuiltValueField(wireName: r'assetNameFilter')
  String? get assetNameFilter;

  @Deprecated('assetType has been deprecated')
  @BuiltValueField(wireName: r'assetType')
  String? get assetType;

  AssetTypeFilter._();

  factory AssetTypeFilter([void updates(AssetTypeFilterBuilder b)]) =
      _$AssetTypeFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetTypeFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetTypeFilter> get serializer =>
      _$AssetTypeFilterSerializer();
}

class _$AssetTypeFilterSerializer
    implements PrimitiveSerializer<AssetTypeFilter> {
  @override
  final Iterable<Type> types = const [AssetTypeFilter, _$AssetTypeFilter];

  @override
  final String wireName = r'AssetTypeFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetTypeFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assetTypes != null) {
      yield r'assetTypes';
      yield serializers.serialize(
        object.assetTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.assetNameFilter != null) {
      yield r'assetNameFilter';
      yield serializers.serialize(
        object.assetNameFilter,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.assetType != null) {
      yield r'assetType';
      yield serializers.serialize(
        object.assetType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetTypeFilter object, {
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
    required AssetTypeFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'assetNameFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.assetNameFilter = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'assetType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.assetType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssetTypeFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetTypeFilterBuilder();
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

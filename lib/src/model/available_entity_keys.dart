// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'available_entity_keys.g.dart';

/// Contains unique time series and attribute key names discovered from entities matching a query. Used primarily for UI hints such as autocomplete suggestions.
///
/// Properties:
/// * [entityTypes] - Set of entity types found among the matched entities.
/// * [timeseries] - List of unique time series key names available on the matched entities.
/// * [attribute] - List of unique attribute key names available on the matched entities.
@BuiltValue()
abstract class AvailableEntityKeys
    implements Built<AvailableEntityKeys, AvailableEntityKeysBuilder> {
  /// Set of entity types found among the matched entities.
  @BuiltValueField(wireName: r'entityTypes')
  BuiltSet<EntityType> get entityTypes;

  /// List of unique time series key names available on the matched entities.
  @BuiltValueField(wireName: r'timeseries')
  BuiltSet<String> get timeseries;

  /// List of unique attribute key names available on the matched entities.
  @BuiltValueField(wireName: r'attribute')
  BuiltSet<String> get attribute;

  AvailableEntityKeys._();

  factory AvailableEntityKeys([void updates(AvailableEntityKeysBuilder b)]) =
      _$AvailableEntityKeys;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvailableEntityKeysBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvailableEntityKeys> get serializer =>
      _$AvailableEntityKeysSerializer();
}

class _$AvailableEntityKeysSerializer
    implements PrimitiveSerializer<AvailableEntityKeys> {
  @override
  final Iterable<Type> types = const [
    AvailableEntityKeys,
    _$AvailableEntityKeys,
  ];

  @override
  final String wireName = r'AvailableEntityKeys';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvailableEntityKeys object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityTypes';
    yield serializers.serialize(
      object.entityTypes,
      specifiedType: const FullType(BuiltSet, [FullType(EntityType)]),
    );
    yield r'timeseries';
    yield serializers.serialize(
      object.timeseries,
      specifiedType: const FullType(BuiltSet, [FullType(String)]),
    );
    yield r'attribute';
    yield serializers.serialize(
      object.attribute,
      specifiedType: const FullType(BuiltSet, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AvailableEntityKeys object, {
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
    required AvailableEntityKeysBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltSet, [
                      FullType(EntityType),
                    ]),
                  )
                  as BuiltSet<EntityType>;
          result.entityTypes.replace(valueDes);
          break;
        case r'timeseries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltSet, [FullType(String)]),
                  )
                  as BuiltSet<String>;
          result.timeseries.replace(valueDes);
          break;
        case r'attribute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltSet, [FullType(String)]),
                  )
                  as BuiltSet<String>;
          result.attribute.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AvailableEntityKeys deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailableEntityKeysBuilder();
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

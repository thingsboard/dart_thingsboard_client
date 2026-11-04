// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/rule_chain_meta_data.dart';
import 'package:thingsboard_client/src/model/rule_chain.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_chain_data.g.dart';

/// A JSON value representing the rule chains.
///
/// Properties:
/// * [ruleChains] - List of the Rule Chain objects.
/// * [metadata] - List of the Rule Chain metadata objects.
@BuiltValue()
abstract class RuleChainData
    implements Built<RuleChainData, RuleChainDataBuilder> {
  /// List of the Rule Chain objects.
  @BuiltValueField(wireName: r'ruleChains')
  BuiltList<RuleChain> get ruleChains;

  /// List of the Rule Chain metadata objects.
  @BuiltValueField(wireName: r'metadata')
  BuiltList<RuleChainMetaData> get metadata;

  RuleChainData._();

  factory RuleChainData([void updates(RuleChainDataBuilder b)]) =
      _$RuleChainData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChainData> get serializer =>
      _$RuleChainDataSerializer();
}

class _$RuleChainDataSerializer implements PrimitiveSerializer<RuleChainData> {
  @override
  final Iterable<Type> types = const [RuleChainData, _$RuleChainData];

  @override
  final String wireName = r'RuleChainData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChainData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleChains';
    yield serializers.serialize(
      object.ruleChains,
      specifiedType: const FullType(BuiltList, [FullType(RuleChain)]),
    );
    yield r'metadata';
    yield serializers.serialize(
      object.metadata,
      specifiedType: const FullType(BuiltList, [FullType(RuleChainMetaData)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleChainData object, {
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
    required RuleChainDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleChains':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RuleChain),
                    ]),
                  )
                  as BuiltList<RuleChain>;
          result.ruleChains.replace(valueDes);
          break;
        case r'metadata':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RuleChainMetaData),
                    ]),
                  )
                  as BuiltList<RuleChainMetaData>;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleChainData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainDataBuilder();
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

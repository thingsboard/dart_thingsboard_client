// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:thingsboard_client/src/model/rule_node_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_chain_output_labels_usage.g.dart';

/// RuleChainOutputLabelsUsage
///
/// Properties:
/// * [ruleChainId] - Rule Chain Id
/// * [ruleNodeId] - Rule Node Id
/// * [ruleChainName] - Rule Chain Name
/// * [ruleNodeName] - Rule Node Name
/// * [labels] - Output labels
@BuiltValue()
abstract class RuleChainOutputLabelsUsage implements Built<RuleChainOutputLabelsUsage, RuleChainOutputLabelsUsageBuilder> {
  /// Rule Chain Id
  @BuiltValueField(wireName: r'ruleChainId')
  RuleChainId get ruleChainId;

  /// Rule Node Id
  @BuiltValueField(wireName: r'ruleNodeId')
  RuleNodeId get ruleNodeId;

  /// Rule Chain Name
  @BuiltValueField(wireName: r'ruleChainName')
  String get ruleChainName;

  /// Rule Node Name
  @BuiltValueField(wireName: r'ruleNodeName')
  String get ruleNodeName;

  /// Output labels
  @BuiltValueField(wireName: r'labels')
  BuiltSet<String> get labels;

  RuleChainOutputLabelsUsage._();

  factory RuleChainOutputLabelsUsage([void updates(RuleChainOutputLabelsUsageBuilder b)]) = _$RuleChainOutputLabelsUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainOutputLabelsUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChainOutputLabelsUsage> get serializer => _$RuleChainOutputLabelsUsageSerializer();
}

class _$RuleChainOutputLabelsUsageSerializer implements PrimitiveSerializer<RuleChainOutputLabelsUsage> {
  @override
  final Iterable<Type> types = const [RuleChainOutputLabelsUsage, _$RuleChainOutputLabelsUsage];

  @override
  final String wireName = r'RuleChainOutputLabelsUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChainOutputLabelsUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleChainId';
    yield serializers.serialize(
      object.ruleChainId,
      specifiedType: const FullType(RuleChainId),
    );
    yield r'ruleNodeId';
    yield serializers.serialize(
      object.ruleNodeId,
      specifiedType: const FullType(RuleNodeId),
    );
    yield r'ruleChainName';
    yield serializers.serialize(
      object.ruleChainName,
      specifiedType: const FullType(String),
    );
    yield r'ruleNodeName';
    yield serializers.serialize(
      object.ruleNodeName,
      specifiedType: const FullType(String),
    );
    yield r'labels';
    yield serializers.serialize(
      object.labels,
      specifiedType: const FullType(BuiltSet, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleChainOutputLabelsUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuleChainOutputLabelsUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleChainId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RuleChainId),
          ) as RuleChainId;
          result.ruleChainId.replace(valueDes);
          break;
        case r'ruleNodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RuleNodeId),
          ) as RuleNodeId;
          result.ruleNodeId.replace(valueDes);
          break;
        case r'ruleChainName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleChainName = valueDes;
          break;
        case r'ruleNodeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleNodeName = valueDes;
          break;
        case r'labels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>;
          result.labels.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleChainOutputLabelsUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainOutputLabelsUsageBuilder();
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



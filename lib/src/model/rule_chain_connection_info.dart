// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_chain_connection_info.g.dart';

/// RuleChainConnectionInfo
///
/// Properties:
/// * [fromIndex] - Index of rule node in the 'nodes' array of the RuleChainMetaData. Indicates the 'from' part of the connection.
/// * [targetRuleChainId] - JSON object with the Rule Chain Id.
/// * [additionalInfo] - JSON object with the additional information about the connection.
/// * [type] - Type of the relation. Typically indicated the result of processing by the 'from' rule node. For example, 'Success' or 'Failure'
@BuiltValue()
abstract class RuleChainConnectionInfo
    implements Built<RuleChainConnectionInfo, RuleChainConnectionInfoBuilder> {
  /// Index of rule node in the 'nodes' array of the RuleChainMetaData. Indicates the 'from' part of the connection.
  @BuiltValueField(wireName: r'fromIndex')
  int get fromIndex;

  /// JSON object with the Rule Chain Id.
  @BuiltValueField(wireName: r'targetRuleChainId')
  RuleChainId get targetRuleChainId;

  /// JSON object with the additional information about the connection.
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// Type of the relation. Typically indicated the result of processing by the 'from' rule node. For example, 'Success' or 'Failure'
  @BuiltValueField(wireName: r'type')
  String get type;

  RuleChainConnectionInfo._();

  factory RuleChainConnectionInfo([
    void updates(RuleChainConnectionInfoBuilder b),
  ]) = _$RuleChainConnectionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainConnectionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChainConnectionInfo> get serializer =>
      _$RuleChainConnectionInfoSerializer();
}

class _$RuleChainConnectionInfoSerializer
    implements PrimitiveSerializer<RuleChainConnectionInfo> {
  @override
  final Iterable<Type> types = const [
    RuleChainConnectionInfo,
    _$RuleChainConnectionInfo,
  ];

  @override
  final String wireName = r'RuleChainConnectionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChainConnectionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fromIndex';
    yield serializers.serialize(
      object.fromIndex,
      specifiedType: const FullType(int),
    );
    yield r'targetRuleChainId';
    yield serializers.serialize(
      object.targetRuleChainId,
      specifiedType: const FullType(RuleChainId),
    );
    yield r'additionalInfo';
    yield object.additionalInfo == null
        ? null
        : serializers.serialize(
            object.additionalInfo,
            specifiedType: const FullType.nullable(JsonObject),
          );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleChainConnectionInfo object, {
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
    required RuleChainConnectionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromIndex':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromIndex = valueDes;
          break;
        case r'targetRuleChainId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RuleChainId),
                  )
                  as RuleChainId;
          result.targetRuleChainId.replace(valueDes);
          break;
        case r'additionalInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleChainConnectionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainConnectionInfoBuilder();
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

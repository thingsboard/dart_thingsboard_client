// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/node_connection_info.dart';
import 'package:thingsboard_client/src/model/rule_chain_connection_info.dart';
import 'package:thingsboard_client/src/model/rule_chain_note.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:thingsboard_client/src/model/rule_node.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_chain_meta_data.g.dart';

/// A JSON value representing the rule chain metadata.
///
/// Properties:
/// * [ruleChainId] - JSON object with Rule Chain Id.
/// * [version] - Version of the Rule Chain
/// * [firstNodeIndex] - Index of the first rule node in the 'nodes' list
/// * [nodes] - List of rule node JSON objects
/// * [connections] - List of JSON objects that represent connections between rule nodes
/// * [ruleChainConnections] - List of JSON objects that represent connections between rule nodes and other rule chains.
/// * [notes] - List of sticky notes placed on the rule chain canvas
@BuiltValue()
abstract class RuleChainMetaData
    implements Built<RuleChainMetaData, RuleChainMetaDataBuilder> {
  /// JSON object with Rule Chain Id.
  @BuiltValueField(wireName: r'ruleChainId')
  RuleChainId get ruleChainId;

  /// Version of the Rule Chain
  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Index of the first rule node in the 'nodes' list
  @BuiltValueField(wireName: r'firstNodeIndex')
  int? get firstNodeIndex;

  /// List of rule node JSON objects
  @BuiltValueField(wireName: r'nodes')
  BuiltList<RuleNode> get nodes;

  /// List of JSON objects that represent connections between rule nodes
  @BuiltValueField(wireName: r'connections')
  BuiltList<NodeConnectionInfo>? get connections;

  /// List of JSON objects that represent connections between rule nodes and other rule chains.
  @BuiltValueField(wireName: r'ruleChainConnections')
  BuiltList<RuleChainConnectionInfo>? get ruleChainConnections;

  /// List of sticky notes placed on the rule chain canvas
  @BuiltValueField(wireName: r'notes')
  BuiltList<RuleChainNote>? get notes;

  RuleChainMetaData._();

  factory RuleChainMetaData([void updates(RuleChainMetaDataBuilder b)]) =
      _$RuleChainMetaData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainMetaDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChainMetaData> get serializer =>
      _$RuleChainMetaDataSerializer();
}

class _$RuleChainMetaDataSerializer
    implements PrimitiveSerializer<RuleChainMetaData> {
  @override
  final Iterable<Type> types = const [RuleChainMetaData, _$RuleChainMetaData];

  @override
  final String wireName = r'RuleChainMetaData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChainMetaData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleChainId';
    yield serializers.serialize(
      object.ruleChainId,
      specifiedType: const FullType(RuleChainId),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstNodeIndex != null) {
      yield r'firstNodeIndex';
      yield serializers.serialize(
        object.firstNodeIndex,
        specifiedType: const FullType(int),
      );
    }
    yield r'nodes';
    yield serializers.serialize(
      object.nodes,
      specifiedType: const FullType(BuiltList, [FullType(RuleNode)]),
    );
    if (object.connections != null) {
      yield r'connections';
      yield serializers.serialize(
        object.connections,
        specifiedType: const FullType(BuiltList, [
          FullType(NodeConnectionInfo),
        ]),
      );
    }
    if (object.ruleChainConnections != null) {
      yield r'ruleChainConnections';
      yield serializers.serialize(
        object.ruleChainConnections,
        specifiedType: const FullType(BuiltList, [
          FullType(RuleChainConnectionInfo),
        ]),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(BuiltList, [FullType(RuleChainNote)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleChainMetaData object, {
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
    required RuleChainMetaDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleChainId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RuleChainId),
                  )
                  as RuleChainId;
          result.ruleChainId.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'firstNodeIndex':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.firstNodeIndex = valueDes;
          break;
        case r'nodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RuleNode),
                    ]),
                  )
                  as BuiltList<RuleNode>;
          result.nodes.replace(valueDes);
          break;
        case r'connections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(NodeConnectionInfo),
                    ]),
                  )
                  as BuiltList<NodeConnectionInfo>?;
          if (valueDes == null) continue;
          result.connections.replace(valueDes);
          break;
        case r'ruleChainConnections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleChainConnectionInfo),
                    ]),
                  )
                  as BuiltList<RuleChainConnectionInfo>?;
          if (valueDes == null) continue;
          result.ruleChainConnections.replace(valueDes);
          break;
        case r'notes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleChainNote),
                    ]),
                  )
                  as BuiltList<RuleChainNote>?;
          if (valueDes == null) continue;
          result.notes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleChainMetaData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainMetaDataBuilder();
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

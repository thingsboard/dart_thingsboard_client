// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_connection_info.g.dart';

/// NodeConnectionInfo
///
/// Properties:
/// * [fromIndex] - Index of rule node in the 'nodes' array of the RuleChainMetaData. Indicates the 'from' part of the connection.
/// * [toIndex] - Index of rule node in the 'nodes' array of the RuleChainMetaData. Indicates the 'to' part of the connection.
/// * [type] - Type of the relation. Typically indicated the result of processing by the 'from' rule node. For example, 'Success' or 'Failure'
@BuiltValue()
abstract class NodeConnectionInfo
    implements Built<NodeConnectionInfo, NodeConnectionInfoBuilder> {
  /// Index of rule node in the 'nodes' array of the RuleChainMetaData. Indicates the 'from' part of the connection.
  @BuiltValueField(wireName: r'fromIndex')
  int get fromIndex;

  /// Index of rule node in the 'nodes' array of the RuleChainMetaData. Indicates the 'to' part of the connection.
  @BuiltValueField(wireName: r'toIndex')
  int get toIndex;

  /// Type of the relation. Typically indicated the result of processing by the 'from' rule node. For example, 'Success' or 'Failure'
  @BuiltValueField(wireName: r'type')
  String get type;

  NodeConnectionInfo._();

  factory NodeConnectionInfo([void updates(NodeConnectionInfoBuilder b)]) =
      _$NodeConnectionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NodeConnectionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NodeConnectionInfo> get serializer =>
      _$NodeConnectionInfoSerializer();
}

class _$NodeConnectionInfoSerializer
    implements PrimitiveSerializer<NodeConnectionInfo> {
  @override
  final Iterable<Type> types = const [NodeConnectionInfo, _$NodeConnectionInfo];

  @override
  final String wireName = r'NodeConnectionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NodeConnectionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fromIndex';
    yield serializers.serialize(
      object.fromIndex,
      specifiedType: const FullType(int),
    );
    yield r'toIndex';
    yield serializers.serialize(
      object.toIndex,
      specifiedType: const FullType(int),
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
    NodeConnectionInfo object, {
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
    required NodeConnectionInfoBuilder result,
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
        case r'toIndex':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toIndex = valueDes;
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
  NodeConnectionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NodeConnectionInfoBuilder();
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

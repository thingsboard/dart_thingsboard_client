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

part 'agent_upgrade_request.g.dart';

/// AgentUpgradeRequest
///
/// Properties:
/// * [imageRef] - Target agent image reference — a digest-pinned reference in production, or a tag.
@BuiltValue()
abstract class AgentUpgradeRequest implements Built<AgentUpgradeRequest, AgentUpgradeRequestBuilder> {
  /// Target agent image reference — a digest-pinned reference in production, or a tag.
  @BuiltValueField(wireName: r'imageRef')
  String get imageRef;

  AgentUpgradeRequest._();

  factory AgentUpgradeRequest([void updates(AgentUpgradeRequestBuilder b)]) = _$AgentUpgradeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentUpgradeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentUpgradeRequest> get serializer => _$AgentUpgradeRequestSerializer();
}

class _$AgentUpgradeRequestSerializer implements PrimitiveSerializer<AgentUpgradeRequest> {
  @override
  final Iterable<Type> types = const [AgentUpgradeRequest, _$AgentUpgradeRequest];

  @override
  final String wireName = r'AgentUpgradeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentUpgradeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'imageRef';
    yield serializers.serialize(
      object.imageRef,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentUpgradeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentUpgradeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imageRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentUpgradeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentUpgradeRequestBuilder();
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



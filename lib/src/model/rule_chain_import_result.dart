// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_chain_import_result.g.dart';

/// RuleChainImportResult
///
/// Properties:
/// * [ruleChainId]
/// * [ruleChainName]
/// * [updated]
/// * [error]
@BuiltValue()
abstract class RuleChainImportResult
    implements Built<RuleChainImportResult, RuleChainImportResultBuilder> {
  @BuiltValueField(wireName: r'ruleChainId')
  RuleChainId? get ruleChainId;

  @BuiltValueField(wireName: r'ruleChainName')
  String? get ruleChainName;

  @BuiltValueField(wireName: r'updated')
  bool? get updated;

  @BuiltValueField(wireName: r'error')
  String? get error;

  RuleChainImportResult._();

  factory RuleChainImportResult([
    void updates(RuleChainImportResultBuilder b),
  ]) = _$RuleChainImportResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainImportResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChainImportResult> get serializer =>
      _$RuleChainImportResultSerializer();
}

class _$RuleChainImportResultSerializer
    implements PrimitiveSerializer<RuleChainImportResult> {
  @override
  final Iterable<Type> types = const [
    RuleChainImportResult,
    _$RuleChainImportResult,
  ];

  @override
  final String wireName = r'RuleChainImportResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChainImportResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ruleChainId != null) {
      yield r'ruleChainId';
      yield serializers.serialize(
        object.ruleChainId,
        specifiedType: const FullType(RuleChainId),
      );
    }
    if (object.ruleChainName != null) {
      yield r'ruleChainName';
      yield serializers.serialize(
        object.ruleChainName,
        specifiedType: const FullType(String),
      );
    }
    if (object.updated != null) {
      yield r'updated';
      yield serializers.serialize(
        object.updated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleChainImportResult object, {
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
    required RuleChainImportResultBuilder result,
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
                    specifiedType: const FullType.nullable(RuleChainId),
                  )
                  as RuleChainId?;
          if (valueDes == null) continue;
          result.ruleChainId.replace(valueDes);
          break;
        case r'ruleChainName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ruleChainName = valueDes;
          break;
        case r'updated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.updated = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleChainImportResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainImportResultBuilder();
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

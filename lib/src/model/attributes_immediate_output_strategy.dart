// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/attributes_output_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attributes_immediate_output_strategy.g.dart';

/// AttributesImmediateOutputStrategy
///
/// Properties:
/// * [type]
/// * [sendAttributesUpdatedNotification]
/// * [updateAttributesOnlyOnValueChange]
/// * [saveAttribute]
/// * [sendWsUpdate]
/// * [processCfs]
@BuiltValue()
abstract class AttributesImmediateOutputStrategy
    implements
        AttributesOutputStrategy,
        Built<
          AttributesImmediateOutputStrategy,
          AttributesImmediateOutputStrategyBuilder
        > {
  @BuiltValueField(wireName: r'sendWsUpdate')
  bool? get sendWsUpdate;

  @BuiltValueField(wireName: r'saveAttribute')
  bool? get saveAttribute;

  @BuiltValueField(wireName: r'processCfs')
  bool? get processCfs;

  @BuiltValueField(wireName: r'sendAttributesUpdatedNotification')
  bool? get sendAttributesUpdatedNotification;

  @BuiltValueField(wireName: r'updateAttributesOnlyOnValueChange')
  bool? get updateAttributesOnlyOnValueChange;

  AttributesImmediateOutputStrategy._();

  factory AttributesImmediateOutputStrategy([
    void updates(AttributesImmediateOutputStrategyBuilder b),
  ]) = _$AttributesImmediateOutputStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributesImmediateOutputStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributesImmediateOutputStrategy> get serializer =>
      _$AttributesImmediateOutputStrategySerializer();
}

class _$AttributesImmediateOutputStrategySerializer
    implements PrimitiveSerializer<AttributesImmediateOutputStrategy> {
  @override
  final Iterable<Type> types = const [
    AttributesImmediateOutputStrategy,
    _$AttributesImmediateOutputStrategy,
  ];

  @override
  final String wireName = r'AttributesImmediateOutputStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributesImmediateOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.processCfs != null) {
      yield r'processCfs';
      yield serializers.serialize(
        object.processCfs,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sendAttributesUpdatedNotification != null) {
      yield r'sendAttributesUpdatedNotification';
      yield serializers.serialize(
        object.sendAttributesUpdatedNotification,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sendWsUpdate != null) {
      yield r'sendWsUpdate';
      yield serializers.serialize(
        object.sendWsUpdate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.updateAttributesOnlyOnValueChange != null) {
      yield r'updateAttributesOnlyOnValueChange';
      yield serializers.serialize(
        object.updateAttributesOnlyOnValueChange,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.saveAttribute != null) {
      yield r'saveAttribute';
      yield serializers.serialize(
        object.saveAttribute,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributesImmediateOutputStrategy object, {
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
    required AttributesImmediateOutputStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'processCfs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.processCfs = valueDes;
          break;
        case r'sendAttributesUpdatedNotification':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sendAttributesUpdatedNotification = valueDes;
          break;
        case r'sendWsUpdate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sendWsUpdate = valueDes;
          break;
        case r'updateAttributesOnlyOnValueChange':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.updateAttributesOnlyOnValueChange = valueDes;
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
        case r'saveAttribute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveAttribute = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttributesImmediateOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributesImmediateOutputStrategyBuilder();
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

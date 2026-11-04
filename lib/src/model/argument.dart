// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/cf_argument_dynamic_source_configuration.dart';
import 'package:thingsboard_client/src/model/referenced_entity_key.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'argument.g.dart';

/// Argument
///
/// Properties:
/// * [refEntityId] 
/// * [refDynamicSourceConfiguration] 
/// * [refEntityKey] 
/// * [defaultValue] 
/// * [limit] 
/// * [timeWindow] 
@BuiltValue()
abstract class Argument implements Built<Argument, ArgumentBuilder> {
  @BuiltValueField(wireName: r'refEntityId')
  EntityId? get refEntityId;

  @BuiltValueField(wireName: r'refDynamicSourceConfiguration')
  CfArgumentDynamicSourceConfiguration? get refDynamicSourceConfiguration;

  @BuiltValueField(wireName: r'refEntityKey')
  ReferencedEntityKey? get refEntityKey;

  @BuiltValueField(wireName: r'defaultValue')
  String? get defaultValue;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'timeWindow')
  int? get timeWindow;

  Argument._();

  factory Argument([void updates(ArgumentBuilder b)]) = _$Argument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArgumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Argument> get serializer => _$ArgumentSerializer();
}

class _$ArgumentSerializer implements PrimitiveSerializer<Argument> {
  @override
  final Iterable<Type> types = const [Argument, _$Argument];

  @override
  final String wireName = r'Argument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Argument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refEntityId != null) {
      yield r'refEntityId';
      yield serializers.serialize(
        object.refEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.refDynamicSourceConfiguration != null) {
      yield r'refDynamicSourceConfiguration';
      yield serializers.serialize(
        object.refDynamicSourceConfiguration,
        specifiedType: const FullType(CfArgumentDynamicSourceConfiguration),
      );
    }
    if (object.refEntityKey != null) {
      yield r'refEntityKey';
      yield serializers.serialize(
        object.refEntityKey,
        specifiedType: const FullType(ReferencedEntityKey),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.timeWindow != null) {
      yield r'timeWindow';
      yield serializers.serialize(
        object.timeWindow,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Argument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ArgumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refEntityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.refEntityId = valueDes;
          break;
        case r'refDynamicSourceConfiguration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CfArgumentDynamicSourceConfiguration),
          ) as CfArgumentDynamicSourceConfiguration?;
          if (valueDes == null) continue;
          result.refDynamicSourceConfiguration = valueDes;
          break;
        case r'refEntityKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReferencedEntityKey),
          ) as ReferencedEntityKey?;
          if (valueDes == null) continue;
          result.refEntityKey.replace(valueDes);
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'timeWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timeWindow = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Argument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArgumentBuilder();
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



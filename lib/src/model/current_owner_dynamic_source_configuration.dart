// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/cf_argument_dynamic_source_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'current_owner_dynamic_source_configuration.g.dart';

/// CurrentOwnerDynamicSourceConfiguration
///
/// Properties:
/// * [type] 
@BuiltValue()
abstract class CurrentOwnerDynamicSourceConfiguration implements CfArgumentDynamicSourceConfiguration, Built<CurrentOwnerDynamicSourceConfiguration, CurrentOwnerDynamicSourceConfigurationBuilder> {
  CurrentOwnerDynamicSourceConfiguration._();

  factory CurrentOwnerDynamicSourceConfiguration([void updates(CurrentOwnerDynamicSourceConfigurationBuilder b)]) = _$CurrentOwnerDynamicSourceConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurrentOwnerDynamicSourceConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrentOwnerDynamicSourceConfiguration> get serializer => _$CurrentOwnerDynamicSourceConfigurationSerializer();
}

class _$CurrentOwnerDynamicSourceConfigurationSerializer implements PrimitiveSerializer<CurrentOwnerDynamicSourceConfiguration> {
  @override
  final Iterable<Type> types = const [CurrentOwnerDynamicSourceConfiguration, _$CurrentOwnerDynamicSourceConfiguration];

  @override
  final String wireName = r'CurrentOwnerDynamicSourceConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrentOwnerDynamicSourceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CurrentOwnerDynamicSourceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CurrentOwnerDynamicSourceConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  CurrentOwnerDynamicSourceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurrentOwnerDynamicSourceConfigurationBuilder();
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



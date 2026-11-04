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

part 'repository_settings_info.g.dart';

/// RepositorySettingsInfo
///
/// Properties:
/// * [configured] 
/// * [readOnly] 
@BuiltValue()
abstract class RepositorySettingsInfo implements Built<RepositorySettingsInfo, RepositorySettingsInfoBuilder> {
  @BuiltValueField(wireName: r'configured')
  bool? get configured;

  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  RepositorySettingsInfo._();

  factory RepositorySettingsInfo([void updates(RepositorySettingsInfoBuilder b)]) = _$RepositorySettingsInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RepositorySettingsInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RepositorySettingsInfo> get serializer => _$RepositorySettingsInfoSerializer();
}

class _$RepositorySettingsInfoSerializer implements PrimitiveSerializer<RepositorySettingsInfo> {
  @override
  final Iterable<Type> types = const [RepositorySettingsInfo, _$RepositorySettingsInfo];

  @override
  final String wireName = r'RepositorySettingsInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RepositorySettingsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configured != null) {
      yield r'configured';
      yield serializers.serialize(
        object.configured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RepositorySettingsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RepositorySettingsInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.configured = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.readOnly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RepositorySettingsInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RepositorySettingsInfoBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'converters_info.g.dart';

/// ConvertersInfo
///
/// Properties:
/// * [library_] 
/// * [existing] 
/// * [keys] 
@BuiltValue()
abstract class ConvertersInfo implements Built<ConvertersInfo, ConvertersInfoBuilder> {
  @BuiltValueField(wireName: r'library')
  bool? get library_;

  @BuiltValueField(wireName: r'existing')
  bool? get existing;

  @BuiltValueField(wireName: r'keys')
  BuiltSet<String>? get keys;

  ConvertersInfo._();

  factory ConvertersInfo([void updates(ConvertersInfoBuilder b)]) = _$ConvertersInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConvertersInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConvertersInfo> get serializer => _$ConvertersInfoSerializer();
}

class _$ConvertersInfoSerializer implements PrimitiveSerializer<ConvertersInfo> {
  @override
  final Iterable<Type> types = const [ConvertersInfo, _$ConvertersInfo];

  @override
  final String wireName = r'ConvertersInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConvertersInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.library_ != null) {
      yield r'library';
      yield serializers.serialize(
        object.library_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.existing != null) {
      yield r'existing';
      yield serializers.serialize(
        object.existing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConvertersInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConvertersInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'library':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.library_ = valueDes;
          break;
        case r'existing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.existing = valueDes;
          break;
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.keys.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConvertersInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConvertersInfoBuilder();
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



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

part 'simple_entity.g.dart';

/// SimpleEntity
///
/// Properties:
/// * [used]
/// * [totalCount]
@BuiltValue()
abstract class SimpleEntity
    implements Built<SimpleEntity, SimpleEntityBuilder> {
  @BuiltValueField(wireName: r'used')
  bool? get used;

  @BuiltValueField(wireName: r'totalCount')
  int? get totalCount;

  SimpleEntity._();

  factory SimpleEntity([void updates(SimpleEntityBuilder b)]) = _$SimpleEntity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SimpleEntityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SimpleEntity> get serializer => _$SimpleEntitySerializer();
}

class _$SimpleEntitySerializer implements PrimitiveSerializer<SimpleEntity> {
  @override
  final Iterable<Type> types = const [SimpleEntity, _$SimpleEntity];

  @override
  final String wireName = r'SimpleEntity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SimpleEntity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.used != null) {
      yield r'used';
      yield serializers.serialize(
        object.used,
        specifiedType: const FullType(bool),
      );
    }
    if (object.totalCount != null) {
      yield r'totalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SimpleEntity object, {
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
    required SimpleEntityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'used':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.used = valueDes;
          break;
        case r'totalCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SimpleEntity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleEntityBuilder();
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

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

part 'insets.g.dart';

/// Insets
///
/// Properties:
/// * [left]
/// * [right]
/// * [top]
/// * [bottom]
@BuiltValue()
abstract class Insets implements Built<Insets, InsetsBuilder> {
  @BuiltValueField(wireName: r'left')
  int? get left;

  @BuiltValueField(wireName: r'right')
  int? get right;

  @BuiltValueField(wireName: r'top')
  int? get top;

  @BuiltValueField(wireName: r'bottom')
  int? get bottom;

  Insets._();

  factory Insets([void updates(InsetsBuilder b)]) = _$Insets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InsetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Insets> get serializer => _$InsetsSerializer();
}

class _$InsetsSerializer implements PrimitiveSerializer<Insets> {
  @override
  final Iterable<Type> types = const [Insets, _$Insets];

  @override
  final String wireName = r'Insets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Insets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.left != null) {
      yield r'left';
      yield serializers.serialize(
        object.left,
        specifiedType: const FullType(int),
      );
    }
    if (object.right != null) {
      yield r'right';
      yield serializers.serialize(
        object.right,
        specifiedType: const FullType(int),
      );
    }
    if (object.top != null) {
      yield r'top';
      yield serializers.serialize(
        object.top,
        specifiedType: const FullType(int),
      );
    }
    if (object.bottom != null) {
      yield r'bottom';
      yield serializers.serialize(
        object.bottom,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Insets object, {
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
    required InsetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'left':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.left = valueDes;
          break;
        case r'right':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.right = valueDes;
          break;
        case r'top':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.top = valueDes;
          break;
        case r'bottom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bottom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Insets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InsetsBuilder();
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

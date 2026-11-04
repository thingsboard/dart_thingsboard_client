// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/font_style.dart';
import 'package:thingsboard_client/src/model/font_weight.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'font.g.dart';

/// Font
///
/// Properties:
/// * [size] 
/// * [weight] 
/// * [style] 
/// * [family] 
@BuiltValue()
abstract class Font implements Built<Font, FontBuilder> {
  @BuiltValueField(wireName: r'size')
  double? get size;

  @BuiltValueField(wireName: r'weight')
  FontWeight? get weight;
  // enum weightEnum {  normal,  bold,  500,  };

  @BuiltValueField(wireName: r'style')
  FontStyle? get style;
  // enum styleEnum {  normal,  italic,  };

  @BuiltValueField(wireName: r'family')
  String? get family;

  Font._();

  factory Font([void updates(FontBuilder b)]) = _$Font;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FontBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Font> get serializer => _$FontSerializer();
}

class _$FontSerializer implements PrimitiveSerializer<Font> {
  @override
  final Iterable<Type> types = const [Font, _$Font];

  @override
  final String wireName = r'Font';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Font object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(double),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(FontWeight),
      );
    }
    if (object.style != null) {
      yield r'style';
      yield serializers.serialize(
        object.style,
        specifiedType: const FullType(FontStyle),
      );
    }
    if (object.family != null) {
      yield r'family';
      yield serializers.serialize(
        object.family,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Font object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FontBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FontWeight),
          ) as FontWeight?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        case r'style':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FontStyle),
          ) as FontStyle?;
          if (valueDes == null) continue;
          result.style = valueDes;
          break;
        case r'family':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.family = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Font deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FontBuilder();
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



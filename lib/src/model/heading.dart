// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/vertical_alignment.dart';
import 'package:thingsboard_client/src/model/text_alignment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'heading.g.dart';

/// Heading
///
/// Properties:
/// * [text] 
/// * [font] 
/// * [color] 
/// * [textAlignment] 
/// * [verticalAlignment] 
/// * [height] 
@BuiltValue()
abstract class Heading implements Built<Heading, HeadingBuilder> {
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'font')
  Font? get font;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'textAlignment')
  TextAlignment? get textAlignment;
  // enum textAlignmentEnum {  center,  right,  left,  justify,  };

  @BuiltValueField(wireName: r'verticalAlignment')
  VerticalAlignment? get verticalAlignment;
  // enum verticalAlignmentEnum {  bottom,  top,  middle,  };

  @BuiltValueField(wireName: r'height')
  int? get height;

  Heading._();

  factory Heading([void updates(HeadingBuilder b)]) = _$Heading;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HeadingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Heading> get serializer => _$HeadingSerializer();
}

class _$HeadingSerializer implements PrimitiveSerializer<Heading> {
  @override
  final Iterable<Type> types = const [Heading, _$Heading];

  @override
  final String wireName = r'Heading';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Heading object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.font != null) {
      yield r'font';
      yield serializers.serialize(
        object.font,
        specifiedType: const FullType(Font),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.textAlignment != null) {
      yield r'textAlignment';
      yield serializers.serialize(
        object.textAlignment,
        specifiedType: const FullType(TextAlignment),
      );
    }
    if (object.verticalAlignment != null) {
      yield r'verticalAlignment';
      yield serializers.serialize(
        object.verticalAlignment,
        specifiedType: const FullType(VerticalAlignment),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Heading object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HeadingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'font':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.font.replace(valueDes);
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'textAlignment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TextAlignment),
          ) as TextAlignment?;
          if (valueDes == null) continue;
          result.textAlignment = valueDes;
          break;
        case r'verticalAlignment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VerticalAlignment),
          ) as VerticalAlignment?;
          if (valueDes == null) continue;
          result.verticalAlignment = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Heading deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HeadingBuilder();
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



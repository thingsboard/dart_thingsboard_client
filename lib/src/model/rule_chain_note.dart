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

part 'rule_chain_note.g.dart';

/// RuleChainNote
///
/// Properties:
/// * [id] - Unique identifier of the note on the canvas
/// * [x] - Horizontal position of the note on the canvas, in pixels
/// * [y] - Vertical position of the note on the canvas, in pixels
/// * [width] - Width of the note, in pixels
/// * [height] - Height of the note, in pixels
/// * [content] - Markdown or HTML content of the note
/// * [backgroundColor] - Background color of the note in CSS hex format, e.g. '#FFF9C4'
/// * [borderColor] - Border color of the note in CSS hex format, e.g. '#E6C800'
/// * [borderWidth] - Border width of the note in pixels
/// * [applyDefaultMarkdownStyle] - Whether to apply the default markdown stylesheet to the note content
/// * [markdownCss] - Custom CSS styles applied to the note content
@BuiltValue()
abstract class RuleChainNote implements Built<RuleChainNote, RuleChainNoteBuilder> {
  /// Unique identifier of the note on the canvas
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Horizontal position of the note on the canvas, in pixels
  @BuiltValueField(wireName: r'x')
  int? get x;

  /// Vertical position of the note on the canvas, in pixels
  @BuiltValueField(wireName: r'y')
  int? get y;

  /// Width of the note, in pixels
  @BuiltValueField(wireName: r'width')
  int? get width;

  /// Height of the note, in pixels
  @BuiltValueField(wireName: r'height')
  int? get height;

  /// Markdown or HTML content of the note
  @BuiltValueField(wireName: r'content')
  String? get content;

  /// Background color of the note in CSS hex format, e.g. '#FFF9C4'
  @BuiltValueField(wireName: r'backgroundColor')
  String? get backgroundColor;

  /// Border color of the note in CSS hex format, e.g. '#E6C800'
  @BuiltValueField(wireName: r'borderColor')
  String? get borderColor;

  /// Border width of the note in pixels
  @BuiltValueField(wireName: r'borderWidth')
  int? get borderWidth;

  /// Whether to apply the default markdown stylesheet to the note content
  @BuiltValueField(wireName: r'applyDefaultMarkdownStyle')
  bool? get applyDefaultMarkdownStyle;

  /// Custom CSS styles applied to the note content
  @BuiltValueField(wireName: r'markdownCss')
  String? get markdownCss;

  RuleChainNote._();

  factory RuleChainNote([void updates(RuleChainNoteBuilder b)]) = _$RuleChainNote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainNoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChainNote> get serializer => _$RuleChainNoteSerializer();
}

class _$RuleChainNoteSerializer implements PrimitiveSerializer<RuleChainNote> {
  @override
  final Iterable<Type> types = const [RuleChainNote, _$RuleChainNote];

  @override
  final String wireName = r'RuleChainNote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChainNote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.x != null) {
      yield r'x';
      yield serializers.serialize(
        object.x,
        specifiedType: const FullType(int),
      );
    }
    if (object.y != null) {
      yield r'y';
      yield serializers.serialize(
        object.y,
        specifiedType: const FullType(int),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(int),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(int),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
    if (object.backgroundColor != null) {
      yield r'backgroundColor';
      yield serializers.serialize(
        object.backgroundColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.borderColor != null) {
      yield r'borderColor';
      yield serializers.serialize(
        object.borderColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.borderWidth != null) {
      yield r'borderWidth';
      yield serializers.serialize(
        object.borderWidth,
        specifiedType: const FullType(int),
      );
    }
    if (object.applyDefaultMarkdownStyle != null) {
      yield r'applyDefaultMarkdownStyle';
      yield serializers.serialize(
        object.applyDefaultMarkdownStyle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.markdownCss != null) {
      yield r'markdownCss';
      yield serializers.serialize(
        object.markdownCss,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleChainNote object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuleChainNoteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.x = valueDes;
          break;
        case r'y':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.y = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.content = valueDes;
          break;
        case r'backgroundColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.backgroundColor = valueDes;
          break;
        case r'borderColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.borderColor = valueDes;
          break;
        case r'borderWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.borderWidth = valueDes;
          break;
        case r'applyDefaultMarkdownStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.applyDefaultMarkdownStyle = valueDes;
          break;
        case r'markdownCss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.markdownCss = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleChainNote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainNoteBuilder();
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



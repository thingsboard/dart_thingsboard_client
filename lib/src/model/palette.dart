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

part 'palette.g.dart';

/// Palette
///
/// Properties:
/// * [type] - Name of the pre-defined palette, or 'custom'
/// * [extends_] - Pre-defined palette name that the custom palette extends
/// * [colors] - Mapping of hue identifier number to the rgb(a) color code
@BuiltValue()
abstract class Palette implements Built<Palette, PaletteBuilder> {
  /// Name of the pre-defined palette, or 'custom'
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Pre-defined palette name that the custom palette extends
  @BuiltValueField(wireName: r'extends')
  String? get extends_;

  /// Mapping of hue identifier number to the rgb(a) color code
  @BuiltValueField(wireName: r'colors')
  BuiltMap<String, String>? get colors;

  Palette._();

  factory Palette([void updates(PaletteBuilder b)]) = _$Palette;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaletteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Palette> get serializer => _$PaletteSerializer();
}

class _$PaletteSerializer implements PrimitiveSerializer<Palette> {
  @override
  final Iterable<Type> types = const [Palette, _$Palette];

  @override
  final String wireName = r'Palette';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Palette object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.extends_ != null) {
      yield r'extends';
      yield serializers.serialize(
        object.extends_,
        specifiedType: const FullType(String),
      );
    }
    if (object.colors != null) {
      yield r'colors';
      yield serializers.serialize(
        object.colors,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Palette object, {
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
    required PaletteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'extends':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.extends_ = valueDes;
          break;
        case r'colors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.colors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Palette deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaletteBuilder();
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

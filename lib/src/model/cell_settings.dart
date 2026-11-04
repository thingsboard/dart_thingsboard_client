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

part 'cell_settings.g.dart';

/// CellSettings
///
/// Properties:
/// * [font]
/// * [color]
/// * [backgroundColor]
/// * [textAlignment]
/// * [verticalAlignment]
@BuiltValue()
abstract class CellSettings
    implements Built<CellSettings, CellSettingsBuilder> {
  @BuiltValueField(wireName: r'font')
  Font? get font;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'backgroundColor')
  String? get backgroundColor;

  @BuiltValueField(wireName: r'textAlignment')
  TextAlignment? get textAlignment;
  // enum textAlignmentEnum {  center,  right,  left,  justify,  };

  @BuiltValueField(wireName: r'verticalAlignment')
  VerticalAlignment? get verticalAlignment;
  // enum verticalAlignmentEnum {  bottom,  top,  middle,  };

  CellSettings._();

  factory CellSettings([void updates(CellSettingsBuilder b)]) = _$CellSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CellSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CellSettings> get serializer => _$CellSettingsSerializer();
}

class _$CellSettingsSerializer implements PrimitiveSerializer<CellSettings> {
  @override
  final Iterable<Type> types = const [CellSettings, _$CellSettings];

  @override
  final String wireName = r'CellSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CellSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.backgroundColor != null) {
      yield r'backgroundColor';
      yield serializers.serialize(
        object.backgroundColor,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CellSettings object, {
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
    required CellSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'font':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.font.replace(valueDes);
          break;
        case r'color':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'backgroundColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.backgroundColor = valueDes;
          break;
        case r'textAlignment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TextAlignment),
                  )
                  as TextAlignment?;
          if (valueDes == null) continue;
          result.textAlignment = valueDes;
          break;
        case r'verticalAlignment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(VerticalAlignment),
                  )
                  as VerticalAlignment?;
          if (valueDes == null) continue;
          result.verticalAlignment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CellSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CellSettingsBuilder();
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

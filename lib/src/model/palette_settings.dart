// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/palette.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'palette_settings.g.dart';

/// PaletteSettings
///
/// Properties:
/// * [primaryPalette] - Primary palette JSON
/// * [accentPalette] - Accent palette JSON
@BuiltValue()
abstract class PaletteSettings implements Built<PaletteSettings, PaletteSettingsBuilder> {
  /// Primary palette JSON
  @BuiltValueField(wireName: r'primaryPalette')
  Palette? get primaryPalette;

  /// Accent palette JSON
  @BuiltValueField(wireName: r'accentPalette')
  Palette? get accentPalette;

  PaletteSettings._();

  factory PaletteSettings([void updates(PaletteSettingsBuilder b)]) = _$PaletteSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaletteSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaletteSettings> get serializer => _$PaletteSettingsSerializer();
}

class _$PaletteSettingsSerializer implements PrimitiveSerializer<PaletteSettings> {
  @override
  final Iterable<Type> types = const [PaletteSettings, _$PaletteSettings];

  @override
  final String wireName = r'PaletteSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaletteSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.primaryPalette != null) {
      yield r'primaryPalette';
      yield serializers.serialize(
        object.primaryPalette,
        specifiedType: const FullType(Palette),
      );
    }
    if (object.accentPalette != null) {
      yield r'accentPalette';
      yield serializers.serialize(
        object.accentPalette,
        specifiedType: const FullType(Palette),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaletteSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaletteSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'primaryPalette':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Palette),
          ) as Palette?;
          if (valueDes == null) continue;
          result.primaryPalette.replace(valueDes);
          break;
        case r'accentPalette':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Palette),
          ) as Palette?;
          if (valueDes == null) continue;
          result.accentPalette.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaletteSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaletteSettingsBuilder();
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



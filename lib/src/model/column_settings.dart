// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/data_key_settings.dart';
import 'package:thingsboard_client/src/model/cell_settings.dart';
import 'package:thingsboard_client/src/model/data_key_settings_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'column_settings.g.dart';

/// ColumnSettings
///
/// Properties:
/// * [type] - Data key settings type
/// * [columnWidth]
/// * [header]
/// * [cell]
@BuiltValue()
abstract class ColumnSettings
    implements DataKeySettings, Built<ColumnSettings, ColumnSettingsBuilder> {
  @BuiltValueField(wireName: r'columnWidth')
  String? get columnWidth;

  @BuiltValueField(wireName: r'header')
  CellSettings? get header;

  @BuiltValueField(wireName: r'cell')
  CellSettings? get cell;

  ColumnSettings._();

  factory ColumnSettings([void updates(ColumnSettingsBuilder b)]) =
      _$ColumnSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ColumnSettingsBuilder b) =>
      b..type = DataKeySettingsType.COLUMN;

  @BuiltValueSerializer(custom: true)
  static Serializer<ColumnSettings> get serializer =>
      _$ColumnSettingsSerializer();
}

class _$ColumnSettingsSerializer
    implements PrimitiveSerializer<ColumnSettings> {
  @override
  final Iterable<Type> types = const [ColumnSettings, _$ColumnSettings];

  @override
  final String wireName = r'ColumnSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ColumnSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.columnWidth != null) {
      yield r'columnWidth';
      yield serializers.serialize(
        object.columnWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType(CellSettings),
      );
    }
    if (object.cell != null) {
      yield r'cell';
      yield serializers.serialize(
        object.cell,
        specifiedType: const FullType(CellSettings),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DataKeySettingsType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ColumnSettings object, {
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
    required ColumnSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'columnWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.columnWidth = valueDes;
          break;
        case r'header':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CellSettings),
                  )
                  as CellSettings?;
          if (valueDes == null) continue;
          result.header.replace(valueDes);
          break;
        case r'cell':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CellSettings),
                  )
                  as CellSettings?;
          if (valueDes == null) continue;
          result.cell.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DataKeySettingsType),
                  )
                  as DataKeySettingsType;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ColumnSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ColumnSettingsBuilder();
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

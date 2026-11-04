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

part 'data_key_comparison_settings.g.dart';

/// DataKeyComparisonSettings
///
/// Properties:
/// * [showValuesForComparison] 
/// * [comparisonValuesLabel] 
/// * [color] 
@BuiltValue()
abstract class DataKeyComparisonSettings implements Built<DataKeyComparisonSettings, DataKeyComparisonSettingsBuilder> {
  @BuiltValueField(wireName: r'showValuesForComparison')
  bool? get showValuesForComparison;

  @BuiltValueField(wireName: r'comparisonValuesLabel')
  String? get comparisonValuesLabel;

  @BuiltValueField(wireName: r'color')
  String? get color;

  DataKeyComparisonSettings._();

  factory DataKeyComparisonSettings([void updates(DataKeyComparisonSettingsBuilder b)]) = _$DataKeyComparisonSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DataKeyComparisonSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DataKeyComparisonSettings> get serializer => _$DataKeyComparisonSettingsSerializer();
}

class _$DataKeyComparisonSettingsSerializer implements PrimitiveSerializer<DataKeyComparisonSettings> {
  @override
  final Iterable<Type> types = const [DataKeyComparisonSettings, _$DataKeyComparisonSettings];

  @override
  final String wireName = r'DataKeyComparisonSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DataKeyComparisonSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showValuesForComparison != null) {
      yield r'showValuesForComparison';
      yield serializers.serialize(
        object.showValuesForComparison,
        specifiedType: const FullType(bool),
      );
    }
    if (object.comparisonValuesLabel != null) {
      yield r'comparisonValuesLabel';
      yield serializers.serialize(
        object.comparisonValuesLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DataKeyComparisonSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DataKeyComparisonSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showValuesForComparison':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showValuesForComparison = valueDes;
          break;
        case r'comparisonValuesLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comparisonValuesLabel = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DataKeyComparisonSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DataKeyComparisonSettingsBuilder();
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



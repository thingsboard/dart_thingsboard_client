// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/legend_position.dart';
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/text_alignment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_latest_chart_settings.g.dart';

/// ReportLatestChartSettings
///
/// Properties:
/// * [showTitle] 
/// * [title] 
/// * [titleFont] 
/// * [titleColor] 
/// * [titleAlignment] 
/// * [units] 
/// * [decimals] 
/// * [autoScale] 
/// * [sortSeries] 
/// * [showTotal] 
/// * [showLegend] 
/// * [legendPosition] 
/// * [legendLabelFont] 
/// * [legendLabelColor] 
/// * [legendValueFont] 
/// * [legendValueColor] 
/// * [legendShowTotal] 
@BuiltValue(instantiable: false)
abstract class ReportLatestChartSettings  {
  @BuiltValueField(wireName: r'showTitle')
  bool? get showTitle;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'titleFont')
  Font? get titleFont;

  @BuiltValueField(wireName: r'titleColor')
  String? get titleColor;

  @BuiltValueField(wireName: r'titleAlignment')
  TextAlignment? get titleAlignment;
  // enum titleAlignmentEnum {  center,  right,  left,  justify,  };

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'decimals')
  int? get decimals;

  @BuiltValueField(wireName: r'autoScale')
  bool? get autoScale;

  @BuiltValueField(wireName: r'sortSeries')
  bool? get sortSeries;

  @BuiltValueField(wireName: r'showTotal')
  bool? get showTotal;

  @BuiltValueField(wireName: r'showLegend')
  bool? get showLegend;

  @BuiltValueField(wireName: r'legendPosition')
  LegendPosition? get legendPosition;
  // enum legendPositionEnum {  top,  bottom,  left,  right,  };

  @BuiltValueField(wireName: r'legendLabelFont')
  Font? get legendLabelFont;

  @BuiltValueField(wireName: r'legendLabelColor')
  String? get legendLabelColor;

  @BuiltValueField(wireName: r'legendValueFont')
  Font? get legendValueFont;

  @BuiltValueField(wireName: r'legendValueColor')
  String? get legendValueColor;

  @BuiltValueField(wireName: r'legendShowTotal')
  bool? get legendShowTotal;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportLatestChartSettings> get serializer => _$ReportLatestChartSettingsSerializer();
}

class _$ReportLatestChartSettingsSerializer implements PrimitiveSerializer<ReportLatestChartSettings> {
  @override
  final Iterable<Type> types = const [ReportLatestChartSettings];

  @override
  final String wireName = r'ReportLatestChartSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportLatestChartSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showTitle != null) {
      yield r'showTitle';
      yield serializers.serialize(
        object.showTitle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.titleFont != null) {
      yield r'titleFont';
      yield serializers.serialize(
        object.titleFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.titleColor != null) {
      yield r'titleColor';
      yield serializers.serialize(
        object.titleColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.titleAlignment != null) {
      yield r'titleAlignment';
      yield serializers.serialize(
        object.titleAlignment,
        specifiedType: const FullType(TextAlignment),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(String),
      );
    }
    if (object.decimals != null) {
      yield r'decimals';
      yield serializers.serialize(
        object.decimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.autoScale != null) {
      yield r'autoScale';
      yield serializers.serialize(
        object.autoScale,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sortSeries != null) {
      yield r'sortSeries';
      yield serializers.serialize(
        object.sortSeries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showTotal != null) {
      yield r'showTotal';
      yield serializers.serialize(
        object.showTotal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showLegend != null) {
      yield r'showLegend';
      yield serializers.serialize(
        object.showLegend,
        specifiedType: const FullType(bool),
      );
    }
    if (object.legendPosition != null) {
      yield r'legendPosition';
      yield serializers.serialize(
        object.legendPosition,
        specifiedType: const FullType(LegendPosition),
      );
    }
    if (object.legendLabelFont != null) {
      yield r'legendLabelFont';
      yield serializers.serialize(
        object.legendLabelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.legendLabelColor != null) {
      yield r'legendLabelColor';
      yield serializers.serialize(
        object.legendLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.legendValueFont != null) {
      yield r'legendValueFont';
      yield serializers.serialize(
        object.legendValueFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.legendValueColor != null) {
      yield r'legendValueColor';
      yield serializers.serialize(
        object.legendValueColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.legendShowTotal != null) {
      yield r'legendShowTotal';
      yield serializers.serialize(
        object.legendShowTotal,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportLatestChartSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ReportLatestChartSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ReportLatestChartSettings)) as $ReportLatestChartSettings;
  }
}


/// a concrete implementation of [ReportLatestChartSettings], since [ReportLatestChartSettings] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ReportLatestChartSettings implements ReportLatestChartSettings, Built<$ReportLatestChartSettings, $ReportLatestChartSettingsBuilder> {
  $ReportLatestChartSettings._();

  factory $ReportLatestChartSettings([void Function($ReportLatestChartSettingsBuilder)? updates]) = _$$ReportLatestChartSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ReportLatestChartSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ReportLatestChartSettings> get serializer => _$$ReportLatestChartSettingsSerializer();
}

class _$$ReportLatestChartSettingsSerializer implements PrimitiveSerializer<$ReportLatestChartSettings> {
  @override
  final Iterable<Type> types = const [$ReportLatestChartSettings, _$$ReportLatestChartSettings];

  @override
  final String wireName = r'$ReportLatestChartSettings';

  @override
  Object serialize(
    Serializers serializers,
    $ReportLatestChartSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ReportLatestChartSettings))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportLatestChartSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showTitle = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'titleFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.titleFont.replace(valueDes);
          break;
        case r'titleColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.titleColor = valueDes;
          break;
        case r'titleAlignment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TextAlignment),
          ) as TextAlignment?;
          if (valueDes == null) continue;
          result.titleAlignment = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'decimals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.decimals = valueDes;
          break;
        case r'autoScale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.autoScale = valueDes;
          break;
        case r'sortSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sortSeries = valueDes;
          break;
        case r'showTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showTotal = valueDes;
          break;
        case r'showLegend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showLegend = valueDes;
          break;
        case r'legendPosition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LegendPosition),
          ) as LegendPosition?;
          if (valueDes == null) continue;
          result.legendPosition = valueDes;
          break;
        case r'legendLabelFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.legendLabelFont.replace(valueDes);
          break;
        case r'legendLabelColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.legendLabelColor = valueDes;
          break;
        case r'legendValueFont':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Font),
          ) as Font?;
          if (valueDes == null) continue;
          result.legendValueFont.replace(valueDes);
          break;
        case r'legendValueColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.legendValueColor = valueDes;
          break;
        case r'legendShowTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.legendShowTotal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ReportLatestChartSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ReportLatestChartSettingsBuilder();
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


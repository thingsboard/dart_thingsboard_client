// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/axis_position.dart';
import 'package:thingsboard_client/src/model/font.dart';
import 'package:thingsboard_client/src/model/simple_value_source_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_chart_y_axis_settings.g.dart';

/// TimeSeriesChartYAxisSettings
///
/// Properties:
/// * [show_]
/// * [label]
/// * [labelFont]
/// * [labelColor]
/// * [position]
/// * [showTickLabels]
/// * [tickLabelFont]
/// * [tickLabelColor]
/// * [showTicks]
/// * [ticksColor]
/// * [showLine]
/// * [lineColor]
/// * [showSplitLines]
/// * [splitLinesColor]
/// * [id]
/// * [order]
/// * [units]
/// * [decimals]
/// * [interval]
/// * [splitNumber]
/// * [min]
/// * [max]
@BuiltValue()
abstract class TimeSeriesChartYAxisSettings
    implements
        Built<
          TimeSeriesChartYAxisSettings,
          TimeSeriesChartYAxisSettingsBuilder
        > {
  @BuiltValueField(wireName: r'show')
  bool? get show_;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'labelFont')
  Font? get labelFont;

  @BuiltValueField(wireName: r'labelColor')
  String? get labelColor;

  @BuiltValueField(wireName: r'position')
  AxisPosition? get position;
  // enum positionEnum {  left,  right,  top,  bottom,  };

  @BuiltValueField(wireName: r'showTickLabels')
  bool? get showTickLabels;

  @BuiltValueField(wireName: r'tickLabelFont')
  Font? get tickLabelFont;

  @BuiltValueField(wireName: r'tickLabelColor')
  String? get tickLabelColor;

  @BuiltValueField(wireName: r'showTicks')
  bool? get showTicks;

  @BuiltValueField(wireName: r'ticksColor')
  String? get ticksColor;

  @BuiltValueField(wireName: r'showLine')
  bool? get showLine;

  @BuiltValueField(wireName: r'lineColor')
  String? get lineColor;

  @BuiltValueField(wireName: r'showSplitLines')
  bool? get showSplitLines;

  @BuiltValueField(wireName: r'splitLinesColor')
  String? get splitLinesColor;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'decimals')
  int? get decimals;

  @BuiltValueField(wireName: r'interval')
  double? get interval;

  @BuiltValueField(wireName: r'splitNumber')
  int? get splitNumber;

  @BuiltValueField(wireName: r'min')
  SimpleValueSourceConfig? get min;

  @BuiltValueField(wireName: r'max')
  SimpleValueSourceConfig? get max;

  TimeSeriesChartYAxisSettings._();

  factory TimeSeriesChartYAxisSettings([
    void updates(TimeSeriesChartYAxisSettingsBuilder b),
  ]) = _$TimeSeriesChartYAxisSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartYAxisSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartYAxisSettings> get serializer =>
      _$TimeSeriesChartYAxisSettingsSerializer();
}

class _$TimeSeriesChartYAxisSettingsSerializer
    implements PrimitiveSerializer<TimeSeriesChartYAxisSettings> {
  @override
  final Iterable<Type> types = const [
    TimeSeriesChartYAxisSettings,
    _$TimeSeriesChartYAxisSettings,
  ];

  @override
  final String wireName = r'TimeSeriesChartYAxisSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartYAxisSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.show_ != null) {
      yield r'show';
      yield serializers.serialize(
        object.show_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.labelFont != null) {
      yield r'labelFont';
      yield serializers.serialize(
        object.labelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.labelColor != null) {
      yield r'labelColor';
      yield serializers.serialize(
        object.labelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(AxisPosition),
      );
    }
    if (object.showTickLabels != null) {
      yield r'showTickLabels';
      yield serializers.serialize(
        object.showTickLabels,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tickLabelFont != null) {
      yield r'tickLabelFont';
      yield serializers.serialize(
        object.tickLabelFont,
        specifiedType: const FullType(Font),
      );
    }
    if (object.tickLabelColor != null) {
      yield r'tickLabelColor';
      yield serializers.serialize(
        object.tickLabelColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.showTicks != null) {
      yield r'showTicks';
      yield serializers.serialize(
        object.showTicks,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ticksColor != null) {
      yield r'ticksColor';
      yield serializers.serialize(
        object.ticksColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.showLine != null) {
      yield r'showLine';
      yield serializers.serialize(
        object.showLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lineColor != null) {
      yield r'lineColor';
      yield serializers.serialize(
        object.lineColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.showSplitLines != null) {
      yield r'showSplitLines';
      yield serializers.serialize(
        object.showSplitLines,
        specifiedType: const FullType(bool),
      );
    }
    if (object.splitLinesColor != null) {
      yield r'splitLinesColor';
      yield serializers.serialize(
        object.splitLinesColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(int),
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
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(double),
      );
    }
    if (object.splitNumber != null) {
      yield r'splitNumber';
      yield serializers.serialize(
        object.splitNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType(SimpleValueSourceConfig),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(SimpleValueSourceConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartYAxisSettings object, {
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
    required TimeSeriesChartYAxisSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'show':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.show_ = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'labelFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.labelFont.replace(valueDes);
          break;
        case r'labelColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.labelColor = valueDes;
          break;
        case r'position':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AxisPosition),
                  )
                  as AxisPosition?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'showTickLabels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTickLabels = valueDes;
          break;
        case r'tickLabelFont':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Font),
                  )
                  as Font?;
          if (valueDes == null) continue;
          result.tickLabelFont.replace(valueDes);
          break;
        case r'tickLabelColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tickLabelColor = valueDes;
          break;
        case r'showTicks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTicks = valueDes;
          break;
        case r'ticksColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ticksColor = valueDes;
          break;
        case r'showLine':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showLine = valueDes;
          break;
        case r'lineColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lineColor = valueDes;
          break;
        case r'showSplitLines':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showSplitLines = valueDes;
          break;
        case r'splitLinesColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.splitLinesColor = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'order':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.order = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'decimals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.decimals = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        case r'splitNumber':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.splitNumber = valueDes;
          break;
        case r'min':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SimpleValueSourceConfig,
                    ),
                  )
                  as SimpleValueSourceConfig?;
          if (valueDes == null) continue;
          result.min.replace(valueDes);
          break;
        case r'max':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SimpleValueSourceConfig,
                    ),
                  )
                  as SimpleValueSourceConfig?;
          if (valueDes == null) continue;
          result.max.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartYAxisSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartYAxisSettingsBuilder();
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

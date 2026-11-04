// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/data_key_comparison_settings.dart';
import 'package:thingsboard_client/src/model/data_key_settings.dart';
import 'package:thingsboard_client/src/model/line_series_settings.dart';
import 'package:thingsboard_client/src/model/bar_series_settings.dart';
import 'package:thingsboard_client/src/model/time_series_chart_series_type.dart';
import 'package:thingsboard_client/src/model/data_key_settings_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_chart_key_settings.g.dart';

/// TimeSeriesChartKeySettings
///
/// Properties:
/// * [type] - Data key settings type
/// * [yAxisId]
/// * [showInLegend]
/// * [seriesType]
/// * [lineSettings]
/// * [barSettings]
/// * [comparisonSettings]
/// * [yaxisId]
@BuiltValue()
abstract class TimeSeriesChartKeySettings
    implements
        DataKeySettings,
        Built<TimeSeriesChartKeySettings, TimeSeriesChartKeySettingsBuilder> {
  @BuiltValueField(wireName: r'barSettings')
  BarSeriesSettings? get barSettings;

  @BuiltValueField(wireName: r'yaxisId')
  String? get yaxisId;

  @BuiltValueField(wireName: r'seriesType')
  TimeSeriesChartSeriesType? get seriesType;
  // enum seriesTypeEnum {  line,  bar,  };

  @BuiltValueField(wireName: r'yAxisId')
  String? get yAxisId;

  @BuiltValueField(wireName: r'lineSettings')
  LineSeriesSettings? get lineSettings;

  @BuiltValueField(wireName: r'showInLegend')
  bool? get showInLegend;

  @BuiltValueField(wireName: r'comparisonSettings')
  DataKeyComparisonSettings? get comparisonSettings;

  TimeSeriesChartKeySettings._();

  factory TimeSeriesChartKeySettings([
    void updates(TimeSeriesChartKeySettingsBuilder b),
  ]) = _$TimeSeriesChartKeySettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesChartKeySettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesChartKeySettings> get serializer =>
      _$TimeSeriesChartKeySettingsSerializer();
}

class _$TimeSeriesChartKeySettingsSerializer
    implements PrimitiveSerializer<TimeSeriesChartKeySettings> {
  @override
  final Iterable<Type> types = const [
    TimeSeriesChartKeySettings,
    _$TimeSeriesChartKeySettings,
  ];

  @override
  final String wireName = r'TimeSeriesChartKeySettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesChartKeySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.barSettings != null) {
      yield r'barSettings';
      yield serializers.serialize(
        object.barSettings,
        specifiedType: const FullType(BarSeriesSettings),
      );
    }
    if (object.yaxisId != null) {
      yield r'yaxisId';
      yield serializers.serialize(
        object.yaxisId,
        specifiedType: const FullType(String),
      );
    }
    if (object.seriesType != null) {
      yield r'seriesType';
      yield serializers.serialize(
        object.seriesType,
        specifiedType: const FullType(TimeSeriesChartSeriesType),
      );
    }
    if (object.yAxisId != null) {
      yield r'yAxisId';
      yield serializers.serialize(
        object.yAxisId,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DataKeySettingsType),
    );
    if (object.lineSettings != null) {
      yield r'lineSettings';
      yield serializers.serialize(
        object.lineSettings,
        specifiedType: const FullType(LineSeriesSettings),
      );
    }
    if (object.showInLegend != null) {
      yield r'showInLegend';
      yield serializers.serialize(
        object.showInLegend,
        specifiedType: const FullType(bool),
      );
    }
    if (object.comparisonSettings != null) {
      yield r'comparisonSettings';
      yield serializers.serialize(
        object.comparisonSettings,
        specifiedType: const FullType(DataKeyComparisonSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartKeySettings object, {
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
    required TimeSeriesChartKeySettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'barSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BarSeriesSettings),
                  )
                  as BarSeriesSettings?;
          if (valueDes == null) continue;
          result.barSettings.replace(valueDes);
          break;
        case r'yaxisId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.yaxisId = valueDes;
          break;
        case r'seriesType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeSeriesChartSeriesType,
                    ),
                  )
                  as TimeSeriesChartSeriesType?;
          if (valueDes == null) continue;
          result.seriesType = valueDes;
          break;
        case r'yAxisId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.yAxisId = valueDes;
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
        case r'lineSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LineSeriesSettings),
                  )
                  as LineSeriesSettings?;
          if (valueDes == null) continue;
          result.lineSettings.replace(valueDes);
          break;
        case r'showInLegend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showInLegend = valueDes;
          break;
        case r'comparisonSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DataKeyComparisonSettings,
                    ),
                  )
                  as DataKeyComparisonSettings?;
          if (valueDes == null) continue;
          result.comparisonSettings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesChartKeySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesChartKeySettingsBuilder();
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

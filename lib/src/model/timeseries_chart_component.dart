// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/report_component_sub_type.dart';
import 'package:thingsboard_client/src/model/report_component_type.dart';
import 'package:thingsboard_client/src/model/report_time_series_chart_settings.dart';
import 'package:thingsboard_client/src/model/image_alignment.dart';
import 'package:thingsboard_client/src/model/time_window_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/data_source.dart';
import 'package:thingsboard_client/src/model/insets.dart';
import 'package:thingsboard_client/src/model/image_width_type.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeseries_chart_component.g.dart';

/// TimeseriesChartComponent
///
/// Properties:
/// * [subType]
/// * [type]
/// * [dataSources]
/// * [margins]
/// * [paddings]
/// * [background]
/// * [borderWidth]
/// * [borderRadius]
/// * [borderColor]
/// * [widthType]
/// * [customWidth]
/// * [alignment]
/// * [height]
/// * [timewindow]
/// * [timeSeriesChartSettings]
@BuiltValue()
abstract class TimeseriesChartComponent
    implements
        ReportComponent,
        Built<TimeseriesChartComponent, TimeseriesChartComponentBuilder> {
  @BuiltValueField(wireName: r'margins')
  Insets? get margins;

  @BuiltValueField(wireName: r'borderColor')
  String? get borderColor;

  @BuiltValueField(wireName: r'customWidth')
  int? get customWidth;

  @BuiltValueField(wireName: r'timewindow')
  TimeWindowConfiguration? get timewindow;

  @BuiltValueField(wireName: r'timeSeriesChartSettings')
  ReportTimeSeriesChartSettings? get timeSeriesChartSettings;

  @BuiltValueField(wireName: r'widthType')
  ImageWidthType? get widthType;
  // enum widthTypeEnum {  fitWidth,  original,  custom,  };

  @BuiltValueField(wireName: r'borderRadius')
  int? get borderRadius;

  @BuiltValueField(wireName: r'paddings')
  Insets? get paddings;

  @BuiltValueField(wireName: r'background')
  String? get background;

  @BuiltValueField(wireName: r'borderWidth')
  int? get borderWidth;

  @BuiltValueField(wireName: r'alignment')
  ImageAlignment? get alignment;
  // enum alignmentEnum {  left,  center,  right,  };

  @BuiltValueField(wireName: r'dataSources')
  BuiltList<DataSource>? get dataSources;

  @BuiltValueField(wireName: r'height')
  int? get height;

  TimeseriesChartComponent._();

  factory TimeseriesChartComponent([
    void updates(TimeseriesChartComponentBuilder b),
  ]) = _$TimeseriesChartComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeseriesChartComponentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeseriesChartComponent> get serializer =>
      _$TimeseriesChartComponentSerializer();
}

class _$TimeseriesChartComponentSerializer
    implements PrimitiveSerializer<TimeseriesChartComponent> {
  @override
  final Iterable<Type> types = const [
    TimeseriesChartComponent,
    _$TimeseriesChartComponent,
  ];

  @override
  final String wireName = r'TimeseriesChartComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeseriesChartComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.margins != null) {
      yield r'margins';
      yield serializers.serialize(
        object.margins,
        specifiedType: const FullType(Insets),
      );
    }
    if (object.borderColor != null) {
      yield r'borderColor';
      yield serializers.serialize(
        object.borderColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.customWidth != null) {
      yield r'customWidth';
      yield serializers.serialize(
        object.customWidth,
        specifiedType: const FullType(int),
      );
    }
    if (object.timewindow != null) {
      yield r'timewindow';
      yield serializers.serialize(
        object.timewindow,
        specifiedType: const FullType(TimeWindowConfiguration),
      );
    }
    if (object.timeSeriesChartSettings != null) {
      yield r'timeSeriesChartSettings';
      yield serializers.serialize(
        object.timeSeriesChartSettings,
        specifiedType: const FullType(ReportTimeSeriesChartSettings),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportComponentType),
    );
    if (object.widthType != null) {
      yield r'widthType';
      yield serializers.serialize(
        object.widthType,
        specifiedType: const FullType(ImageWidthType),
      );
    }
    if (object.borderRadius != null) {
      yield r'borderRadius';
      yield serializers.serialize(
        object.borderRadius,
        specifiedType: const FullType(int),
      );
    }
    if (object.paddings != null) {
      yield r'paddings';
      yield serializers.serialize(
        object.paddings,
        specifiedType: const FullType(Insets),
      );
    }
    if (object.background != null) {
      yield r'background';
      yield serializers.serialize(
        object.background,
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
    yield r'subType';
    yield serializers.serialize(
      object.subType,
      specifiedType: const FullType(ReportComponentSubType),
    );
    if (object.alignment != null) {
      yield r'alignment';
      yield serializers.serialize(
        object.alignment,
        specifiedType: const FullType(ImageAlignment),
      );
    }
    if (object.dataSources != null) {
      yield r'dataSources';
      yield serializers.serialize(
        object.dataSources,
        specifiedType: const FullType(BuiltList, [FullType(DataSource)]),
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
    TimeseriesChartComponent object, {
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
    required TimeseriesChartComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'margins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Insets),
                  )
                  as Insets?;
          if (valueDes == null) continue;
          result.margins.replace(valueDes);
          break;
        case r'borderColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.borderColor = valueDes;
          break;
        case r'customWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.customWidth = valueDes;
          break;
        case r'timewindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeWindowConfiguration,
                    ),
                  )
                  as TimeWindowConfiguration?;
          if (valueDes == null) continue;
          result.timewindow.replace(valueDes);
          break;
        case r'timeSeriesChartSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReportTimeSeriesChartSettings,
                    ),
                  )
                  as ReportTimeSeriesChartSettings?;
          if (valueDes == null) continue;
          result.timeSeriesChartSettings = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportComponentType),
                  )
                  as ReportComponentType;
          result.type = valueDes;
          break;
        case r'widthType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ImageWidthType),
                  )
                  as ImageWidthType?;
          if (valueDes == null) continue;
          result.widthType = valueDes;
          break;
        case r'borderRadius':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.borderRadius = valueDes;
          break;
        case r'paddings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Insets),
                  )
                  as Insets?;
          if (valueDes == null) continue;
          result.paddings.replace(valueDes);
          break;
        case r'background':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.background = valueDes;
          break;
        case r'borderWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.borderWidth = valueDes;
          break;
        case r'subType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportComponentSubType),
                  )
                  as ReportComponentSubType;
          result.subType = valueDes;
          break;
        case r'alignment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ImageAlignment),
                  )
                  as ImageAlignment?;
          if (valueDes == null) continue;
          result.alignment = valueDes;
          break;
        case r'dataSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DataSource),
                    ]),
                  )
                  as BuiltList<DataSource>?;
          if (valueDes == null) continue;
          result.dataSources.replace(valueDes);
          break;
        case r'height':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
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
  TimeseriesChartComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeseriesChartComponentBuilder();
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

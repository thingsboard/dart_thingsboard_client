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
import 'package:thingsboard_client/src/model/table_sort_order.dart';
import 'package:thingsboard_client/src/model/column_settings.dart';
import 'package:thingsboard_client/src/model/time_window_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/data_source.dart';
import 'package:thingsboard_client/src/model/insets.dart';
import 'package:thingsboard_client/src/model/heading.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeseries_table_component.g.dart';

/// TimeseriesTableComponent
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
/// * [showTableHeading]
/// * [tableHeading]
/// * [tableSortOrder]
/// * [timewindow]
/// * [showTimestamp]
/// * [timestampLabel]
/// * [timestampPattern]
/// * [timestampColumnSettings]
@BuiltValue()
abstract class TimeseriesTableComponent
    implements
        ReportComponent,
        Built<TimeseriesTableComponent, TimeseriesTableComponentBuilder> {
  @BuiltValueField(wireName: r'margins')
  Insets? get margins;

  @BuiltValueField(wireName: r'borderColor')
  String? get borderColor;

  @BuiltValueField(wireName: r'timewindow')
  TimeWindowConfiguration? get timewindow;

  @BuiltValueField(wireName: r'timestampPattern')
  String? get timestampPattern;

  @BuiltValueField(wireName: r'timestampColumnSettings')
  ColumnSettings? get timestampColumnSettings;

  @BuiltValueField(wireName: r'tableHeading')
  Heading? get tableHeading;

  @BuiltValueField(wireName: r'showTableHeading')
  bool? get showTableHeading;

  @BuiltValueField(wireName: r'timestampLabel')
  String? get timestampLabel;

  @BuiltValueField(wireName: r'borderRadius')
  int? get borderRadius;

  @BuiltValueField(wireName: r'paddings')
  Insets? get paddings;

  @BuiltValueField(wireName: r'background')
  String? get background;

  @BuiltValueField(wireName: r'borderWidth')
  int? get borderWidth;

  @BuiltValueField(wireName: r'tableSortOrder')
  TableSortOrder? get tableSortOrder;

  @BuiltValueField(wireName: r'showTimestamp')
  bool? get showTimestamp;

  @BuiltValueField(wireName: r'dataSources')
  BuiltList<DataSource>? get dataSources;

  TimeseriesTableComponent._();

  factory TimeseriesTableComponent([
    void updates(TimeseriesTableComponentBuilder b),
  ]) = _$TimeseriesTableComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeseriesTableComponentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeseriesTableComponent> get serializer =>
      _$TimeseriesTableComponentSerializer();
}

class _$TimeseriesTableComponentSerializer
    implements PrimitiveSerializer<TimeseriesTableComponent> {
  @override
  final Iterable<Type> types = const [
    TimeseriesTableComponent,
    _$TimeseriesTableComponent,
  ];

  @override
  final String wireName = r'TimeseriesTableComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeseriesTableComponent object, {
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
    if (object.timewindow != null) {
      yield r'timewindow';
      yield serializers.serialize(
        object.timewindow,
        specifiedType: const FullType(TimeWindowConfiguration),
      );
    }
    if (object.timestampPattern != null) {
      yield r'timestampPattern';
      yield serializers.serialize(
        object.timestampPattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestampColumnSettings != null) {
      yield r'timestampColumnSettings';
      yield serializers.serialize(
        object.timestampColumnSettings,
        specifiedType: const FullType(ColumnSettings),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportComponentType),
    );
    if (object.tableHeading != null) {
      yield r'tableHeading';
      yield serializers.serialize(
        object.tableHeading,
        specifiedType: const FullType(Heading),
      );
    }
    if (object.showTableHeading != null) {
      yield r'showTableHeading';
      yield serializers.serialize(
        object.showTableHeading,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timestampLabel != null) {
      yield r'timestampLabel';
      yield serializers.serialize(
        object.timestampLabel,
        specifiedType: const FullType(String),
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
    if (object.tableSortOrder != null) {
      yield r'tableSortOrder';
      yield serializers.serialize(
        object.tableSortOrder,
        specifiedType: const FullType(TableSortOrder),
      );
    }
    if (object.showTimestamp != null) {
      yield r'showTimestamp';
      yield serializers.serialize(
        object.showTimestamp,
        specifiedType: const FullType(bool),
      );
    }
    yield r'subType';
    yield serializers.serialize(
      object.subType,
      specifiedType: const FullType(ReportComponentSubType),
    );
    if (object.dataSources != null) {
      yield r'dataSources';
      yield serializers.serialize(
        object.dataSources,
        specifiedType: const FullType(BuiltList, [FullType(DataSource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeseriesTableComponent object, {
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
    required TimeseriesTableComponentBuilder result,
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
        case r'timestampPattern':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timestampPattern = valueDes;
          break;
        case r'timestampColumnSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ColumnSettings),
                  )
                  as ColumnSettings?;
          if (valueDes == null) continue;
          result.timestampColumnSettings.replace(valueDes);
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
        case r'tableHeading':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Heading),
                  )
                  as Heading?;
          if (valueDes == null) continue;
          result.tableHeading.replace(valueDes);
          break;
        case r'showTableHeading':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTableHeading = valueDes;
          break;
        case r'timestampLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timestampLabel = valueDes;
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
        case r'tableSortOrder':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TableSortOrder),
                  )
                  as TableSortOrder?;
          if (valueDes == null) continue;
          result.tableSortOrder.replace(valueDes);
          break;
        case r'showTimestamp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showTimestamp = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeseriesTableComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeseriesTableComponentBuilder();
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

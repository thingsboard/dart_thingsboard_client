// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/heading_component.dart';
import 'package:thingsboard_client/src/model/image_component.dart';
import 'package:thingsboard_client/src/model/error_component.dart';
import 'package:thingsboard_client/src/model/latest_chart_component.dart';
import 'package:thingsboard_client/src/model/alarm_table_component.dart';
import 'package:thingsboard_client/src/model/entity_table_component.dart';
import 'package:thingsboard_client/src/model/report_component_sub_type.dart';
import 'package:thingsboard_client/src/model/report_component_type.dart';
import 'package:thingsboard_client/src/model/page_break_component.dart';
import 'package:thingsboard_client/src/model/sub_report_component.dart';
import 'package:thingsboard_client/src/model/divider_component.dart';
import 'package:thingsboard_client/src/model/rich_text_component.dart';
import 'package:thingsboard_client/src/model/timeseries_chart_component.dart';
import 'package:thingsboard_client/src/model/timeseries_table_component.dart';
import 'package:thingsboard_client/src/model/split_view_component.dart';
import 'package:thingsboard_client/src/model/dashboard_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_component.g.dart';

/// ReportComponent
///
/// Properties:
/// * [subType] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class ReportComponent  {
  @BuiltValueField(wireName: r'subType')
  ReportComponentSubType get subType;
  // enum subTypeEnum {  doughnutChart,  horizontalDoughnutChart,  pointChart,  barChart,  pieChart,  lineChart,  latestBarChart,  rangeChart,  barChartWithLabels,  stateChart,  default,  };

  @BuiltValueField(wireName: r'type')
  ReportComponentType get type;
  // enum typeEnum {  HEADING,  RICH_TEXT,  ENTITY_TABLE,  TIME_SERIES_TABLE,  ALARM_TABLE,  TIME_SERIES_CHART,  LATEST_CHART,  DASHBOARD,  IMAGE,  SUB_REPORT,  PAGE_BREAK,  ERROR,  DIVIDER,  SPLIT_VIEW,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'ALARM_TABLE': AlarmTableComponent,
    r'DASHBOARD': DashboardComponent,
    r'DIVIDER': DividerComponent,
    r'ENTITY_TABLE': EntityTableComponent,
    r'ERROR': ErrorComponent,
    r'HEADING': HeadingComponent,
    r'IMAGE': ImageComponent,
    r'LATEST_CHART': LatestChartComponent,
    r'PAGE_BREAK': PageBreakComponent,
    r'RICH_TEXT': RichTextComponent,
    r'SPLIT_VIEW': SplitViewComponent,
    r'SUB_REPORT': SubReportComponent,
    r'TIME_SERIES_CHART': TimeseriesChartComponent,
    r'TIME_SERIES_TABLE': TimeseriesTableComponent,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportComponent> get serializer => _$ReportComponentSerializer();
}

extension ReportComponentDiscriminatorExt on ReportComponent {
    String? get discriminatorValue {
        if (this is AlarmTableComponent) {
            return r'ALARM_TABLE';
        }
        if (this is DashboardComponent) {
            return r'DASHBOARD';
        }
        if (this is DividerComponent) {
            return r'DIVIDER';
        }
        if (this is EntityTableComponent) {
            return r'ENTITY_TABLE';
        }
        if (this is ErrorComponent) {
            return r'ERROR';
        }
        if (this is HeadingComponent) {
            return r'HEADING';
        }
        if (this is ImageComponent) {
            return r'IMAGE';
        }
        if (this is LatestChartComponent) {
            return r'LATEST_CHART';
        }
        if (this is PageBreakComponent) {
            return r'PAGE_BREAK';
        }
        if (this is RichTextComponent) {
            return r'RICH_TEXT';
        }
        if (this is SplitViewComponent) {
            return r'SPLIT_VIEW';
        }
        if (this is SubReportComponent) {
            return r'SUB_REPORT';
        }
        if (this is TimeseriesChartComponent) {
            return r'TIME_SERIES_CHART';
        }
        if (this is TimeseriesTableComponent) {
            return r'TIME_SERIES_TABLE';
        }
        return null;
    }
}
extension ReportComponentBuilderDiscriminatorExt on ReportComponentBuilder {
    String? get discriminatorValue {
        if (this is AlarmTableComponentBuilder) {
            return r'ALARM_TABLE';
        }
        if (this is DashboardComponentBuilder) {
            return r'DASHBOARD';
        }
        if (this is DividerComponentBuilder) {
            return r'DIVIDER';
        }
        if (this is EntityTableComponentBuilder) {
            return r'ENTITY_TABLE';
        }
        if (this is ErrorComponentBuilder) {
            return r'ERROR';
        }
        if (this is HeadingComponentBuilder) {
            return r'HEADING';
        }
        if (this is ImageComponentBuilder) {
            return r'IMAGE';
        }
        if (this is LatestChartComponentBuilder) {
            return r'LATEST_CHART';
        }
        if (this is PageBreakComponentBuilder) {
            return r'PAGE_BREAK';
        }
        if (this is RichTextComponentBuilder) {
            return r'RICH_TEXT';
        }
        if (this is SplitViewComponentBuilder) {
            return r'SPLIT_VIEW';
        }
        if (this is SubReportComponentBuilder) {
            return r'SUB_REPORT';
        }
        if (this is TimeseriesChartComponentBuilder) {
            return r'TIME_SERIES_CHART';
        }
        if (this is TimeseriesTableComponentBuilder) {
            return r'TIME_SERIES_TABLE';
        }
        return null;
    }
}

class _$ReportComponentSerializer implements PrimitiveSerializer<ReportComponent> {
  @override
  final Iterable<Type> types = const [ReportComponent];

  @override
  final String wireName = r'ReportComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subType';
    yield serializers.serialize(
      object.subType,
      specifiedType: const FullType(ReportComponentSubType),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportComponentType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AlarmTableComponent) {
      return serializers.serialize(object, specifiedType: FullType(AlarmTableComponent))!;
    }
    if (object is DashboardComponent) {
      return serializers.serialize(object, specifiedType: FullType(DashboardComponent))!;
    }
    if (object is DividerComponent) {
      return serializers.serialize(object, specifiedType: FullType(DividerComponent))!;
    }
    if (object is EntityTableComponent) {
      return serializers.serialize(object, specifiedType: FullType(EntityTableComponent))!;
    }
    if (object is ErrorComponent) {
      return serializers.serialize(object, specifiedType: FullType(ErrorComponent))!;
    }
    if (object is HeadingComponent) {
      return serializers.serialize(object, specifiedType: FullType(HeadingComponent))!;
    }
    if (object is ImageComponent) {
      return serializers.serialize(object, specifiedType: FullType(ImageComponent))!;
    }
    if (object is LatestChartComponent) {
      return serializers.serialize(object, specifiedType: FullType(LatestChartComponent))!;
    }
    if (object is PageBreakComponent) {
      return serializers.serialize(object, specifiedType: FullType(PageBreakComponent))!;
    }
    if (object is RichTextComponent) {
      return serializers.serialize(object, specifiedType: FullType(RichTextComponent))!;
    }
    if (object is SplitViewComponent) {
      return serializers.serialize(object, specifiedType: FullType(SplitViewComponent))!;
    }
    if (object is SubReportComponent) {
      return serializers.serialize(object, specifiedType: FullType(SubReportComponent))!;
    }
    if (object is TimeseriesChartComponent) {
      return serializers.serialize(object, specifiedType: FullType(TimeseriesChartComponent))!;
    }
    if (object is TimeseriesTableComponent) {
      return serializers.serialize(object, specifiedType: FullType(TimeseriesTableComponent))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ReportComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(ReportComponent.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ALARM_TABLE':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmTableComponent)) as AlarmTableComponent;
      case r'DASHBOARD':
        return serializers.deserialize(serialized, specifiedType: FullType(DashboardComponent)) as DashboardComponent;
      case r'DIVIDER':
        return serializers.deserialize(serialized, specifiedType: FullType(DividerComponent)) as DividerComponent;
      case r'ENTITY_TABLE':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityTableComponent)) as EntityTableComponent;
      case r'ERROR':
        return serializers.deserialize(serialized, specifiedType: FullType(ErrorComponent)) as ErrorComponent;
      case r'HEADING':
        return serializers.deserialize(serialized, specifiedType: FullType(HeadingComponent)) as HeadingComponent;
      case r'IMAGE':
        return serializers.deserialize(serialized, specifiedType: FullType(ImageComponent)) as ImageComponent;
      case r'LATEST_CHART':
        return serializers.deserialize(serialized, specifiedType: FullType(LatestChartComponent)) as LatestChartComponent;
      case r'PAGE_BREAK':
        return serializers.deserialize(serialized, specifiedType: FullType(PageBreakComponent)) as PageBreakComponent;
      case r'RICH_TEXT':
        return serializers.deserialize(serialized, specifiedType: FullType(RichTextComponent)) as RichTextComponent;
      case r'SPLIT_VIEW':
        return serializers.deserialize(serialized, specifiedType: FullType(SplitViewComponent)) as SplitViewComponent;
      case r'SUB_REPORT':
        return serializers.deserialize(serialized, specifiedType: FullType(SubReportComponent)) as SubReportComponent;
      case r'TIME_SERIES_CHART':
        return serializers.deserialize(serialized, specifiedType: FullType(TimeseriesChartComponent)) as TimeseriesChartComponent;
      case r'TIME_SERIES_TABLE':
        return serializers.deserialize(serialized, specifiedType: FullType(TimeseriesTableComponent)) as TimeseriesTableComponent;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($ReportComponent)) as $ReportComponent;
    }
  }
}


/// a concrete implementation of [ReportComponent], since [ReportComponent] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ReportComponent implements ReportComponent, Built<$ReportComponent, $ReportComponentBuilder> {
  $ReportComponent._();

  factory $ReportComponent([void Function($ReportComponentBuilder)? updates]) = _$$ReportComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ReportComponentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ReportComponent> get serializer => _$$ReportComponentSerializer();
}

class _$$ReportComponentSerializer implements PrimitiveSerializer<$ReportComponent> {
  @override
  final Iterable<Type> types = const [$ReportComponent, _$$ReportComponent];

  @override
  final String wireName = r'$ReportComponent';

  @override
  Object serialize(
    Serializers serializers,
    $ReportComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ReportComponent))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportComponentSubType),
          ) as ReportComponentSubType;
          result.subType = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportComponentType),
          ) as ReportComponentType;
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
  $ReportComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ReportComponentBuilder();
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


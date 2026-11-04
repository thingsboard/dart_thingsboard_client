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
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/data_source.dart';
import 'package:thingsboard_client/src/model/report_template_id.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sub_report_component.g.dart';

/// SubReportComponent
///
/// Properties:
/// * [subType]
/// * [type]
/// * [dataSources]
/// * [templateId]
/// * [avoidPageBreakInside]
@BuiltValue()
abstract class SubReportComponent
    implements
        ReportComponent,
        Built<SubReportComponent, SubReportComponentBuilder> {
  @BuiltValueField(wireName: r'templateId')
  ReportTemplateId? get templateId;

  @BuiltValueField(wireName: r'dataSources')
  BuiltList<DataSource>? get dataSources;

  @BuiltValueField(wireName: r'avoidPageBreakInside')
  bool? get avoidPageBreakInside;

  SubReportComponent._();

  factory SubReportComponent([void updates(SubReportComponentBuilder b)]) =
      _$SubReportComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubReportComponentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubReportComponent> get serializer =>
      _$SubReportComponentSerializer();
}

class _$SubReportComponentSerializer
    implements PrimitiveSerializer<SubReportComponent> {
  @override
  final Iterable<Type> types = const [SubReportComponent, _$SubReportComponent];

  @override
  final String wireName = r'SubReportComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubReportComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subType';
    yield serializers.serialize(
      object.subType,
      specifiedType: const FullType(ReportComponentSubType),
    );
    if (object.templateId != null) {
      yield r'templateId';
      yield serializers.serialize(
        object.templateId,
        specifiedType: const FullType(ReportTemplateId),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportComponentType),
    );
    if (object.dataSources != null) {
      yield r'dataSources';
      yield serializers.serialize(
        object.dataSources,
        specifiedType: const FullType(BuiltList, [FullType(DataSource)]),
      );
    }
    if (object.avoidPageBreakInside != null) {
      yield r'avoidPageBreakInside';
      yield serializers.serialize(
        object.avoidPageBreakInside,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubReportComponent object, {
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
    required SubReportComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportComponentSubType),
                  )
                  as ReportComponentSubType;
          result.subType = valueDes;
          break;
        case r'templateId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReportTemplateId),
                  )
                  as ReportTemplateId?;
          if (valueDes == null) continue;
          result.templateId.replace(valueDes);
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
        case r'avoidPageBreakInside':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.avoidPageBreakInside = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubReportComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubReportComponentBuilder();
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

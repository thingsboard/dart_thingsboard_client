// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/filter.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:thingsboard_client/src/model/entity_alias.dart';
import 'package:thingsboard_client/src/model/report_template_config.dart';
import 'package:thingsboard_client/src/model/tb_report_format.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'csv_report_template_config.g.dart';

/// CsvReportTemplateConfig
///
/// Properties:
/// * [namePattern]
/// * [timeDataPattern]
/// * [format] - Report format
/// * [entityAliases]
/// * [filters]
/// * [components]
@BuiltValue()
abstract class CsvReportTemplateConfig
    implements
        ReportTemplateConfig,
        Built<CsvReportTemplateConfig, CsvReportTemplateConfigBuilder> {
  CsvReportTemplateConfig._();

  factory CsvReportTemplateConfig([
    void updates(CsvReportTemplateConfigBuilder b),
  ]) = _$CsvReportTemplateConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CsvReportTemplateConfigBuilder b) =>
      b..format = TbReportFormat.CSV;

  @BuiltValueSerializer(custom: true)
  static Serializer<CsvReportTemplateConfig> get serializer =>
      _$CsvReportTemplateConfigSerializer();
}

class _$CsvReportTemplateConfigSerializer
    implements PrimitiveSerializer<CsvReportTemplateConfig> {
  @override
  final Iterable<Type> types = const [
    CsvReportTemplateConfig,
    _$CsvReportTemplateConfig,
  ];

  @override
  final String wireName = r'CsvReportTemplateConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CsvReportTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.namePattern != null) {
      yield r'namePattern';
      yield serializers.serialize(
        object.namePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.components != null) {
      yield r'components';
      yield serializers.serialize(
        object.components,
        specifiedType: const FullType(BuiltList, [FullType(ReportComponent)]),
      );
    }
    if (object.timeDataPattern != null) {
      yield r'timeDataPattern';
      yield serializers.serialize(
        object.timeDataPattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityAliases != null) {
      yield r'entityAliases';
      yield serializers.serialize(
        object.entityAliases,
        specifiedType: const FullType(BuiltList, [FullType(EntityAlias)]),
      );
    }
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(TbReportFormat),
    );
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(BuiltList, [FullType(Filter)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CsvReportTemplateConfig object, {
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
    required CsvReportTemplateConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'namePattern':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.namePattern = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ReportComponent),
                    ]),
                  )
                  as BuiltList<ReportComponent>?;
          if (valueDes == null) continue;
          result.components.replace(valueDes);
          break;
        case r'timeDataPattern':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timeDataPattern = valueDes;
          break;
        case r'entityAliases':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityAlias),
                    ]),
                  )
                  as BuiltList<EntityAlias>?;
          if (valueDes == null) continue;
          result.entityAliases.replace(valueDes);
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TbReportFormat),
                  )
                  as TbReportFormat;
          result.format = valueDes;
          break;
        case r'filters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Filter),
                    ]),
                  )
                  as BuiltList<Filter>?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CsvReportTemplateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CsvReportTemplateConfigBuilder();
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

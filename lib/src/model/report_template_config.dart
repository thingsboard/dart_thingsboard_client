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
import 'package:thingsboard_client/src/model/csv_report_template_config.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:thingsboard_client/src/model/entity_alias.dart';
import 'package:thingsboard_client/src/model/pdf_report_template_config.dart';
import 'package:thingsboard_client/src/model/tb_report_format.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_template_config.g.dart';

/// ReportTemplateConfig
///
/// Properties:
/// * [namePattern] 
/// * [timeDataPattern] 
/// * [format] - Report format
/// * [entityAliases] 
/// * [filters] 
/// * [components] 
@BuiltValue(instantiable: false)
abstract class ReportTemplateConfig  {
  @BuiltValueField(wireName: r'namePattern')
  String? get namePattern;

  @BuiltValueField(wireName: r'timeDataPattern')
  String? get timeDataPattern;

  /// Report format
  @BuiltValueField(wireName: r'format')
  TbReportFormat get format;
  // enum formatEnum {  PDF,  CSV,  };

  @BuiltValueField(wireName: r'entityAliases')
  BuiltList<EntityAlias>? get entityAliases;

  @BuiltValueField(wireName: r'filters')
  BuiltList<Filter>? get filters;

  @BuiltValueField(wireName: r'components')
  BuiltList<ReportComponent>? get components;

  static const String discriminatorFieldName = r'format';

  static const Map<String, Type> discriminatorMapping = {
    r'CSV': CsvReportTemplateConfig,
    r'PDF': PdfReportTemplateConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportTemplateConfig> get serializer => _$ReportTemplateConfigSerializer();
}

extension ReportTemplateConfigDiscriminatorExt on ReportTemplateConfig {
    String? get discriminatorValue {
        if (this is CsvReportTemplateConfig) {
            return r'CSV';
        }
        if (this is PdfReportTemplateConfig) {
            return r'PDF';
        }
        return null;
    }
}
extension ReportTemplateConfigBuilderDiscriminatorExt on ReportTemplateConfigBuilder {
    String? get discriminatorValue {
        if (this is CsvReportTemplateConfigBuilder) {
            return r'CSV';
        }
        if (this is PdfReportTemplateConfigBuilder) {
            return r'PDF';
        }
        return null;
    }
}

class _$ReportTemplateConfigSerializer implements PrimitiveSerializer<ReportTemplateConfig> {
  @override
  final Iterable<Type> types = const [ReportTemplateConfig];

  @override
  final String wireName = r'ReportTemplateConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.namePattern != null) {
      yield r'namePattern';
      yield serializers.serialize(
        object.namePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeDataPattern != null) {
      yield r'timeDataPattern';
      yield serializers.serialize(
        object.timeDataPattern,
        specifiedType: const FullType(String),
      );
    }
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(TbReportFormat),
    );
    if (object.entityAliases != null) {
      yield r'entityAliases';
      yield serializers.serialize(
        object.entityAliases,
        specifiedType: const FullType(BuiltList, [FullType(EntityAlias)]),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(BuiltList, [FullType(Filter)]),
      );
    }
    if (object.components != null) {
      yield r'components';
      yield serializers.serialize(
        object.components,
        specifiedType: const FullType(BuiltList, [FullType(ReportComponent)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CsvReportTemplateConfig) {
      return serializers.serialize(object, specifiedType: FullType(CsvReportTemplateConfig))!;
    }
    if (object is PdfReportTemplateConfig) {
      return serializers.serialize(object, specifiedType: FullType(PdfReportTemplateConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ReportTemplateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(ReportTemplateConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'CSV':
        return serializers.deserialize(serialized, specifiedType: FullType(CsvReportTemplateConfig)) as CsvReportTemplateConfig;
      case r'PDF':
        return serializers.deserialize(serialized, specifiedType: FullType(PdfReportTemplateConfig)) as PdfReportTemplateConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($ReportTemplateConfig)) as $ReportTemplateConfig;
    }
  }
}


/// a concrete implementation of [ReportTemplateConfig], since [ReportTemplateConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ReportTemplateConfig implements ReportTemplateConfig, Built<$ReportTemplateConfig, $ReportTemplateConfigBuilder> {
  $ReportTemplateConfig._();

  factory $ReportTemplateConfig([void Function($ReportTemplateConfigBuilder)? updates]) = _$$ReportTemplateConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ReportTemplateConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ReportTemplateConfig> get serializer => _$$ReportTemplateConfigSerializer();
}

class _$$ReportTemplateConfigSerializer implements PrimitiveSerializer<$ReportTemplateConfig> {
  @override
  final Iterable<Type> types = const [$ReportTemplateConfig, _$$ReportTemplateConfig];

  @override
  final String wireName = r'$ReportTemplateConfig';

  @override
  Object serialize(
    Serializers serializers,
    $ReportTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ReportTemplateConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportTemplateConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'namePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.namePattern = valueDes;
          break;
        case r'timeDataPattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timeDataPattern = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TbReportFormat),
          ) as TbReportFormat;
          result.format = valueDes;
          break;
        case r'entityAliases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EntityAlias)]),
          ) as BuiltList<EntityAlias>?;
          if (valueDes == null) continue;
          result.entityAliases.replace(valueDes);
          break;
        case r'filters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Filter)]),
          ) as BuiltList<Filter>?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        case r'components':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ReportComponent)]),
          ) as BuiltList<ReportComponent>?;
          if (valueDes == null) continue;
          result.components.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ReportTemplateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ReportTemplateConfigBuilder();
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


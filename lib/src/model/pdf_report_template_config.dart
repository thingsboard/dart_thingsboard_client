// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/header_footer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/insets.dart';
import 'package:thingsboard_client/src/model/filter.dart';
import 'package:thingsboard_client/src/model/page_orientation.dart';
import 'package:thingsboard_client/src/model/page_size.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:thingsboard_client/src/model/entity_alias.dart';
import 'package:thingsboard_client/src/model/report_template_config.dart';
import 'package:thingsboard_client/src/model/tb_report_format.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pdf_report_template_config.g.dart';

/// PdfReportTemplateConfig
///
/// Properties:
/// * [namePattern]
/// * [timeDataPattern]
/// * [format] - Report format
/// * [entityAliases]
/// * [filters]
/// * [components]
/// * [footer]
/// * [header]
/// * [pageBackground]
/// * [pageMargins]
/// * [pageOrientation]
/// * [pageSize]
@BuiltValue()
abstract class PdfReportTemplateConfig
    implements
        ReportTemplateConfig,
        Built<PdfReportTemplateConfig, PdfReportTemplateConfigBuilder> {
  @BuiltValueField(wireName: r'pageOrientation')
  PageOrientation? get pageOrientation;
  // enum pageOrientationEnum {  PORTRAIT,  LANDSCAPE,  };

  @BuiltValueField(wireName: r'footer')
  HeaderFooter? get footer;

  @BuiltValueField(wireName: r'pageBackground')
  String? get pageBackground;

  @BuiltValueField(wireName: r'pageMargins')
  Insets? get pageMargins;

  @BuiltValueField(wireName: r'header')
  HeaderFooter? get header;

  @BuiltValueField(wireName: r'pageSize')
  PageSize? get pageSize;
  // enum pageSizeEnum {  A4,  LETTER,  LEGAL,  A5,  A3,  TABLOID,  };

  PdfReportTemplateConfig._();

  factory PdfReportTemplateConfig([
    void updates(PdfReportTemplateConfigBuilder b),
  ]) = _$PdfReportTemplateConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PdfReportTemplateConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PdfReportTemplateConfig> get serializer =>
      _$PdfReportTemplateConfigSerializer();
}

class _$PdfReportTemplateConfigSerializer
    implements PrimitiveSerializer<PdfReportTemplateConfig> {
  @override
  final Iterable<Type> types = const [
    PdfReportTemplateConfig,
    _$PdfReportTemplateConfig,
  ];

  @override
  final String wireName = r'PdfReportTemplateConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PdfReportTemplateConfig object, {
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
    if (object.pageOrientation != null) {
      yield r'pageOrientation';
      yield serializers.serialize(
        object.pageOrientation,
        specifiedType: const FullType(PageOrientation),
      );
    }
    if (object.timeDataPattern != null) {
      yield r'timeDataPattern';
      yield serializers.serialize(
        object.timeDataPattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.footer != null) {
      yield r'footer';
      yield serializers.serialize(
        object.footer,
        specifiedType: const FullType(HeaderFooter),
      );
    }
    if (object.pageBackground != null) {
      yield r'pageBackground';
      yield serializers.serialize(
        object.pageBackground,
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
    if (object.pageMargins != null) {
      yield r'pageMargins';
      yield serializers.serialize(
        object.pageMargins,
        specifiedType: const FullType(Insets),
      );
    }
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(TbReportFormat),
    );
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType(HeaderFooter),
      );
    }
    if (object.pageSize != null) {
      yield r'pageSize';
      yield serializers.serialize(
        object.pageSize,
        specifiedType: const FullType(PageSize),
      );
    }
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
    PdfReportTemplateConfig object, {
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
    required PdfReportTemplateConfigBuilder result,
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
        case r'pageOrientation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PageOrientation),
                  )
                  as PageOrientation?;
          if (valueDes == null) continue;
          result.pageOrientation = valueDes;
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
        case r'footer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(HeaderFooter),
                  )
                  as HeaderFooter?;
          if (valueDes == null) continue;
          result.footer.replace(valueDes);
          break;
        case r'pageBackground':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.pageBackground = valueDes;
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
        case r'pageMargins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Insets),
                  )
                  as Insets?;
          if (valueDes == null) continue;
          result.pageMargins.replace(valueDes);
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
        case r'header':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(HeaderFooter),
                  )
                  as HeaderFooter?;
          if (valueDes == null) continue;
          result.header.replace(valueDes);
          break;
        case r'pageSize':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PageSize),
                  )
                  as PageSize?;
          if (valueDes == null) continue;
          result.pageSize = valueDes;
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
  PdfReportTemplateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PdfReportTemplateConfigBuilder();
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

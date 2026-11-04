// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_relation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/calculated_field.dart';
import 'package:thingsboard_client/src/model/entity_export_data.dart';
import 'package:thingsboard_client/src/model/attribute_export_data.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/exportable_entity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_template_export_data.g.dart';

/// ReportTemplateExportData
///
/// Properties:
/// * [entity] 
/// * [relations] 
/// * [attributes] - Map of attributes where key is the scope of attributes and value is the list of attributes for that scope
/// * [calculatedFields] 
/// * [entityType] 
@BuiltValue()
abstract class ReportTemplateExportData implements EntityExportData, Built<ReportTemplateExportData, ReportTemplateExportDataBuilder> {
  ReportTemplateExportData._();

  factory ReportTemplateExportData([void updates(ReportTemplateExportDataBuilder b)]) = _$ReportTemplateExportData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportTemplateExportDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportTemplateExportData> get serializer => _$ReportTemplateExportDataSerializer();
}

class _$ReportTemplateExportDataSerializer implements PrimitiveSerializer<ReportTemplateExportData> {
  @override
  final Iterable<Type> types = const [ReportTemplateExportData, _$ReportTemplateExportData];

  @override
  final String wireName = r'ReportTemplateExportData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportTemplateExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(AttributeExportData)])]),
      );
    }
    if (object.relations != null) {
      yield r'relations';
      yield serializers.serialize(
        object.relations,
        specifiedType: const FullType(BuiltList, [FullType(EntityRelation)]),
      );
    }
    if (object.calculatedFields != null) {
      yield r'calculatedFields';
      yield serializers.serialize(
        object.calculatedFields,
        specifiedType: const FullType(BuiltList, [FullType(CalculatedField)]),
      );
    }
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(EntityType),
    );
    if (object.entity != null) {
      yield r'entity';
      yield serializers.serialize(
        object.entity,
        specifiedType: const FullType(ExportableEntity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportTemplateExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportTemplateExportDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(AttributeExportData)])]),
          ) as BuiltMap<String, BuiltList<AttributeExportData>>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        case r'relations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EntityRelation)]),
          ) as BuiltList<EntityRelation>?;
          if (valueDes == null) continue;
          result.relations.replace(valueDes);
          break;
        case r'calculatedFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(CalculatedField)]),
          ) as BuiltList<CalculatedField>?;
          if (valueDes == null) continue;
          result.calculatedFields.replace(valueDes);
          break;
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityType),
          ) as EntityType;
          result.entityType = valueDes;
          break;
        case r'entity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExportableEntity),
          ) as ExportableEntity?;
          if (valueDes == null) continue;
          result.entity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportTemplateExportData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportTemplateExportDataBuilder();
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



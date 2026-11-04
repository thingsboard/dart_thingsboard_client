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
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'widgets_bundle_export_data.g.dart';

/// WidgetsBundleExportData
///
/// Properties:
/// * [entity] 
/// * [relations] 
/// * [attributes] - Map of attributes where key is the scope of attributes and value is the list of attributes for that scope
/// * [calculatedFields] 
/// * [entityType] 
/// * [widgets] - List of widgets in the bundle
/// * [fqns] 
@BuiltValue()
abstract class WidgetsBundleExportData implements EntityExportData, Built<WidgetsBundleExportData, WidgetsBundleExportDataBuilder> {
  @BuiltValueField(wireName: r'fqns')
  BuiltList<String>? get fqns;

  /// List of widgets in the bundle
  @BuiltValueField(wireName: r'widgets')
  BuiltList<JsonObject?>? get widgets;

  WidgetsBundleExportData._();

  factory WidgetsBundleExportData([void updates(WidgetsBundleExportDataBuilder b)]) = _$WidgetsBundleExportData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WidgetsBundleExportDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WidgetsBundleExportData> get serializer => _$WidgetsBundleExportDataSerializer();
}

class _$WidgetsBundleExportDataSerializer implements PrimitiveSerializer<WidgetsBundleExportData> {
  @override
  final Iterable<Type> types = const [WidgetsBundleExportData, _$WidgetsBundleExportData];

  @override
  final String wireName = r'WidgetsBundleExportData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WidgetsBundleExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fqns != null) {
      yield r'fqns';
      yield serializers.serialize(
        object.fqns,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(EntityType),
    );
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(AttributeExportData)])]),
      );
    }
    if (object.widgets != null) {
      yield r'widgets';
      yield serializers.serialize(
        object.widgets,
        specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
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
    WidgetsBundleExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WidgetsBundleExportDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fqns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fqns.replace(valueDes);
          break;
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityType),
          ) as EntityType;
          result.entityType = valueDes;
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(AttributeExportData)])]),
          ) as BuiltMap<String, BuiltList<AttributeExportData>>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        case r'widgets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.widgets.replace(valueDes);
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
  WidgetsBundleExportData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WidgetsBundleExportDataBuilder();
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



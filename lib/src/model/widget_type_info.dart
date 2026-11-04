// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/widget_bundle_info.dart';
import 'package:thingsboard_client/src/model/widget_type_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'widget_type_info.g.dart';

/// WidgetTypeInfo
///
/// Properties:
/// * [id] - JSON object with the Widget Type Id. Specify this field to update the Widget Type. Referencing non-existing Widget Type Id will cause error. Omit this field to create new Widget Type.
/// * [createdTime] - Timestamp of the Widget Type creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id.
/// * [fqn] - Unique FQN that is used in dashboards as a reference widget type
/// * [name] - Widget name used in search and UI
/// * [deprecated] - Whether widget type is deprecated.
/// * [scada] - Whether widget type is SCADA symbol.
/// * [version] 
/// * [image] - Base64 encoded widget thumbnail
/// * [description] - Description of the widget type
/// * [tags] - Tags of the widget type
/// * [widgetType] - Type of the widget (timeseries, latest, control, alarm or static)
/// * [bundles] - Bundles
@BuiltValue()
abstract class WidgetTypeInfo implements Built<WidgetTypeInfo, WidgetTypeInfoBuilder> {
  /// JSON object with the Widget Type Id. Specify this field to update the Widget Type. Referencing non-existing Widget Type Id will cause error. Omit this field to create new Widget Type.
  @BuiltValueField(wireName: r'id')
  WidgetTypeId? get id;

  /// Timestamp of the Widget Type creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Unique FQN that is used in dashboards as a reference widget type
  @BuiltValueField(wireName: r'fqn')
  String? get fqn;

  /// Widget name used in search and UI
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Whether widget type is deprecated.
  @BuiltValueField(wireName: r'deprecated')
  bool? get deprecated;

  /// Whether widget type is SCADA symbol.
  @BuiltValueField(wireName: r'scada')
  bool? get scada;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Base64 encoded widget thumbnail
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Description of the widget type
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Tags of the widget type
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Type of the widget (timeseries, latest, control, alarm or static)
  @BuiltValueField(wireName: r'widgetType')
  String? get widgetType;

  /// Bundles
  @BuiltValueField(wireName: r'bundles')
  BuiltList<WidgetBundleInfo>? get bundles;

  WidgetTypeInfo._();

  factory WidgetTypeInfo([void updates(WidgetTypeInfoBuilder b)]) = _$WidgetTypeInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WidgetTypeInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WidgetTypeInfo> get serializer => _$WidgetTypeInfoSerializer();
}

class _$WidgetTypeInfoSerializer implements PrimitiveSerializer<WidgetTypeInfo> {
  @override
  final Iterable<Type> types = const [WidgetTypeInfo, _$WidgetTypeInfo];

  @override
  final String wireName = r'WidgetTypeInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WidgetTypeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(WidgetTypeId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.fqn != null) {
      yield r'fqn';
      yield serializers.serialize(
        object.fqn,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.deprecated != null) {
      yield r'deprecated';
      yield serializers.serialize(
        object.deprecated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scada != null) {
      yield r'scada';
      yield serializers.serialize(
        object.scada,
        specifiedType: const FullType(bool),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.widgetType != null) {
      yield r'widgetType';
      yield serializers.serialize(
        object.widgetType,
        specifiedType: const FullType(String),
      );
    }
    if (object.bundles != null) {
      yield r'bundles';
      yield serializers.serialize(
        object.bundles,
        specifiedType: const FullType(BuiltList, [FullType(WidgetBundleInfo)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WidgetTypeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WidgetTypeInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WidgetTypeId),
          ) as WidgetTypeId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'fqn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fqn = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'deprecated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.deprecated = valueDes;
          break;
        case r'scada':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scada = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'widgetType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.widgetType = valueDes;
          break;
        case r'bundles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(WidgetBundleInfo)]),
          ) as BuiltList<WidgetBundleInfo>?;
          if (valueDes == null) continue;
          result.bundles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WidgetTypeInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WidgetTypeInfoBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/widget_type_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'widget_type.g.dart';

/// WidgetType
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
/// * [descriptor] - Complex JSON object that describes the widget type
@BuiltValue()
abstract class WidgetType implements Built<WidgetType, WidgetTypeBuilder> {
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

  /// Complex JSON object that describes the widget type
  @BuiltValueField(wireName: r'descriptor')
  JsonObject? get descriptor;

  WidgetType._();

  factory WidgetType([void updates(WidgetTypeBuilder b)]) = _$WidgetType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WidgetTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WidgetType> get serializer => _$WidgetTypeSerializer();
}

class _$WidgetTypeSerializer implements PrimitiveSerializer<WidgetType> {
  @override
  final Iterable<Type> types = const [WidgetType, _$WidgetType];

  @override
  final String wireName = r'WidgetType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WidgetType object, {
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
    if (object.descriptor != null) {
      yield r'descriptor';
      yield serializers.serialize(
        object.descriptor,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WidgetType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WidgetTypeBuilder result,
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
        case r'descriptor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.descriptor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WidgetType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WidgetTypeBuilder();
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



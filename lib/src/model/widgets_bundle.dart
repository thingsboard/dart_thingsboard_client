// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/widgets_bundle_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'widgets_bundle.g.dart';

/// A JSON value representing the Widget Bundle.
///
/// Properties:
/// * [id] - JSON object with the Widget Bundle Id. Specify this field to update the Widget Bundle. Referencing non-existing Widget Bundle Id will cause error. Omit this field to create new Widget Bundle.
/// * [createdTime] - Timestamp of the Widget Bundle creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id.
/// * [alias] - Unique alias that is used in widget types as a reference widget bundle
/// * [title] - Title used in search and UI
/// * [image] - Relative or external image URL. Replaced with image data URL (Base64) in case of relative URL and 'inlineImages' option enabled.
/// * [scada] - Whether widgets bundle contains SCADA symbol widget types.
/// * [description] - Description
/// * [order] - Order
/// * [version] 
/// * [name] - Same as title of the Widget Bundle. Read-only field. Update the 'title' to change the 'name' of the Widget Bundle.
@BuiltValue()
abstract class WidgetsBundle implements Built<WidgetsBundle, WidgetsBundleBuilder> {
  /// JSON object with the Widget Bundle Id. Specify this field to update the Widget Bundle. Referencing non-existing Widget Bundle Id will cause error. Omit this field to create new Widget Bundle.
  @BuiltValueField(wireName: r'id')
  WidgetsBundleId? get id;

  /// Timestamp of the Widget Bundle creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Unique alias that is used in widget types as a reference widget bundle
  @BuiltValueField(wireName: r'alias')
  String? get alias;

  /// Title used in search and UI
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Relative or external image URL. Replaced with image data URL (Base64) in case of relative URL and 'inlineImages' option enabled.
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Whether widgets bundle contains SCADA symbol widget types.
  @BuiltValueField(wireName: r'scada')
  bool? get scada;

  /// Description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Order
  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Same as title of the Widget Bundle. Read-only field. Update the 'title' to change the 'name' of the Widget Bundle.
  @BuiltValueField(wireName: r'name')
  String? get name;

  WidgetsBundle._();

  factory WidgetsBundle([void updates(WidgetsBundleBuilder b)]) = _$WidgetsBundle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WidgetsBundleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WidgetsBundle> get serializer => _$WidgetsBundleSerializer();
}

class _$WidgetsBundleSerializer implements PrimitiveSerializer<WidgetsBundle> {
  @override
  final Iterable<Type> types = const [WidgetsBundle, _$WidgetsBundle];

  @override
  final String wireName = r'WidgetsBundle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WidgetsBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(WidgetsBundleId),
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
    if (object.alias != null) {
      yield r'alias';
      yield serializers.serialize(
        object.alias,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.scada != null) {
      yield r'scada';
      yield serializers.serialize(
        object.scada,
        specifiedType: const FullType(bool),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(int),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WidgetsBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WidgetsBundleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WidgetsBundleId),
          ) as WidgetsBundleId?;
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
        case r'alias':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.alias = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'scada':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scada = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.order = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WidgetsBundle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WidgetsBundleBuilder();
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



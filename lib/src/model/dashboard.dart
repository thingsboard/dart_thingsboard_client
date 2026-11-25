// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/resource_export_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/short_customer_info.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard.g.dart';

/// Dashboard
///
/// Properties:
/// * [id] - JSON object with the dashboard Id. Specify existing dashboard Id to update the dashboard. Referencing non-existing dashboard id will cause error. Omit this field to create new dashboard.
/// * [createdTime] - Timestamp of the dashboard creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id. Tenant Id of the dashboard can't be changed.
/// * [customerId] - JSON object with Customer Id.
/// * [ownerId] - JSON object with Customer or Tenant Id
/// * [title] - Title of the dashboard.
/// * [name] - Same as title of the dashboard. Read-only field. Update the 'title' to change the 'name' of the dashboard.
/// * [image] - Thumbnail picture for rendering of the dashboards in a grid view on mobile devices.
/// * [assignedCustomers] - List of assigned customers with their info.
/// * [mobileHide] - Hide dashboard from mobile devices. Useful if the dashboard is not designed for small screens.
/// * [mobileOrder] - Order on mobile devices. Useful to adjust sorting of the dashboards for mobile applications
/// * [configuration] - JSON object with main configuration of the dashboard: layouts, widgets, aliases, etc. The JSON structure of the dashboard configuration is quite complex. The easiest way to learn it is to export existing dashboard to JSON.
/// * [resources]
/// * [version]
@BuiltValue()
abstract class Dashboard implements Built<Dashboard, DashboardBuilder> {
  /// JSON object with the dashboard Id. Specify existing dashboard Id to update the dashboard. Referencing non-existing dashboard id will cause error. Omit this field to create new dashboard.
  @BuiltValueField(wireName: r'id')
  DashboardId? get id;

  /// Timestamp of the dashboard creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id. Tenant Id of the dashboard can't be changed.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  /// Title of the dashboard.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Same as title of the dashboard. Read-only field. Update the 'title' to change the 'name' of the dashboard.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Thumbnail picture for rendering of the dashboards in a grid view on mobile devices.
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// List of assigned customers with their info.
  @BuiltValueField(wireName: r'assignedCustomers')
  BuiltSet<ShortCustomerInfo>? get assignedCustomers;

  /// Hide dashboard from mobile devices. Useful if the dashboard is not designed for small screens.
  @BuiltValueField(wireName: r'mobileHide')
  bool? get mobileHide;

  /// Order on mobile devices. Useful to adjust sorting of the dashboards for mobile applications
  @BuiltValueField(wireName: r'mobileOrder')
  int? get mobileOrder;

  /// JSON object with main configuration of the dashboard: layouts, widgets, aliases, etc. The JSON structure of the dashboard configuration is quite complex. The easiest way to learn it is to export existing dashboard to JSON.
  @BuiltValueField(wireName: r'configuration')
  JsonObject? get configuration;

  @BuiltValueField(wireName: r'resources')
  BuiltList<ResourceExportData>? get resources;

  @BuiltValueField(wireName: r'version')
  int? get version;

  Dashboard._();

  factory Dashboard([void updates(DashboardBuilder b)]) = _$Dashboard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Dashboard> get serializer => _$DashboardSerializer();
}

class _$DashboardSerializer implements PrimitiveSerializer<Dashboard> {
  @override
  final Iterable<Type> types = const [Dashboard, _$Dashboard];

  @override
  final String wireName = r'Dashboard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Dashboard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(DashboardId),
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
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
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
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.assignedCustomers != null) {
      yield r'assignedCustomers';
      yield serializers.serialize(
        object.assignedCustomers,
        specifiedType: const FullType(BuiltSet, [FullType(ShortCustomerInfo)]),
      );
    }
    if (object.mobileHide != null) {
      yield r'mobileHide';
      yield serializers.serialize(
        object.mobileHide,
        specifiedType: const FullType(bool),
      );
    }
    if (object.mobileOrder != null) {
      yield r'mobileOrder';
      yield serializers.serialize(
        object.mobileOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.resources != null) {
      yield r'resources';
      yield serializers.serialize(
        object.resources,
        specifiedType: const FullType(BuiltList, [
          FullType(ResourceExportData),
        ]),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Dashboard object, {
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
    required DashboardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DashboardId),
                  )
                  as DashboardId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'ownerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'image':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'assignedCustomers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(ShortCustomerInfo),
                    ]),
                  )
                  as BuiltSet<ShortCustomerInfo>?;
          if (valueDes == null) continue;
          result.assignedCustomers.replace(valueDes);
          break;
        case r'mobileHide':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.mobileHide = valueDes;
          break;
        case r'mobileOrder':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.mobileOrder = valueDes;
          break;
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'resources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ResourceExportData),
                    ]),
                  )
                  as BuiltList<ResourceExportData>?;
          if (valueDes == null) continue;
          result.resources.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Dashboard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardBuilder();
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

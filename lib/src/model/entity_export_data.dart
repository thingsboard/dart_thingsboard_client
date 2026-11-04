// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/rule_chain_export_data.dart';
import 'package:thingsboard_client/src/model/calculated_field.dart';
import 'package:thingsboard_client/src/model/report_template_export_data.dart';
import 'package:thingsboard_client/src/model/ota_package_export_data.dart';
import 'package:thingsboard_client/src/model/exportable_entity.dart';
import 'package:thingsboard_client/src/model/asset_profile_export_data.dart';
import 'package:thingsboard_client/src/model/entity_relation.dart';
import 'package:thingsboard_client/src/model/notification_target_export_data.dart';
import 'package:thingsboard_client/src/model/notification_template_export_data.dart';
import 'package:thingsboard_client/src/model/integration_export_data.dart';
import 'package:thingsboard_client/src/model/widgets_bundle_export_data.dart';
import 'package:thingsboard_client/src/model/entity_view_export_data.dart';
import 'package:thingsboard_client/src/model/widget_type_export_data.dart';
import 'package:thingsboard_client/src/model/customer_export_data.dart';
import 'package:thingsboard_client/src/model/asset_export_data.dart';
import 'package:thingsboard_client/src/model/device_profile_export_data.dart';
import 'package:thingsboard_client/src/model/role_export_data.dart';
import 'package:thingsboard_client/src/model/converter_export_data.dart';
import 'package:thingsboard_client/src/model/attribute_export_data.dart';
import 'package:thingsboard_client/src/model/dashboard_export_data.dart';
import 'package:thingsboard_client/src/model/notification_rule_export_data.dart';
import 'package:thingsboard_client/src/model/tb_resource_export_data.dart';
import 'package:thingsboard_client/src/model/entity_group_export_data.dart';
import 'package:thingsboard_client/src/model/device_export_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/scheduler_event_export_data.dart';
import 'package:thingsboard_client/src/model/user_export_data.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/ai_model_export_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_export_data.g.dart';

/// Base export container for ThingsBoard entities
///
/// Properties:
/// * [entity] 
/// * [relations] 
/// * [attributes] - Map of attributes where key is the scope of attributes and value is the list of attributes for that scope
/// * [calculatedFields] 
/// * [entityType] 
@BuiltValue(instantiable: false)
abstract class EntityExportData  {
  @BuiltValueField(wireName: r'entity')
  ExportableEntity? get entity;

  @BuiltValueField(wireName: r'relations')
  BuiltList<EntityRelation>? get relations;

  /// Map of attributes where key is the scope of attributes and value is the list of attributes for that scope
  @BuiltValueField(wireName: r'attributes')
  BuiltMap<String, BuiltList<AttributeExportData>>? get attributes;

  @BuiltValueField(wireName: r'calculatedFields')
  BuiltList<CalculatedField>? get calculatedFields;

  @BuiltValueField(wireName: r'entityType')
  EntityType get entityType;
  // enum entityTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  static const String discriminatorFieldName = r'entityType';

  static const Map<String, Type> discriminatorMapping = {
    r'AI_MODEL': AiModelExportData,
    r'ASSET': AssetExportData,
    r'ASSET_PROFILE': AssetProfileExportData,
    r'CONVERTER': ConverterExportData,
    r'CUSTOMER': CustomerExportData,
    r'DASHBOARD': DashboardExportData,
    r'DEVICE': DeviceExportData,
    r'DEVICE_PROFILE': DeviceProfileExportData,
    r'ENTITY_GROUP': EntityGroupExportData,
    r'ENTITY_VIEW': EntityViewExportData,
    r'INTEGRATION': IntegrationExportData,
    r'NOTIFICATION_RULE': NotificationRuleExportData,
    r'NOTIFICATION_TARGET': NotificationTargetExportData,
    r'NOTIFICATION_TEMPLATE': NotificationTemplateExportData,
    r'OTA_PACKAGE': OtaPackageExportData,
    r'REPORT_TEMPLATE': ReportTemplateExportData,
    r'ROLE': RoleExportData,
    r'RULE_CHAIN': RuleChainExportData,
    r'SCHEDULER_EVENT': SchedulerEventExportData,
    r'TB_RESOURCE': TbResourceExportData,
    r'USER': UserExportData,
    r'WIDGETS_BUNDLE': WidgetsBundleExportData,
    r'WIDGET_TYPE': WidgetTypeExportData,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityExportData> get serializer => _$EntityExportDataSerializer();
}

extension EntityExportDataDiscriminatorExt on EntityExportData {
    String? get discriminatorValue {
        if (this is AiModelExportData) {
            return r'AI_MODEL';
        }
        if (this is AssetExportData) {
            return r'ASSET';
        }
        if (this is AssetProfileExportData) {
            return r'ASSET_PROFILE';
        }
        if (this is ConverterExportData) {
            return r'CONVERTER';
        }
        if (this is CustomerExportData) {
            return r'CUSTOMER';
        }
        if (this is DashboardExportData) {
            return r'DASHBOARD';
        }
        if (this is DeviceExportData) {
            return r'DEVICE';
        }
        if (this is DeviceProfileExportData) {
            return r'DEVICE_PROFILE';
        }
        if (this is EntityGroupExportData) {
            return r'ENTITY_GROUP';
        }
        if (this is EntityViewExportData) {
            return r'ENTITY_VIEW';
        }
        if (this is IntegrationExportData) {
            return r'INTEGRATION';
        }
        if (this is NotificationRuleExportData) {
            return r'NOTIFICATION_RULE';
        }
        if (this is NotificationTargetExportData) {
            return r'NOTIFICATION_TARGET';
        }
        if (this is NotificationTemplateExportData) {
            return r'NOTIFICATION_TEMPLATE';
        }
        if (this is OtaPackageExportData) {
            return r'OTA_PACKAGE';
        }
        if (this is ReportTemplateExportData) {
            return r'REPORT_TEMPLATE';
        }
        if (this is RoleExportData) {
            return r'ROLE';
        }
        if (this is RuleChainExportData) {
            return r'RULE_CHAIN';
        }
        if (this is SchedulerEventExportData) {
            return r'SCHEDULER_EVENT';
        }
        if (this is TbResourceExportData) {
            return r'TB_RESOURCE';
        }
        if (this is UserExportData) {
            return r'USER';
        }
        if (this is WidgetsBundleExportData) {
            return r'WIDGETS_BUNDLE';
        }
        if (this is WidgetTypeExportData) {
            return r'WIDGET_TYPE';
        }
        return null;
    }
}
extension EntityExportDataBuilderDiscriminatorExt on EntityExportDataBuilder {
    String? get discriminatorValue {
        if (this is AiModelExportDataBuilder) {
            return r'AI_MODEL';
        }
        if (this is AssetExportDataBuilder) {
            return r'ASSET';
        }
        if (this is AssetProfileExportDataBuilder) {
            return r'ASSET_PROFILE';
        }
        if (this is ConverterExportDataBuilder) {
            return r'CONVERTER';
        }
        if (this is CustomerExportDataBuilder) {
            return r'CUSTOMER';
        }
        if (this is DashboardExportDataBuilder) {
            return r'DASHBOARD';
        }
        if (this is DeviceExportDataBuilder) {
            return r'DEVICE';
        }
        if (this is DeviceProfileExportDataBuilder) {
            return r'DEVICE_PROFILE';
        }
        if (this is EntityGroupExportDataBuilder) {
            return r'ENTITY_GROUP';
        }
        if (this is EntityViewExportDataBuilder) {
            return r'ENTITY_VIEW';
        }
        if (this is IntegrationExportDataBuilder) {
            return r'INTEGRATION';
        }
        if (this is NotificationRuleExportDataBuilder) {
            return r'NOTIFICATION_RULE';
        }
        if (this is NotificationTargetExportDataBuilder) {
            return r'NOTIFICATION_TARGET';
        }
        if (this is NotificationTemplateExportDataBuilder) {
            return r'NOTIFICATION_TEMPLATE';
        }
        if (this is OtaPackageExportDataBuilder) {
            return r'OTA_PACKAGE';
        }
        if (this is ReportTemplateExportDataBuilder) {
            return r'REPORT_TEMPLATE';
        }
        if (this is RoleExportDataBuilder) {
            return r'ROLE';
        }
        if (this is RuleChainExportDataBuilder) {
            return r'RULE_CHAIN';
        }
        if (this is SchedulerEventExportDataBuilder) {
            return r'SCHEDULER_EVENT';
        }
        if (this is TbResourceExportDataBuilder) {
            return r'TB_RESOURCE';
        }
        if (this is UserExportDataBuilder) {
            return r'USER';
        }
        if (this is WidgetsBundleExportDataBuilder) {
            return r'WIDGETS_BUNDLE';
        }
        if (this is WidgetTypeExportDataBuilder) {
            return r'WIDGET_TYPE';
        }
        return null;
    }
}

class _$EntityExportDataSerializer implements PrimitiveSerializer<EntityExportData> {
  @override
  final Iterable<Type> types = const [EntityExportData];

  @override
  final String wireName = r'EntityExportData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entity != null) {
      yield r'entity';
      yield serializers.serialize(
        object.entity,
        specifiedType: const FullType(ExportableEntity),
      );
    }
    if (object.relations != null) {
      yield r'relations';
      yield serializers.serialize(
        object.relations,
        specifiedType: const FullType(BuiltList, [FullType(EntityRelation)]),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(AttributeExportData)])]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AiModelExportData) {
      return serializers.serialize(object, specifiedType: FullType(AiModelExportData))!;
    }
    if (object is AssetExportData) {
      return serializers.serialize(object, specifiedType: FullType(AssetExportData))!;
    }
    if (object is AssetProfileExportData) {
      return serializers.serialize(object, specifiedType: FullType(AssetProfileExportData))!;
    }
    if (object is ConverterExportData) {
      return serializers.serialize(object, specifiedType: FullType(ConverterExportData))!;
    }
    if (object is CustomerExportData) {
      return serializers.serialize(object, specifiedType: FullType(CustomerExportData))!;
    }
    if (object is DashboardExportData) {
      return serializers.serialize(object, specifiedType: FullType(DashboardExportData))!;
    }
    if (object is DeviceExportData) {
      return serializers.serialize(object, specifiedType: FullType(DeviceExportData))!;
    }
    if (object is DeviceProfileExportData) {
      return serializers.serialize(object, specifiedType: FullType(DeviceProfileExportData))!;
    }
    if (object is EntityGroupExportData) {
      return serializers.serialize(object, specifiedType: FullType(EntityGroupExportData))!;
    }
    if (object is EntityViewExportData) {
      return serializers.serialize(object, specifiedType: FullType(EntityViewExportData))!;
    }
    if (object is IntegrationExportData) {
      return serializers.serialize(object, specifiedType: FullType(IntegrationExportData))!;
    }
    if (object is NotificationRuleExportData) {
      return serializers.serialize(object, specifiedType: FullType(NotificationRuleExportData))!;
    }
    if (object is NotificationTargetExportData) {
      return serializers.serialize(object, specifiedType: FullType(NotificationTargetExportData))!;
    }
    if (object is NotificationTemplateExportData) {
      return serializers.serialize(object, specifiedType: FullType(NotificationTemplateExportData))!;
    }
    if (object is OtaPackageExportData) {
      return serializers.serialize(object, specifiedType: FullType(OtaPackageExportData))!;
    }
    if (object is ReportTemplateExportData) {
      return serializers.serialize(object, specifiedType: FullType(ReportTemplateExportData))!;
    }
    if (object is RoleExportData) {
      return serializers.serialize(object, specifiedType: FullType(RoleExportData))!;
    }
    if (object is RuleChainExportData) {
      return serializers.serialize(object, specifiedType: FullType(RuleChainExportData))!;
    }
    if (object is SchedulerEventExportData) {
      return serializers.serialize(object, specifiedType: FullType(SchedulerEventExportData))!;
    }
    if (object is TbResourceExportData) {
      return serializers.serialize(object, specifiedType: FullType(TbResourceExportData))!;
    }
    if (object is UserExportData) {
      return serializers.serialize(object, specifiedType: FullType(UserExportData))!;
    }
    if (object is WidgetsBundleExportData) {
      return serializers.serialize(object, specifiedType: FullType(WidgetsBundleExportData))!;
    }
    if (object is WidgetTypeExportData) {
      return serializers.serialize(object, specifiedType: FullType(WidgetTypeExportData))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  EntityExportData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(EntityExportData.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'AI_MODEL':
        return serializers.deserialize(serialized, specifiedType: FullType(AiModelExportData)) as AiModelExportData;
      case r'ASSET':
        return serializers.deserialize(serialized, specifiedType: FullType(AssetExportData)) as AssetExportData;
      case r'ASSET_PROFILE':
        return serializers.deserialize(serialized, specifiedType: FullType(AssetProfileExportData)) as AssetProfileExportData;
      case r'CONVERTER':
        return serializers.deserialize(serialized, specifiedType: FullType(ConverterExportData)) as ConverterExportData;
      case r'CUSTOMER':
        return serializers.deserialize(serialized, specifiedType: FullType(CustomerExportData)) as CustomerExportData;
      case r'DASHBOARD':
        return serializers.deserialize(serialized, specifiedType: FullType(DashboardExportData)) as DashboardExportData;
      case r'DEVICE':
        return serializers.deserialize(serialized, specifiedType: FullType(DeviceExportData)) as DeviceExportData;
      case r'DEVICE_PROFILE':
        return serializers.deserialize(serialized, specifiedType: FullType(DeviceProfileExportData)) as DeviceProfileExportData;
      case r'ENTITY_GROUP':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityGroupExportData)) as EntityGroupExportData;
      case r'ENTITY_VIEW':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityViewExportData)) as EntityViewExportData;
      case r'INTEGRATION':
        return serializers.deserialize(serialized, specifiedType: FullType(IntegrationExportData)) as IntegrationExportData;
      case r'NOTIFICATION_RULE':
        return serializers.deserialize(serialized, specifiedType: FullType(NotificationRuleExportData)) as NotificationRuleExportData;
      case r'NOTIFICATION_TARGET':
        return serializers.deserialize(serialized, specifiedType: FullType(NotificationTargetExportData)) as NotificationTargetExportData;
      case r'NOTIFICATION_TEMPLATE':
        return serializers.deserialize(serialized, specifiedType: FullType(NotificationTemplateExportData)) as NotificationTemplateExportData;
      case r'OTA_PACKAGE':
        return serializers.deserialize(serialized, specifiedType: FullType(OtaPackageExportData)) as OtaPackageExportData;
      case r'REPORT_TEMPLATE':
        return serializers.deserialize(serialized, specifiedType: FullType(ReportTemplateExportData)) as ReportTemplateExportData;
      case r'ROLE':
        return serializers.deserialize(serialized, specifiedType: FullType(RoleExportData)) as RoleExportData;
      case r'RULE_CHAIN':
        return serializers.deserialize(serialized, specifiedType: FullType(RuleChainExportData)) as RuleChainExportData;
      case r'SCHEDULER_EVENT':
        return serializers.deserialize(serialized, specifiedType: FullType(SchedulerEventExportData)) as SchedulerEventExportData;
      case r'TB_RESOURCE':
        return serializers.deserialize(serialized, specifiedType: FullType(TbResourceExportData)) as TbResourceExportData;
      case r'USER':
        return serializers.deserialize(serialized, specifiedType: FullType(UserExportData)) as UserExportData;
      case r'WIDGETS_BUNDLE':
        return serializers.deserialize(serialized, specifiedType: FullType(WidgetsBundleExportData)) as WidgetsBundleExportData;
      case r'WIDGET_TYPE':
        return serializers.deserialize(serialized, specifiedType: FullType(WidgetTypeExportData)) as WidgetTypeExportData;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($EntityExportData)) as $EntityExportData;
    }
  }
}


/// a concrete implementation of [EntityExportData], since [EntityExportData] is not instantiable
@BuiltValue(instantiable: true)
abstract class $EntityExportData implements EntityExportData, Built<$EntityExportData, $EntityExportDataBuilder> {
  $EntityExportData._();

  factory $EntityExportData([void Function($EntityExportDataBuilder)? updates]) = _$$EntityExportData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($EntityExportDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$EntityExportData> get serializer => _$$EntityExportDataSerializer();
}

class _$$EntityExportDataSerializer implements PrimitiveSerializer<$EntityExportData> {
  @override
  final Iterable<Type> types = const [$EntityExportData, _$$EntityExportData];

  @override
  final String wireName = r'$EntityExportData';

  @override
  Object serialize(
    Serializers serializers,
    $EntityExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(EntityExportData))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityExportDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExportableEntity),
          ) as ExportableEntity?;
          if (valueDes == null) continue;
          result.entity.replace(valueDes);
          break;
        case r'relations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EntityRelation)]),
          ) as BuiltList<EntityRelation>?;
          if (valueDes == null) continue;
          result.relations.replace(valueDes);
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(AttributeExportData)])]),
          ) as BuiltMap<String, BuiltList<AttributeExportData>>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $EntityExportData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $EntityExportDataBuilder();
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


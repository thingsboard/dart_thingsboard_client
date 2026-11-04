// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/single_entity_filter.dart';
import 'package:thingsboard_client/src/model/asset_type_filter.dart';
import 'package:thingsboard_client/src/model/entity_list_filter.dart';
import 'package:thingsboard_client/src/model/entity_type_filter.dart';
import 'package:thingsboard_client/src/model/edge_type_filter.dart';
import 'package:thingsboard_client/src/model/entity_group_name_filter.dart';
import 'package:thingsboard_client/src/model/entity_name_filter.dart';
import 'package:thingsboard_client/src/model/entity_view_type_filter.dart';
import 'package:thingsboard_client/src/model/asset_search_query_filter.dart';
import 'package:thingsboard_client/src/model/entity_group_filter.dart';
import 'package:thingsboard_client/src/model/relations_query_filter.dart';
import 'package:thingsboard_client/src/model/device_search_query_filter.dart';
import 'package:thingsboard_client/src/model/edge_search_query_filter.dart';
import 'package:thingsboard_client/src/model/state_entity_owner_filter.dart';
import 'package:thingsboard_client/src/model/scheduler_event_filter.dart';
import 'package:thingsboard_client/src/model/device_type_filter.dart';
import 'package:thingsboard_client/src/model/state_entity_filter.dart';
import 'package:thingsboard_client/src/model/entities_by_group_name_filter.dart';
import 'package:thingsboard_client/src/model/entity_group_list_filter.dart';
import 'package:thingsboard_client/src/model/api_usage_state_filter.dart';
import 'package:thingsboard_client/src/model/entity_view_search_query_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_filter.g.dart';

/// Filter for selecting entities
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class EntityFilter  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'apiUsageState': ApiUsageStateFilter,
    r'assetSearchQuery': AssetSearchQueryFilter,
    r'assetType': AssetTypeFilter,
    r'deviceSearchQuery': DeviceSearchQueryFilter,
    r'deviceType': DeviceTypeFilter,
    r'edgeSearchQuery': EdgeSearchQueryFilter,
    r'edgeType': EdgeTypeFilter,
    r'entitiesByGroupName': EntitiesByGroupNameFilter,
    r'entityGroup': EntityGroupFilter,
    r'entityGroupList': EntityGroupListFilter,
    r'entityGroupName': EntityGroupNameFilter,
    r'entityList': EntityListFilter,
    r'entityName': EntityNameFilter,
    r'entityType': EntityTypeFilter,
    r'entityViewSearchQuery': EntityViewSearchQueryFilter,
    r'entityViewType': EntityViewTypeFilter,
    r'relationsQuery': RelationsQueryFilter,
    r'schedulerEvent': SchedulerEventFilter,
    r'singleEntity': SingleEntityFilter,
    r'stateEntity': StateEntityFilter,
    r'stateEntityOwner': StateEntityOwnerFilter,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityFilter> get serializer => _$EntityFilterSerializer();
}

extension EntityFilterDiscriminatorExt on EntityFilter {
    String? get discriminatorValue {
        if (this is ApiUsageStateFilter) {
            return r'apiUsageState';
        }
        if (this is AssetSearchQueryFilter) {
            return r'assetSearchQuery';
        }
        if (this is AssetTypeFilter) {
            return r'assetType';
        }
        if (this is DeviceSearchQueryFilter) {
            return r'deviceSearchQuery';
        }
        if (this is DeviceTypeFilter) {
            return r'deviceType';
        }
        if (this is EdgeSearchQueryFilter) {
            return r'edgeSearchQuery';
        }
        if (this is EdgeTypeFilter) {
            return r'edgeType';
        }
        if (this is EntitiesByGroupNameFilter) {
            return r'entitiesByGroupName';
        }
        if (this is EntityGroupFilter) {
            return r'entityGroup';
        }
        if (this is EntityGroupListFilter) {
            return r'entityGroupList';
        }
        if (this is EntityGroupNameFilter) {
            return r'entityGroupName';
        }
        if (this is EntityListFilter) {
            return r'entityList';
        }
        if (this is EntityNameFilter) {
            return r'entityName';
        }
        if (this is EntityTypeFilter) {
            return r'entityType';
        }
        if (this is EntityViewSearchQueryFilter) {
            return r'entityViewSearchQuery';
        }
        if (this is EntityViewTypeFilter) {
            return r'entityViewType';
        }
        if (this is RelationsQueryFilter) {
            return r'relationsQuery';
        }
        if (this is SchedulerEventFilter) {
            return r'schedulerEvent';
        }
        if (this is SingleEntityFilter) {
            return r'singleEntity';
        }
        if (this is StateEntityFilter) {
            return r'stateEntity';
        }
        if (this is StateEntityOwnerFilter) {
            return r'stateEntityOwner';
        }
        return null;
    }
}
extension EntityFilterBuilderDiscriminatorExt on EntityFilterBuilder {
    String? get discriminatorValue {
        if (this is ApiUsageStateFilterBuilder) {
            return r'apiUsageState';
        }
        if (this is AssetSearchQueryFilterBuilder) {
            return r'assetSearchQuery';
        }
        if (this is AssetTypeFilterBuilder) {
            return r'assetType';
        }
        if (this is DeviceSearchQueryFilterBuilder) {
            return r'deviceSearchQuery';
        }
        if (this is DeviceTypeFilterBuilder) {
            return r'deviceType';
        }
        if (this is EdgeSearchQueryFilterBuilder) {
            return r'edgeSearchQuery';
        }
        if (this is EdgeTypeFilterBuilder) {
            return r'edgeType';
        }
        if (this is EntitiesByGroupNameFilterBuilder) {
            return r'entitiesByGroupName';
        }
        if (this is EntityGroupFilterBuilder) {
            return r'entityGroup';
        }
        if (this is EntityGroupListFilterBuilder) {
            return r'entityGroupList';
        }
        if (this is EntityGroupNameFilterBuilder) {
            return r'entityGroupName';
        }
        if (this is EntityListFilterBuilder) {
            return r'entityList';
        }
        if (this is EntityNameFilterBuilder) {
            return r'entityName';
        }
        if (this is EntityTypeFilterBuilder) {
            return r'entityType';
        }
        if (this is EntityViewSearchQueryFilterBuilder) {
            return r'entityViewSearchQuery';
        }
        if (this is EntityViewTypeFilterBuilder) {
            return r'entityViewType';
        }
        if (this is RelationsQueryFilterBuilder) {
            return r'relationsQuery';
        }
        if (this is SchedulerEventFilterBuilder) {
            return r'schedulerEvent';
        }
        if (this is SingleEntityFilterBuilder) {
            return r'singleEntity';
        }
        if (this is StateEntityFilterBuilder) {
            return r'stateEntity';
        }
        if (this is StateEntityOwnerFilterBuilder) {
            return r'stateEntityOwner';
        }
        return null;
    }
}

class _$EntityFilterSerializer implements PrimitiveSerializer<EntityFilter> {
  @override
  final Iterable<Type> types = const [EntityFilter];

  @override
  final String wireName = r'EntityFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is ApiUsageStateFilter) {
      return serializers.serialize(object, specifiedType: FullType(ApiUsageStateFilter))!;
    }
    if (object is AssetSearchQueryFilter) {
      return serializers.serialize(object, specifiedType: FullType(AssetSearchQueryFilter))!;
    }
    if (object is AssetTypeFilter) {
      return serializers.serialize(object, specifiedType: FullType(AssetTypeFilter))!;
    }
    if (object is DeviceSearchQueryFilter) {
      return serializers.serialize(object, specifiedType: FullType(DeviceSearchQueryFilter))!;
    }
    if (object is DeviceTypeFilter) {
      return serializers.serialize(object, specifiedType: FullType(DeviceTypeFilter))!;
    }
    if (object is EdgeSearchQueryFilter) {
      return serializers.serialize(object, specifiedType: FullType(EdgeSearchQueryFilter))!;
    }
    if (object is EdgeTypeFilter) {
      return serializers.serialize(object, specifiedType: FullType(EdgeTypeFilter))!;
    }
    if (object is EntitiesByGroupNameFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntitiesByGroupNameFilter))!;
    }
    if (object is EntityGroupFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityGroupFilter))!;
    }
    if (object is EntityGroupListFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityGroupListFilter))!;
    }
    if (object is EntityGroupNameFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityGroupNameFilter))!;
    }
    if (object is EntityListFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityListFilter))!;
    }
    if (object is EntityNameFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityNameFilter))!;
    }
    if (object is EntityTypeFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityTypeFilter))!;
    }
    if (object is EntityViewSearchQueryFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityViewSearchQueryFilter))!;
    }
    if (object is EntityViewTypeFilter) {
      return serializers.serialize(object, specifiedType: FullType(EntityViewTypeFilter))!;
    }
    if (object is RelationsQueryFilter) {
      return serializers.serialize(object, specifiedType: FullType(RelationsQueryFilter))!;
    }
    if (object is SchedulerEventFilter) {
      return serializers.serialize(object, specifiedType: FullType(SchedulerEventFilter))!;
    }
    if (object is SingleEntityFilter) {
      return serializers.serialize(object, specifiedType: FullType(SingleEntityFilter))!;
    }
    if (object is StateEntityFilter) {
      return serializers.serialize(object, specifiedType: FullType(StateEntityFilter))!;
    }
    if (object is StateEntityOwnerFilter) {
      return serializers.serialize(object, specifiedType: FullType(StateEntityOwnerFilter))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  EntityFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(EntityFilter.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'apiUsageState':
        return serializers.deserialize(serialized, specifiedType: FullType(ApiUsageStateFilter)) as ApiUsageStateFilter;
      case r'assetSearchQuery':
        return serializers.deserialize(serialized, specifiedType: FullType(AssetSearchQueryFilter)) as AssetSearchQueryFilter;
      case r'assetType':
        return serializers.deserialize(serialized, specifiedType: FullType(AssetTypeFilter)) as AssetTypeFilter;
      case r'deviceSearchQuery':
        return serializers.deserialize(serialized, specifiedType: FullType(DeviceSearchQueryFilter)) as DeviceSearchQueryFilter;
      case r'deviceType':
        return serializers.deserialize(serialized, specifiedType: FullType(DeviceTypeFilter)) as DeviceTypeFilter;
      case r'edgeSearchQuery':
        return serializers.deserialize(serialized, specifiedType: FullType(EdgeSearchQueryFilter)) as EdgeSearchQueryFilter;
      case r'edgeType':
        return serializers.deserialize(serialized, specifiedType: FullType(EdgeTypeFilter)) as EdgeTypeFilter;
      case r'entitiesByGroupName':
        return serializers.deserialize(serialized, specifiedType: FullType(EntitiesByGroupNameFilter)) as EntitiesByGroupNameFilter;
      case r'entityGroup':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityGroupFilter)) as EntityGroupFilter;
      case r'entityGroupList':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityGroupListFilter)) as EntityGroupListFilter;
      case r'entityGroupName':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityGroupNameFilter)) as EntityGroupNameFilter;
      case r'entityList':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityListFilter)) as EntityListFilter;
      case r'entityName':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityNameFilter)) as EntityNameFilter;
      case r'entityType':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityTypeFilter)) as EntityTypeFilter;
      case r'entityViewSearchQuery':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityViewSearchQueryFilter)) as EntityViewSearchQueryFilter;
      case r'entityViewType':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityViewTypeFilter)) as EntityViewTypeFilter;
      case r'relationsQuery':
        return serializers.deserialize(serialized, specifiedType: FullType(RelationsQueryFilter)) as RelationsQueryFilter;
      case r'schedulerEvent':
        return serializers.deserialize(serialized, specifiedType: FullType(SchedulerEventFilter)) as SchedulerEventFilter;
      case r'singleEntity':
        return serializers.deserialize(serialized, specifiedType: FullType(SingleEntityFilter)) as SingleEntityFilter;
      case r'stateEntity':
        return serializers.deserialize(serialized, specifiedType: FullType(StateEntityFilter)) as StateEntityFilter;
      case r'stateEntityOwner':
        return serializers.deserialize(serialized, specifiedType: FullType(StateEntityOwnerFilter)) as StateEntityOwnerFilter;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($EntityFilter)) as $EntityFilter;
    }
  }
}


/// a concrete implementation of [EntityFilter], since [EntityFilter] is not instantiable
@BuiltValue(instantiable: true)
abstract class $EntityFilter implements EntityFilter, Built<$EntityFilter, $EntityFilterBuilder> {
  $EntityFilter._();

  factory $EntityFilter([void Function($EntityFilterBuilder)? updates]) = _$$EntityFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($EntityFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$EntityFilter> get serializer => _$$EntityFilterSerializer();
}

class _$$EntityFilterSerializer implements PrimitiveSerializer<$EntityFilter> {
  @override
  final Iterable<Type> types = const [$EntityFilter, _$$EntityFilter];

  @override
  final String wireName = r'$EntityFilter';

  @override
  Object serialize(
    Serializers serializers,
    $EntityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(EntityFilter))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $EntityFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $EntityFilterBuilder();
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


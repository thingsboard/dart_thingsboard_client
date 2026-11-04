// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_data_sort_order.dart';
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_search_status.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_data_page_link.g.dart';

/// AlarmDataPageLink
///
/// Properties:
/// * [pageSize] 
/// * [page] 
/// * [textSearch] 
/// * [sortOrder] 
/// * [dynamic_] 
/// * [startTs] 
/// * [endTs] 
/// * [timeWindow] 
/// * [typeList] 
/// * [statusList] 
/// * [severityList] 
/// * [searchPropagatedAlarms] 
/// * [assigneeId] 
@BuiltValue()
abstract class AlarmDataPageLink implements Built<AlarmDataPageLink, AlarmDataPageLinkBuilder> {
  @BuiltValueField(wireName: r'pageSize')
  int? get pageSize;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'textSearch')
  String? get textSearch;

  @BuiltValueField(wireName: r'sortOrder')
  EntityDataSortOrder? get sortOrder;

  @BuiltValueField(wireName: r'dynamic')
  bool? get dynamic_;

  @BuiltValueField(wireName: r'startTs')
  int? get startTs;

  @BuiltValueField(wireName: r'endTs')
  int? get endTs;

  @BuiltValueField(wireName: r'timeWindow')
  int? get timeWindow;

  @BuiltValueField(wireName: r'typeList')
  BuiltList<String>? get typeList;

  @BuiltValueField(wireName: r'statusList')
  BuiltList<AlarmSearchStatus>? get statusList;

  @BuiltValueField(wireName: r'severityList')
  BuiltList<AlarmSeverity>? get severityList;

  @BuiltValueField(wireName: r'searchPropagatedAlarms')
  bool? get searchPropagatedAlarms;

  @BuiltValueField(wireName: r'assigneeId')
  UserId? get assigneeId;

  AlarmDataPageLink._();

  factory AlarmDataPageLink([void updates(AlarmDataPageLinkBuilder b)]) = _$AlarmDataPageLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmDataPageLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmDataPageLink> get serializer => _$AlarmDataPageLinkSerializer();
}

class _$AlarmDataPageLinkSerializer implements PrimitiveSerializer<AlarmDataPageLink> {
  @override
  final Iterable<Type> types = const [AlarmDataPageLink, _$AlarmDataPageLink];

  @override
  final String wireName = r'AlarmDataPageLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmDataPageLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pageSize != null) {
      yield r'pageSize';
      yield serializers.serialize(
        object.pageSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.textSearch != null) {
      yield r'textSearch';
      yield serializers.serialize(
        object.textSearch,
        specifiedType: const FullType(String),
      );
    }
    if (object.sortOrder != null) {
      yield r'sortOrder';
      yield serializers.serialize(
        object.sortOrder,
        specifiedType: const FullType(EntityDataSortOrder),
      );
    }
    if (object.dynamic_ != null) {
      yield r'dynamic';
      yield serializers.serialize(
        object.dynamic_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.startTs != null) {
      yield r'startTs';
      yield serializers.serialize(
        object.startTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.endTs != null) {
      yield r'endTs';
      yield serializers.serialize(
        object.endTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.timeWindow != null) {
      yield r'timeWindow';
      yield serializers.serialize(
        object.timeWindow,
        specifiedType: const FullType(int),
      );
    }
    if (object.typeList != null) {
      yield r'typeList';
      yield serializers.serialize(
        object.typeList,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.statusList != null) {
      yield r'statusList';
      yield serializers.serialize(
        object.statusList,
        specifiedType: const FullType(BuiltList, [FullType(AlarmSearchStatus)]),
      );
    }
    if (object.severityList != null) {
      yield r'severityList';
      yield serializers.serialize(
        object.severityList,
        specifiedType: const FullType(BuiltList, [FullType(AlarmSeverity)]),
      );
    }
    if (object.searchPropagatedAlarms != null) {
      yield r'searchPropagatedAlarms';
      yield serializers.serialize(
        object.searchPropagatedAlarms,
        specifiedType: const FullType(bool),
      );
    }
    if (object.assigneeId != null) {
      yield r'assigneeId';
      yield serializers.serialize(
        object.assigneeId,
        specifiedType: const FullType(UserId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmDataPageLink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmDataPageLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pageSize = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        case r'textSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.textSearch = valueDes;
          break;
        case r'sortOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityDataSortOrder),
          ) as EntityDataSortOrder?;
          if (valueDes == null) continue;
          result.sortOrder.replace(valueDes);
          break;
        case r'dynamic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.dynamic_ = valueDes;
          break;
        case r'startTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.startTs = valueDes;
          break;
        case r'endTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.endTs = valueDes;
          break;
        case r'timeWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timeWindow = valueDes;
          break;
        case r'typeList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.typeList.replace(valueDes);
          break;
        case r'statusList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AlarmSearchStatus)]),
          ) as BuiltList<AlarmSearchStatus>?;
          if (valueDes == null) continue;
          result.statusList.replace(valueDes);
          break;
        case r'severityList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AlarmSeverity)]),
          ) as BuiltList<AlarmSeverity>?;
          if (valueDes == null) continue;
          result.severityList.replace(valueDes);
          break;
        case r'searchPropagatedAlarms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.searchPropagatedAlarms = valueDes;
          break;
        case r'assigneeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserId),
          ) as UserId?;
          if (valueDes == null) continue;
          result.assigneeId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmDataPageLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmDataPageLinkBuilder();
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



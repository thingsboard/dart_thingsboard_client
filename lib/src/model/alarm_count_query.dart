// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/key_filter.dart';
import 'package:thingsboard_client/src/model/alarm_rule_complex_operation.dart';
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_search_status.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_count_query.g.dart';

/// A JSON value representing the alarm count query.
///
/// Properties:
/// * [entityFilter]
/// * [keyFilters]
/// * [keyFiltersOperation]
/// * [startTs]
/// * [endTs]
/// * [timeWindow]
/// * [typeList]
/// * [statusList]
/// * [severityList]
/// * [searchPropagatedAlarms]
/// * [assigneeId]
/// * [keyFiltersOperationOrDefault]
@BuiltValue()
abstract class AlarmCountQuery
    implements Built<AlarmCountQuery, AlarmCountQueryBuilder> {
  @BuiltValueField(wireName: r'entityFilter')
  EntityFilter? get entityFilter;

  @BuiltValueField(wireName: r'keyFilters')
  BuiltList<KeyFilter>? get keyFilters;

  @BuiltValueField(wireName: r'keyFiltersOperation')
  AlarmRuleComplexOperation? get keyFiltersOperation;
  // enum keyFiltersOperationEnum {  AND,  OR,  };

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

  @BuiltValueField(wireName: r'keyFiltersOperationOrDefault')
  AlarmRuleComplexOperation? get keyFiltersOperationOrDefault;
  // enum keyFiltersOperationOrDefaultEnum {  AND,  OR,  };

  AlarmCountQuery._();

  factory AlarmCountQuery([void updates(AlarmCountQueryBuilder b)]) =
      _$AlarmCountQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmCountQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmCountQuery> get serializer =>
      _$AlarmCountQuerySerializer();
}

class _$AlarmCountQuerySerializer
    implements PrimitiveSerializer<AlarmCountQuery> {
  @override
  final Iterable<Type> types = const [AlarmCountQuery, _$AlarmCountQuery];

  @override
  final String wireName = r'AlarmCountQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmCountQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityFilter != null) {
      yield r'entityFilter';
      yield serializers.serialize(
        object.entityFilter,
        specifiedType: const FullType(EntityFilter),
      );
    }
    if (object.keyFilters != null) {
      yield r'keyFilters';
      yield serializers.serialize(
        object.keyFilters,
        specifiedType: const FullType(BuiltList, [FullType(KeyFilter)]),
      );
    }
    if (object.keyFiltersOperation != null) {
      yield r'keyFiltersOperation';
      yield serializers.serialize(
        object.keyFiltersOperation,
        specifiedType: const FullType(AlarmRuleComplexOperation),
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
    if (object.keyFiltersOperationOrDefault != null) {
      yield r'keyFiltersOperationOrDefault';
      yield serializers.serialize(
        object.keyFiltersOperationOrDefault,
        specifiedType: const FullType(AlarmRuleComplexOperation),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmCountQuery object, {
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
    required AlarmCountQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityFilter),
                  )
                  as EntityFilter?;
          if (valueDes == null) continue;
          result.entityFilter = valueDes;
          break;
        case r'keyFilters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(KeyFilter),
                    ]),
                  )
                  as BuiltList<KeyFilter>?;
          if (valueDes == null) continue;
          result.keyFilters.replace(valueDes);
          break;
        case r'keyFiltersOperation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AlarmRuleComplexOperation,
                    ),
                  )
                  as AlarmRuleComplexOperation?;
          if (valueDes == null) continue;
          result.keyFiltersOperation = valueDes;
          break;
        case r'startTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.startTs = valueDes;
          break;
        case r'endTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.endTs = valueDes;
          break;
        case r'timeWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.timeWindow = valueDes;
          break;
        case r'typeList':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.typeList.replace(valueDes);
          break;
        case r'statusList':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AlarmSearchStatus),
                    ]),
                  )
                  as BuiltList<AlarmSearchStatus>?;
          if (valueDes == null) continue;
          result.statusList.replace(valueDes);
          break;
        case r'severityList':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AlarmSeverity),
                    ]),
                  )
                  as BuiltList<AlarmSeverity>?;
          if (valueDes == null) continue;
          result.severityList.replace(valueDes);
          break;
        case r'searchPropagatedAlarms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.searchPropagatedAlarms = valueDes;
          break;
        case r'assigneeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.assigneeId.replace(valueDes);
          break;
        case r'keyFiltersOperationOrDefault':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AlarmRuleComplexOperation,
                    ),
                  )
                  as AlarmRuleComplexOperation?;
          if (valueDes == null) continue;
          result.keyFiltersOperationOrDefault = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmCountQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmCountQueryBuilder();
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

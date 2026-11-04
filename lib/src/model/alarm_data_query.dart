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
import 'package:thingsboard_client/src/model/entity_key.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:thingsboard_client/src/model/alarm_data_page_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_data_query.g.dart';

/// A JSON value representing the alarm data query. See API call notes above for more details.
///
/// Properties:
/// * [entityFilter]
/// * [keyFilters]
/// * [keyFiltersOperation]
/// * [pageLink]
/// * [entityFields]
/// * [latestValues]
/// * [alarmFields]
/// * [keyFiltersOperationOrDefault]
@BuiltValue()
abstract class AlarmDataQuery
    implements Built<AlarmDataQuery, AlarmDataQueryBuilder> {
  @BuiltValueField(wireName: r'entityFilter')
  EntityFilter? get entityFilter;

  @BuiltValueField(wireName: r'keyFilters')
  BuiltList<KeyFilter>? get keyFilters;

  @BuiltValueField(wireName: r'keyFiltersOperation')
  AlarmRuleComplexOperation? get keyFiltersOperation;
  // enum keyFiltersOperationEnum {  AND,  OR,  };

  @BuiltValueField(wireName: r'pageLink')
  AlarmDataPageLink? get pageLink;

  @BuiltValueField(wireName: r'entityFields')
  BuiltList<EntityKey>? get entityFields;

  @BuiltValueField(wireName: r'latestValues')
  BuiltList<EntityKey>? get latestValues;

  @BuiltValueField(wireName: r'alarmFields')
  BuiltList<EntityKey>? get alarmFields;

  @BuiltValueField(wireName: r'keyFiltersOperationOrDefault')
  AlarmRuleComplexOperation? get keyFiltersOperationOrDefault;
  // enum keyFiltersOperationOrDefaultEnum {  AND,  OR,  };

  AlarmDataQuery._();

  factory AlarmDataQuery([void updates(AlarmDataQueryBuilder b)]) =
      _$AlarmDataQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmDataQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmDataQuery> get serializer =>
      _$AlarmDataQuerySerializer();
}

class _$AlarmDataQuerySerializer
    implements PrimitiveSerializer<AlarmDataQuery> {
  @override
  final Iterable<Type> types = const [AlarmDataQuery, _$AlarmDataQuery];

  @override
  final String wireName = r'AlarmDataQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmDataQuery object, {
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
    if (object.pageLink != null) {
      yield r'pageLink';
      yield serializers.serialize(
        object.pageLink,
        specifiedType: const FullType(AlarmDataPageLink),
      );
    }
    if (object.entityFields != null) {
      yield r'entityFields';
      yield serializers.serialize(
        object.entityFields,
        specifiedType: const FullType(BuiltList, [FullType(EntityKey)]),
      );
    }
    if (object.latestValues != null) {
      yield r'latestValues';
      yield serializers.serialize(
        object.latestValues,
        specifiedType: const FullType(BuiltList, [FullType(EntityKey)]),
      );
    }
    if (object.alarmFields != null) {
      yield r'alarmFields';
      yield serializers.serialize(
        object.alarmFields,
        specifiedType: const FullType(BuiltList, [FullType(EntityKey)]),
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
    AlarmDataQuery object, {
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
    required AlarmDataQueryBuilder result,
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
        case r'pageLink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmDataPageLink),
                  )
                  as AlarmDataPageLink?;
          if (valueDes == null) continue;
          result.pageLink.replace(valueDes);
          break;
        case r'entityFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityKey),
                    ]),
                  )
                  as BuiltList<EntityKey>?;
          if (valueDes == null) continue;
          result.entityFields.replace(valueDes);
          break;
        case r'latestValues':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityKey),
                    ]),
                  )
                  as BuiltList<EntityKey>?;
          if (valueDes == null) continue;
          result.latestValues.replace(valueDes);
          break;
        case r'alarmFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityKey),
                    ]),
                  )
                  as BuiltList<EntityKey>?;
          if (valueDes == null) continue;
          result.alarmFields.replace(valueDes);
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
  AlarmDataQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmDataQueryBuilder();
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

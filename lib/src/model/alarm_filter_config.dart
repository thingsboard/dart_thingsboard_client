// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_search_status.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_filter_config.g.dart';

/// AlarmFilterConfig
///
/// Properties:
/// * [typeList] 
/// * [statusList] 
/// * [severityList] 
/// * [assigneeId] 
/// * [searchPropagatedAlarms] 
@BuiltValue()
abstract class AlarmFilterConfig implements Built<AlarmFilterConfig, AlarmFilterConfigBuilder> {
  @BuiltValueField(wireName: r'typeList')
  BuiltList<String>? get typeList;

  @BuiltValueField(wireName: r'statusList')
  BuiltList<AlarmSearchStatus>? get statusList;

  @BuiltValueField(wireName: r'severityList')
  BuiltList<AlarmSeverity>? get severityList;

  @BuiltValueField(wireName: r'assigneeId')
  UserId? get assigneeId;

  @BuiltValueField(wireName: r'searchPropagatedAlarms')
  bool? get searchPropagatedAlarms;

  AlarmFilterConfig._();

  factory AlarmFilterConfig([void updates(AlarmFilterConfigBuilder b)]) = _$AlarmFilterConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmFilterConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmFilterConfig> get serializer => _$AlarmFilterConfigSerializer();
}

class _$AlarmFilterConfigSerializer implements PrimitiveSerializer<AlarmFilterConfig> {
  @override
  final Iterable<Type> types = const [AlarmFilterConfig, _$AlarmFilterConfig];

  @override
  final String wireName = r'AlarmFilterConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmFilterConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.assigneeId != null) {
      yield r'assigneeId';
      yield serializers.serialize(
        object.assigneeId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.searchPropagatedAlarms != null) {
      yield r'searchPropagatedAlarms';
      yield serializers.serialize(
        object.searchPropagatedAlarms,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmFilterConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmFilterConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'assigneeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserId),
          ) as UserId?;
          if (valueDes == null) continue;
          result.assigneeId.replace(valueDes);
          break;
        case r'searchPropagatedAlarms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.searchPropagatedAlarms = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmFilterConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmFilterConfigBuilder();
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



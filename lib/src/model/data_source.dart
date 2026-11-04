// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/data_source_type.dart';
import 'package:thingsboard_client/src/model/alarm_filter_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/data_key.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'data_source.g.dart';

/// DataSource
///
/// Properties:
/// * [type]
/// * [deviceId]
/// * [entityAliasId]
/// * [filterId]
/// * [dataKeys]
/// * [latestDataKeys]
/// * [alarmFilterConfig]
@BuiltValue()
abstract class DataSource implements Built<DataSource, DataSourceBuilder> {
  @BuiltValueField(wireName: r'type')
  DataSourceType? get type;
  // enum typeEnum {  device,  entity,  entityCount,  alarmCount,  };

  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

  @BuiltValueField(wireName: r'entityAliasId')
  String? get entityAliasId;

  @BuiltValueField(wireName: r'filterId')
  String? get filterId;

  @BuiltValueField(wireName: r'dataKeys')
  BuiltList<DataKey>? get dataKeys;

  @BuiltValueField(wireName: r'latestDataKeys')
  BuiltList<DataKey>? get latestDataKeys;

  @BuiltValueField(wireName: r'alarmFilterConfig')
  AlarmFilterConfig? get alarmFilterConfig;

  DataSource._();

  factory DataSource([void updates(DataSourceBuilder b)]) = _$DataSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DataSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DataSource> get serializer => _$DataSourceSerializer();
}

class _$DataSourceSerializer implements PrimitiveSerializer<DataSource> {
  @override
  final Iterable<Type> types = const [DataSource, _$DataSource];

  @override
  final String wireName = r'DataSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DataSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(DataSourceType),
      );
    }
    if (object.deviceId != null) {
      yield r'deviceId';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityAliasId != null) {
      yield r'entityAliasId';
      yield serializers.serialize(
        object.entityAliasId,
        specifiedType: const FullType(String),
      );
    }
    if (object.filterId != null) {
      yield r'filterId';
      yield serializers.serialize(
        object.filterId,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataKeys != null) {
      yield r'dataKeys';
      yield serializers.serialize(
        object.dataKeys,
        specifiedType: const FullType(BuiltList, [FullType(DataKey)]),
      );
    }
    if (object.latestDataKeys != null) {
      yield r'latestDataKeys';
      yield serializers.serialize(
        object.latestDataKeys,
        specifiedType: const FullType(BuiltList, [FullType(DataKey)]),
      );
    }
    if (object.alarmFilterConfig != null) {
      yield r'alarmFilterConfig';
      yield serializers.serialize(
        object.alarmFilterConfig,
        specifiedType: const FullType(AlarmFilterConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DataSource object, {
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
    required DataSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DataSourceType),
                  )
                  as DataSourceType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'deviceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceId = valueDes;
          break;
        case r'entityAliasId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityAliasId = valueDes;
          break;
        case r'filterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.filterId = valueDes;
          break;
        case r'dataKeys':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DataKey),
                    ]),
                  )
                  as BuiltList<DataKey>?;
          if (valueDes == null) continue;
          result.dataKeys.replace(valueDes);
          break;
        case r'latestDataKeys':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DataKey),
                    ]),
                  )
                  as BuiltList<DataKey>?;
          if (valueDes == null) continue;
          result.latestDataKeys.replace(valueDes);
          break;
        case r'alarmFilterConfig':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmFilterConfig),
                  )
                  as AlarmFilterConfig?;
          if (valueDes == null) continue;
          result.alarmFilterConfig.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DataSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DataSourceBuilder();
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

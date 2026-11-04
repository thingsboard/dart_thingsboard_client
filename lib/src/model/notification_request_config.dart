// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/report_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_request_config.g.dart';

/// NotificationRequestConfig
///
/// Properties:
/// * [sendingDelayInSec] 
/// * [reports] 
@BuiltValue()
abstract class NotificationRequestConfig implements Built<NotificationRequestConfig, NotificationRequestConfigBuilder> {
  @BuiltValueField(wireName: r'sendingDelayInSec')
  int? get sendingDelayInSec;

  @BuiltValueField(wireName: r'reports')
  BuiltList<ReportId>? get reports;

  NotificationRequestConfig._();

  factory NotificationRequestConfig([void updates(NotificationRequestConfigBuilder b)]) = _$NotificationRequestConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationRequestConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRequestConfig> get serializer => _$NotificationRequestConfigSerializer();
}

class _$NotificationRequestConfigSerializer implements PrimitiveSerializer<NotificationRequestConfig> {
  @override
  final Iterable<Type> types = const [NotificationRequestConfig, _$NotificationRequestConfig];

  @override
  final String wireName = r'NotificationRequestConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRequestConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sendingDelayInSec != null) {
      yield r'sendingDelayInSec';
      yield serializers.serialize(
        object.sendingDelayInSec,
        specifiedType: const FullType(int),
      );
    }
    if (object.reports != null) {
      yield r'reports';
      yield serializers.serialize(
        object.reports,
        specifiedType: const FullType(BuiltList, [FullType(ReportId)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRequestConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRequestConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sendingDelayInSec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sendingDelayInSec = valueDes;
          break;
        case r'reports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ReportId)]),
          ) as BuiltList<ReportId>?;
          if (valueDes == null) continue;
          result.reports.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationRequestConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationRequestConfigBuilder();
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



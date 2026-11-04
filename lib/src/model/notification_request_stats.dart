// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_request_stats.g.dart';

/// Notification request processing statistics
///
/// Properties:
/// * [sent] 
/// * [errors] 
/// * [totalErrors] 
/// * [error] 
/// * [totalSent] 
@BuiltValue()
abstract class NotificationRequestStats implements Built<NotificationRequestStats, NotificationRequestStatsBuilder> {
  @BuiltValueField(wireName: r'sent')
  BuiltMap<String, int>? get sent;

  @BuiltValueField(wireName: r'errors')
  BuiltMap<String, BuiltMap<String, String>>? get errors;

  @BuiltValueField(wireName: r'totalErrors')
  int? get totalErrors;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'totalSent')
  int? get totalSent;

  NotificationRequestStats._();

  factory NotificationRequestStats([void updates(NotificationRequestStatsBuilder b)]) = _$NotificationRequestStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationRequestStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRequestStats> get serializer => _$NotificationRequestStatsSerializer();
}

class _$NotificationRequestStatsSerializer implements PrimitiveSerializer<NotificationRequestStats> {
  @override
  final Iterable<Type> types = const [NotificationRequestStats, _$NotificationRequestStats];

  @override
  final String wireName = r'NotificationRequestStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRequestStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sent != null) {
      yield r'sent';
      yield serializers.serialize(
        object.sent,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltMap, [FullType(String), FullType(String)])]),
      );
    }
    if (object.totalErrors != null) {
      yield r'totalErrors';
      yield serializers.serialize(
        object.totalErrors,
        specifiedType: const FullType(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalSent != null) {
      yield r'totalSent';
      yield serializers.serialize(
        object.totalSent,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRequestStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRequestStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.sent.replace(valueDes);
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltMap, [FullType(String), FullType(String)])]),
          ) as BuiltMap<String, BuiltMap<String, String>>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        case r'totalErrors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalErrors = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'totalSent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationRequestStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationRequestStatsBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/event_type.dart';
import 'package:thingsboard_client/src/model/event_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'statistics_event_filter.g.dart';

/// StatisticsEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [minMessagesProcessed] - The minimum number of successfully processed messages
/// * [maxMessagesProcessed] - The maximum number of successfully processed messages
/// * [minErrorsOccurred] - The minimum number of errors occurred during messages processing
/// * [maxErrorsOccurred] - The maximum number of errors occurred during messages processing
@BuiltValue()
abstract class StatisticsEventFilter
    implements
        EventFilter,
        Built<StatisticsEventFilter, StatisticsEventFilterBuilder> {
  /// The minimum number of errors occurred during messages processing
  @BuiltValueField(wireName: r'minErrorsOccurred')
  int? get minErrorsOccurred;

  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  /// The maximum number of errors occurred during messages processing
  @BuiltValueField(wireName: r'maxErrorsOccurred')
  int? get maxErrorsOccurred;

  /// The maximum number of successfully processed messages
  @BuiltValueField(wireName: r'maxMessagesProcessed')
  int? get maxMessagesProcessed;

  /// The minimum number of successfully processed messages
  @BuiltValueField(wireName: r'minMessagesProcessed')
  int? get minMessagesProcessed;

  StatisticsEventFilter._();

  factory StatisticsEventFilter([
    void updates(StatisticsEventFilterBuilder b),
  ]) = _$StatisticsEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatisticsEventFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatisticsEventFilter> get serializer =>
      _$StatisticsEventFilterSerializer();
}

class _$StatisticsEventFilterSerializer
    implements PrimitiveSerializer<StatisticsEventFilter> {
  @override
  final Iterable<Type> types = const [
    StatisticsEventFilter,
    _$StatisticsEventFilter,
  ];

  @override
  final String wireName = r'StatisticsEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatisticsEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minErrorsOccurred != null) {
      yield r'minErrorsOccurred';
      yield serializers.serialize(
        object.minErrorsOccurred,
        specifiedType: const FullType(int),
      );
    }
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxErrorsOccurred != null) {
      yield r'maxErrorsOccurred';
      yield serializers.serialize(
        object.maxErrorsOccurred,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxMessagesProcessed != null) {
      yield r'maxMessagesProcessed';
      yield serializers.serialize(
        object.maxMessagesProcessed,
        specifiedType: const FullType(int),
      );
    }
    if (object.minMessagesProcessed != null) {
      yield r'minMessagesProcessed';
      yield serializers.serialize(
        object.minMessagesProcessed,
        specifiedType: const FullType(int),
      );
    }
    yield r'eventType';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(EventType),
    );
    if (object.notEmpty != null) {
      yield r'notEmpty';
      yield serializers.serialize(
        object.notEmpty,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatisticsEventFilter object, {
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
    required StatisticsEventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minErrorsOccurred':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minErrorsOccurred = valueDes;
          break;
        case r'server':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.server = valueDes;
          break;
        case r'maxErrorsOccurred':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxErrorsOccurred = valueDes;
          break;
        case r'maxMessagesProcessed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxMessagesProcessed = valueDes;
          break;
        case r'minMessagesProcessed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minMessagesProcessed = valueDes;
          break;
        case r'eventType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EventType),
                  )
                  as EventType;
          result.eventType = valueDes;
          break;
        case r'notEmpty':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notEmpty = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatisticsEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatisticsEventFilterBuilder();
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

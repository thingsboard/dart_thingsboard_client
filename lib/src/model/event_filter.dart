// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/debug_integration_event_filter.dart';
import 'package:thingsboard_client/src/model/life_cycle_event_filter.dart';
import 'package:thingsboard_client/src/model/event_type.dart';
import 'package:thingsboard_client/src/model/error_event_filter.dart';
import 'package:thingsboard_client/src/model/statistics_event_filter.dart';
import 'package:thingsboard_client/src/model/calculated_field_debug_event_filter.dart';
import 'package:thingsboard_client/src/model/rule_chain_debug_event_filter.dart';
import 'package:thingsboard_client/src/model/raw_data_event_filter.dart';
import 'package:thingsboard_client/src/model/debug_converter_event_filter.dart';
import 'package:thingsboard_client/src/model/rule_node_debug_event_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_filter.g.dart';

/// Filter for various event types
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
@BuiltValue(instantiable: false)
abstract class EventFilter {
  /// String value representing the event type
  @BuiltValueField(wireName: r'eventType')
  EventType get eventType;
  // enum eventTypeEnum {  ERROR,  LC_EVENT,  STATS,  RAW_DATA,  DEBUG_RULE_NODE,  DEBUG_RULE_CHAIN,  DEBUG_CONVERTER,  DEBUG_INTEGRATION,  DEBUG_CALCULATED_FIELD,  };

  @BuiltValueField(wireName: r'notEmpty')
  bool? get notEmpty;

  static const String discriminatorFieldName = r'eventType';

  static const Map<String, Type> discriminatorMapping = {
    r'DEBUG_CALCULATED_FIELD': CalculatedFieldDebugEventFilter,
    r'DEBUG_CONVERTER': DebugConverterEventFilter,
    r'DEBUG_INTEGRATION': DebugIntegrationEventFilter,
    r'DEBUG_RULE_CHAIN': RuleChainDebugEventFilter,
    r'DEBUG_RULE_NODE': RuleNodeDebugEventFilter,
    r'ERROR': ErrorEventFilter,
    r'LC_EVENT': LifeCycleEventFilter,
    r'RAW_DATA': RawDataEventFilter,
    r'STATS': StatisticsEventFilter,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<EventFilter> get serializer => _$EventFilterSerializer();
}

extension EventFilterDiscriminatorExt on EventFilter {
  String? get discriminatorValue {
    if (this is CalculatedFieldDebugEventFilter) {
      return r'DEBUG_CALCULATED_FIELD';
    }
    if (this is DebugConverterEventFilter) {
      return r'DEBUG_CONVERTER';
    }
    if (this is DebugIntegrationEventFilter) {
      return r'DEBUG_INTEGRATION';
    }
    if (this is RuleChainDebugEventFilter) {
      return r'DEBUG_RULE_CHAIN';
    }
    if (this is RuleNodeDebugEventFilter) {
      return r'DEBUG_RULE_NODE';
    }
    if (this is ErrorEventFilter) {
      return r'ERROR';
    }
    if (this is LifeCycleEventFilter) {
      return r'LC_EVENT';
    }
    if (this is RawDataEventFilter) {
      return r'RAW_DATA';
    }
    if (this is StatisticsEventFilter) {
      return r'STATS';
    }
    return null;
  }
}

extension EventFilterBuilderDiscriminatorExt on EventFilterBuilder {
  String? get discriminatorValue {
    if (this is CalculatedFieldDebugEventFilterBuilder) {
      return r'DEBUG_CALCULATED_FIELD';
    }
    if (this is DebugConverterEventFilterBuilder) {
      return r'DEBUG_CONVERTER';
    }
    if (this is DebugIntegrationEventFilterBuilder) {
      return r'DEBUG_INTEGRATION';
    }
    if (this is RuleChainDebugEventFilterBuilder) {
      return r'DEBUG_RULE_CHAIN';
    }
    if (this is RuleNodeDebugEventFilterBuilder) {
      return r'DEBUG_RULE_NODE';
    }
    if (this is ErrorEventFilterBuilder) {
      return r'ERROR';
    }
    if (this is LifeCycleEventFilterBuilder) {
      return r'LC_EVENT';
    }
    if (this is RawDataEventFilterBuilder) {
      return r'RAW_DATA';
    }
    if (this is StatisticsEventFilterBuilder) {
      return r'STATS';
    }
    return null;
  }
}

class _$EventFilterSerializer implements PrimitiveSerializer<EventFilter> {
  @override
  final Iterable<Type> types = const [EventFilter];

  @override
  final String wireName = r'EventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    EventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CalculatedFieldDebugEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CalculatedFieldDebugEventFilter),
      )!;
    }
    if (object is DebugConverterEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DebugConverterEventFilter),
      )!;
    }
    if (object is DebugIntegrationEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DebugIntegrationEventFilter),
      )!;
    }
    if (object is RuleChainDebugEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RuleChainDebugEventFilter),
      )!;
    }
    if (object is RuleNodeDebugEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RuleNodeDebugEventFilter),
      )!;
    }
    if (object is ErrorEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ErrorEventFilter),
      )!;
    }
    if (object is LifeCycleEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(LifeCycleEventFilter),
      )!;
    }
    if (object is RawDataEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RawDataEventFilter),
      )!;
    }
    if (object is StatisticsEventFilter) {
      return serializers.serialize(
        object,
        specifiedType: FullType(StatisticsEventFilter),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  EventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(EventFilter.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'DEBUG_CALCULATED_FIELD':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CalculatedFieldDebugEventFilter),
            )
            as CalculatedFieldDebugEventFilter;
      case r'DEBUG_CONVERTER':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DebugConverterEventFilter),
            )
            as DebugConverterEventFilter;
      case r'DEBUG_INTEGRATION':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DebugIntegrationEventFilter),
            )
            as DebugIntegrationEventFilter;
      case r'DEBUG_RULE_CHAIN':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RuleChainDebugEventFilter),
            )
            as RuleChainDebugEventFilter;
      case r'DEBUG_RULE_NODE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RuleNodeDebugEventFilter),
            )
            as RuleNodeDebugEventFilter;
      case r'ERROR':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ErrorEventFilter),
            )
            as ErrorEventFilter;
      case r'LC_EVENT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(LifeCycleEventFilter),
            )
            as LifeCycleEventFilter;
      case r'RAW_DATA':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RawDataEventFilter),
            )
            as RawDataEventFilter;
      case r'STATS':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(StatisticsEventFilter),
            )
            as StatisticsEventFilter;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($EventFilter),
            )
            as $EventFilter;
    }
  }
}

/// a concrete implementation of [EventFilter], since [EventFilter] is not instantiable
@BuiltValue(instantiable: true)
abstract class $EventFilter
    implements EventFilter, Built<$EventFilter, $EventFilterBuilder> {
  $EventFilter._();

  factory $EventFilter([void Function($EventFilterBuilder)? updates]) =
      _$$EventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($EventFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$EventFilter> get serializer => _$$EventFilterSerializer();
}

class _$$EventFilterSerializer implements PrimitiveSerializer<$EventFilter> {
  @override
  final Iterable<Type> types = const [$EventFilter, _$$EventFilter];

  @override
  final String wireName = r'$EventFilter';

  @override
  Object serialize(
    Serializers serializers,
    $EventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(EventFilter))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $EventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $EventFilterBuilder();
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

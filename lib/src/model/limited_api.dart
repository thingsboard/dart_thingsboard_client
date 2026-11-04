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

part 'limited_api.g.dart';

class LimitedApi extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ENTITY_EXPORT')
  static const LimitedApi ENTITY_EXPORT = _$ENTITY_EXPORT;
  @BuiltValueEnumConst(wireName: r'ENTITY_IMPORT')
  static const LimitedApi ENTITY_IMPORT = _$ENTITY_IMPORT;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_REQUESTS')
  static const LimitedApi NOTIFICATION_REQUESTS = _$NOTIFICATION_REQUESTS;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_REQUESTS_PER_RULE')
  static const LimitedApi NOTIFICATION_REQUESTS_PER_RULE = _$NOTIFICATION_REQUESTS_PER_RULE;
  @BuiltValueEnumConst(wireName: r'REST_REQUESTS_PER_TENANT')
  static const LimitedApi REST_REQUESTS_PER_TENANT = _$REST_REQUESTS_PER_TENANT;
  @BuiltValueEnumConst(wireName: r'REST_REQUESTS_PER_CUSTOMER')
  static const LimitedApi REST_REQUESTS_PER_CUSTOMER = _$REST_REQUESTS_PER_CUSTOMER;
  @BuiltValueEnumConst(wireName: r'WS_UPDATES_PER_SESSION')
  static const LimitedApi WS_UPDATES_PER_SESSION = _$WS_UPDATES_PER_SESSION;
  @BuiltValueEnumConst(wireName: r'CASSANDRA_WRITE_QUERIES_CORE')
  static const LimitedApi CASSANDRA_WRITE_QUERIES_CORE = _$CASSANDRA_WRITE_QUERIES_CORE;
  @BuiltValueEnumConst(wireName: r'CASSANDRA_READ_QUERIES_CORE')
  static const LimitedApi CASSANDRA_READ_QUERIES_CORE = _$CASSANDRA_READ_QUERIES_CORE;
  @BuiltValueEnumConst(wireName: r'CASSANDRA_WRITE_QUERIES_RULE_ENGINE')
  static const LimitedApi CASSANDRA_WRITE_QUERIES_RULE_ENGINE = _$CASSANDRA_WRITE_QUERIES_RULE_ENGINE;
  @BuiltValueEnumConst(wireName: r'CASSANDRA_READ_QUERIES_RULE_ENGINE')
  static const LimitedApi CASSANDRA_READ_QUERIES_RULE_ENGINE = _$CASSANDRA_READ_QUERIES_RULE_ENGINE;
  @BuiltValueEnumConst(wireName: r'CASSANDRA_READ_QUERIES_MONOLITH')
  static const LimitedApi CASSANDRA_READ_QUERIES_MONOLITH = _$CASSANDRA_READ_QUERIES_MONOLITH;
  @BuiltValueEnumConst(wireName: r'CASSANDRA_WRITE_QUERIES_MONOLITH')
  static const LimitedApi CASSANDRA_WRITE_QUERIES_MONOLITH = _$CASSANDRA_WRITE_QUERIES_MONOLITH;
  @BuiltValueEnumConst(wireName: r'CASSANDRA_QUERIES')
  static const LimitedApi CASSANDRA_QUERIES = _$CASSANDRA_QUERIES;
  @BuiltValueEnumConst(wireName: r'EDGE_EVENTS')
  static const LimitedApi EDGE_EVENTS = _$EDGE_EVENTS;
  @BuiltValueEnumConst(wireName: r'EDGE_EVENTS_PER_EDGE')
  static const LimitedApi EDGE_EVENTS_PER_EDGE = _$EDGE_EVENTS_PER_EDGE;
  @BuiltValueEnumConst(wireName: r'EDGE_UPLINK_MESSAGES')
  static const LimitedApi EDGE_UPLINK_MESSAGES = _$EDGE_UPLINK_MESSAGES;
  @BuiltValueEnumConst(wireName: r'EDGE_UPLINK_MESSAGES_PER_EDGE')
  static const LimitedApi EDGE_UPLINK_MESSAGES_PER_EDGE = _$EDGE_UPLINK_MESSAGES_PER_EDGE;
  @BuiltValueEnumConst(wireName: r'AGENT_EVENTS')
  static const LimitedApi AGENT_EVENTS = _$AGENT_EVENTS;
  @BuiltValueEnumConst(wireName: r'AGENT_EVENTS_PER_AGENT')
  static const LimitedApi AGENT_EVENTS_PER_AGENT = _$AGENT_EVENTS_PER_AGENT;
  @BuiltValueEnumConst(wireName: r'AGENT_LOG_CHUNKS')
  static const LimitedApi AGENT_LOG_CHUNKS = _$AGENT_LOG_CHUNKS;
  @BuiltValueEnumConst(wireName: r'AGENT_LOG_CHUNKS_PER_AGENT')
  static const LimitedApi AGENT_LOG_CHUNKS_PER_AGENT = _$AGENT_LOG_CHUNKS_PER_AGENT;
  @BuiltValueEnumConst(wireName: r'INTEGRATION_MSGS_PER_TENANT')
  static const LimitedApi INTEGRATION_MSGS_PER_TENANT = _$INTEGRATION_MSGS_PER_TENANT;
  @BuiltValueEnumConst(wireName: r'INTEGRATION_MSGS_PER_DEVICE')
  static const LimitedApi INTEGRATION_MSGS_PER_DEVICE = _$INTEGRATION_MSGS_PER_DEVICE;
  @BuiltValueEnumConst(wireName: r'INTEGRATION_MSGS_PER_ASSET')
  static const LimitedApi INTEGRATION_MSGS_PER_ASSET = _$INTEGRATION_MSGS_PER_ASSET;
  @BuiltValueEnumConst(wireName: r'INTEGRATION_EVENTS')
  static const LimitedApi INTEGRATION_EVENTS = _$INTEGRATION_EVENTS;
  @BuiltValueEnumConst(wireName: r'CONVERTER_EVENTS')
  static const LimitedApi CONVERTER_EVENTS = _$CONVERTER_EVENTS;
  @BuiltValueEnumConst(wireName: r'REPORTS')
  static const LimitedApi REPORTS = _$REPORTS;
  @BuiltValueEnumConst(wireName: r'PASSWORD_RESET')
  static const LimitedApi PASSWORD_RESET = _$PASSWORD_RESET;
  @BuiltValueEnumConst(wireName: r'TWO_FA_VERIFICATION_CODE_SEND')
  static const LimitedApi TWO_FA_VERIFICATION_CODE_SEND = _$TWO_FA_VERIFICATION_CODE_SEND;
  @BuiltValueEnumConst(wireName: r'TWO_FA_VERIFICATION_CODE_CHECK')
  static const LimitedApi TWO_FA_VERIFICATION_CODE_CHECK = _$TWO_FA_VERIFICATION_CODE_CHECK;
  @BuiltValueEnumConst(wireName: r'TRANSPORT_MESSAGES_PER_TENANT')
  static const LimitedApi TRANSPORT_MESSAGES_PER_TENANT = _$TRANSPORT_MESSAGES_PER_TENANT;
  @BuiltValueEnumConst(wireName: r'TRANSPORT_MESSAGES_PER_DEVICE')
  static const LimitedApi TRANSPORT_MESSAGES_PER_DEVICE = _$TRANSPORT_MESSAGES_PER_DEVICE;
  @BuiltValueEnumConst(wireName: r'TRANSPORT_MESSAGES_PER_GATEWAY')
  static const LimitedApi TRANSPORT_MESSAGES_PER_GATEWAY = _$TRANSPORT_MESSAGES_PER_GATEWAY;
  @BuiltValueEnumConst(wireName: r'TRANSPORT_MESSAGES_PER_GATEWAY_DEVICE')
  static const LimitedApi TRANSPORT_MESSAGES_PER_GATEWAY_DEVICE = _$TRANSPORT_MESSAGES_PER_GATEWAY_DEVICE;
  @BuiltValueEnumConst(wireName: r'EMAILS')
  static const LimitedApi EMAILS = _$EMAILS;
  @BuiltValueEnumConst(wireName: r'WS_SUBSCRIPTIONS')
  static const LimitedApi WS_SUBSCRIPTIONS = _$WS_SUBSCRIPTIONS;
  @BuiltValueEnumConst(wireName: r'CALCULATED_FIELD_DEBUG_EVENTS')
  static const LimitedApi CALCULATED_FIELD_DEBUG_EVENTS = _$CALCULATED_FIELD_DEBUG_EVENTS;
  @BuiltValueEnumConst(wireName: r'TRENDZ_PUBLIC_SYNC')
  static const LimitedApi TRENDZ_PUBLIC_SYNC = _$TRENDZ_PUBLIC_SYNC;
  @BuiltValueEnumConst(wireName: r'AI_CHAT_REQUESTS')
  static const LimitedApi AI_CHAT_REQUESTS = _$AI_CHAT_REQUESTS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LimitedApi unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<LimitedApi> get serializer => _$limitedApiSerializer;

  const LimitedApi._(String name): super(name);

  static BuiltSet<LimitedApi> get values => _$values;
  static LimitedApi valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LimitedApiMixin = Object with _$LimitedApiMixin;


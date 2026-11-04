// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'usage_info.g.dart';

/// UsageInfo
///
/// Properties:
/// * [devices] 
/// * [maxDevices] 
/// * [assets] 
/// * [maxAssets] 
/// * [customers] 
/// * [maxCustomers] 
/// * [users] 
/// * [maxUsers] 
/// * [dashboards] 
/// * [maxDashboards] 
/// * [edges] 
/// * [maxEdges] 
/// * [transportMessages] 
/// * [maxTransportMessages] 
/// * [jsExecutions] 
/// * [tbelExecutions] 
/// * [maxJsExecutions] 
/// * [maxTbelExecutions] 
/// * [emails] 
/// * [maxEmails] 
/// * [sms] 
/// * [maxSms] 
/// * [smsEnabled] 
/// * [alarms] 
/// * [maxAlarms] 
/// * [reports] 
/// * [maxReports] 
/// * [aiCredits] 
/// * [maxAiCredits] 
@BuiltValue()
abstract class UsageInfo implements Built<UsageInfo, UsageInfoBuilder> {
  @BuiltValueField(wireName: r'devices')
  int? get devices;

  @BuiltValueField(wireName: r'maxDevices')
  int? get maxDevices;

  @BuiltValueField(wireName: r'assets')
  int? get assets;

  @BuiltValueField(wireName: r'maxAssets')
  int? get maxAssets;

  @BuiltValueField(wireName: r'customers')
  int? get customers;

  @BuiltValueField(wireName: r'maxCustomers')
  int? get maxCustomers;

  @BuiltValueField(wireName: r'users')
  int? get users;

  @BuiltValueField(wireName: r'maxUsers')
  int? get maxUsers;

  @BuiltValueField(wireName: r'dashboards')
  int? get dashboards;

  @BuiltValueField(wireName: r'maxDashboards')
  int? get maxDashboards;

  @BuiltValueField(wireName: r'edges')
  int? get edges;

  @BuiltValueField(wireName: r'maxEdges')
  int? get maxEdges;

  @BuiltValueField(wireName: r'transportMessages')
  int? get transportMessages;

  @BuiltValueField(wireName: r'maxTransportMessages')
  int? get maxTransportMessages;

  @BuiltValueField(wireName: r'jsExecutions')
  int? get jsExecutions;

  @BuiltValueField(wireName: r'tbelExecutions')
  int? get tbelExecutions;

  @BuiltValueField(wireName: r'maxJsExecutions')
  int? get maxJsExecutions;

  @BuiltValueField(wireName: r'maxTbelExecutions')
  int? get maxTbelExecutions;

  @BuiltValueField(wireName: r'emails')
  int? get emails;

  @BuiltValueField(wireName: r'maxEmails')
  int? get maxEmails;

  @BuiltValueField(wireName: r'sms')
  int? get sms;

  @BuiltValueField(wireName: r'maxSms')
  int? get maxSms;

  @BuiltValueField(wireName: r'smsEnabled')
  bool? get smsEnabled;

  @BuiltValueField(wireName: r'alarms')
  int? get alarms;

  @BuiltValueField(wireName: r'maxAlarms')
  int? get maxAlarms;

  @BuiltValueField(wireName: r'reports')
  int? get reports;

  @BuiltValueField(wireName: r'maxReports')
  int? get maxReports;

  @BuiltValueField(wireName: r'aiCredits')
  int? get aiCredits;

  @BuiltValueField(wireName: r'maxAiCredits')
  int? get maxAiCredits;

  UsageInfo._();

  factory UsageInfo([void updates(UsageInfoBuilder b)]) = _$UsageInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsageInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsageInfo> get serializer => _$UsageInfoSerializer();
}

class _$UsageInfoSerializer implements PrimitiveSerializer<UsageInfo> {
  @override
  final Iterable<Type> types = const [UsageInfo, _$UsageInfo];

  @override
  final String wireName = r'UsageInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.devices != null) {
      yield r'devices';
      yield serializers.serialize(
        object.devices,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxDevices != null) {
      yield r'maxDevices';
      yield serializers.serialize(
        object.maxDevices,
        specifiedType: const FullType(int),
      );
    }
    if (object.assets != null) {
      yield r'assets';
      yield serializers.serialize(
        object.assets,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAssets != null) {
      yield r'maxAssets';
      yield serializers.serialize(
        object.maxAssets,
        specifiedType: const FullType(int),
      );
    }
    if (object.customers != null) {
      yield r'customers';
      yield serializers.serialize(
        object.customers,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxCustomers != null) {
      yield r'maxCustomers';
      yield serializers.serialize(
        object.maxCustomers,
        specifiedType: const FullType(int),
      );
    }
    if (object.users != null) {
      yield r'users';
      yield serializers.serialize(
        object.users,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxUsers != null) {
      yield r'maxUsers';
      yield serializers.serialize(
        object.maxUsers,
        specifiedType: const FullType(int),
      );
    }
    if (object.dashboards != null) {
      yield r'dashboards';
      yield serializers.serialize(
        object.dashboards,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxDashboards != null) {
      yield r'maxDashboards';
      yield serializers.serialize(
        object.maxDashboards,
        specifiedType: const FullType(int),
      );
    }
    if (object.edges != null) {
      yield r'edges';
      yield serializers.serialize(
        object.edges,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxEdges != null) {
      yield r'maxEdges';
      yield serializers.serialize(
        object.maxEdges,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportMessages != null) {
      yield r'transportMessages';
      yield serializers.serialize(
        object.transportMessages,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTransportMessages != null) {
      yield r'maxTransportMessages';
      yield serializers.serialize(
        object.maxTransportMessages,
        specifiedType: const FullType(int),
      );
    }
    if (object.jsExecutions != null) {
      yield r'jsExecutions';
      yield serializers.serialize(
        object.jsExecutions,
        specifiedType: const FullType(int),
      );
    }
    if (object.tbelExecutions != null) {
      yield r'tbelExecutions';
      yield serializers.serialize(
        object.tbelExecutions,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxJsExecutions != null) {
      yield r'maxJsExecutions';
      yield serializers.serialize(
        object.maxJsExecutions,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTbelExecutions != null) {
      yield r'maxTbelExecutions';
      yield serializers.serialize(
        object.maxTbelExecutions,
        specifiedType: const FullType(int),
      );
    }
    if (object.emails != null) {
      yield r'emails';
      yield serializers.serialize(
        object.emails,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxEmails != null) {
      yield r'maxEmails';
      yield serializers.serialize(
        object.maxEmails,
        specifiedType: const FullType(int),
      );
    }
    if (object.sms != null) {
      yield r'sms';
      yield serializers.serialize(
        object.sms,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxSms != null) {
      yield r'maxSms';
      yield serializers.serialize(
        object.maxSms,
        specifiedType: const FullType(int),
      );
    }
    if (object.smsEnabled != null) {
      yield r'smsEnabled';
      yield serializers.serialize(
        object.smsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.alarms != null) {
      yield r'alarms';
      yield serializers.serialize(
        object.alarms,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAlarms != null) {
      yield r'maxAlarms';
      yield serializers.serialize(
        object.maxAlarms,
        specifiedType: const FullType(int),
      );
    }
    if (object.reports != null) {
      yield r'reports';
      yield serializers.serialize(
        object.reports,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxReports != null) {
      yield r'maxReports';
      yield serializers.serialize(
        object.maxReports,
        specifiedType: const FullType(int),
      );
    }
    if (object.aiCredits != null) {
      yield r'aiCredits';
      yield serializers.serialize(
        object.aiCredits,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAiCredits != null) {
      yield r'maxAiCredits';
      yield serializers.serialize(
        object.maxAiCredits,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsageInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'devices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.devices = valueDes;
          break;
        case r'maxDevices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDevices = valueDes;
          break;
        case r'assets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.assets = valueDes;
          break;
        case r'maxAssets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAssets = valueDes;
          break;
        case r'customers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.customers = valueDes;
          break;
        case r'maxCustomers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCustomers = valueDes;
          break;
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.users = valueDes;
          break;
        case r'maxUsers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxUsers = valueDes;
          break;
        case r'dashboards':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dashboards = valueDes;
          break;
        case r'maxDashboards':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDashboards = valueDes;
          break;
        case r'edges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.edges = valueDes;
          break;
        case r'maxEdges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxEdges = valueDes;
          break;
        case r'transportMessages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.transportMessages = valueDes;
          break;
        case r'maxTransportMessages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTransportMessages = valueDes;
          break;
        case r'jsExecutions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.jsExecutions = valueDes;
          break;
        case r'tbelExecutions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tbelExecutions = valueDes;
          break;
        case r'maxJsExecutions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxJsExecutions = valueDes;
          break;
        case r'maxTbelExecutions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTbelExecutions = valueDes;
          break;
        case r'emails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.emails = valueDes;
          break;
        case r'maxEmails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxEmails = valueDes;
          break;
        case r'sms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sms = valueDes;
          break;
        case r'maxSms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxSms = valueDes;
          break;
        case r'smsEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.smsEnabled = valueDes;
          break;
        case r'alarms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alarms = valueDes;
          break;
        case r'maxAlarms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAlarms = valueDes;
          break;
        case r'reports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.reports = valueDes;
          break;
        case r'maxReports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxReports = valueDes;
          break;
        case r'aiCredits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.aiCredits = valueDes;
          break;
        case r'maxAiCredits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAiCredits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsageInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsageInfoBuilder();
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



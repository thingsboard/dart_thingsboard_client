// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_report_config.g.dart';

/// DashboardReportConfig
///
/// Properties:
/// * [baseUrl] - Base URL of ThingsBoard UI that should be accessible by Web Report Server.
/// * [dashboardId] - A string value representing the dashboard id.
/// * [state] - Target dashboard state for dashboard report generation.
/// * [timezone] - Timezone in which target dashboard will be presented in dashboard report.
/// * [useDashboardTimewindow] - If set, timewindow configured in the target dashboard will be used during dashboard report generation.
/// * [timewindow] - Specific dashboard timewindow that will be used during dashboard report generation.
/// * [namePattern] - If set, timewindow configured in the target dashboard will be used during dashboard report generation.
/// * [type] - Dashboard report file type, can be PDF | PNG | JPEG.
/// * [useCurrentUserCredentials] - If set, credentials of user created this dashboard report configuration will be used to open dashboard UI during dashboard report generation.
/// * [userId] - A string value representing the user id.
@BuiltValue()
abstract class DashboardReportConfig
    implements Built<DashboardReportConfig, DashboardReportConfigBuilder> {
  /// Base URL of ThingsBoard UI that should be accessible by Web Report Server.
  @BuiltValueField(wireName: r'baseUrl')
  String get baseUrl;

  /// A string value representing the dashboard id.
  @BuiltValueField(wireName: r'dashboardId')
  String get dashboardId;

  /// Target dashboard state for dashboard report generation.
  @BuiltValueField(wireName: r'state')
  String? get state;

  /// Timezone in which target dashboard will be presented in dashboard report.
  @BuiltValueField(wireName: r'timezone')
  String get timezone;

  /// If set, timewindow configured in the target dashboard will be used during dashboard report generation.
  @BuiltValueField(wireName: r'useDashboardTimewindow')
  bool? get useDashboardTimewindow;

  /// Specific dashboard timewindow that will be used during dashboard report generation.
  @BuiltValueField(wireName: r'timewindow')
  JsonObject? get timewindow;

  /// If set, timewindow configured in the target dashboard will be used during dashboard report generation.
  @BuiltValueField(wireName: r'namePattern')
  String? get namePattern;

  /// Dashboard report file type, can be PDF | PNG | JPEG.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// If set, credentials of user created this dashboard report configuration will be used to open dashboard UI during dashboard report generation.
  @BuiltValueField(wireName: r'useCurrentUserCredentials')
  bool? get useCurrentUserCredentials;

  /// A string value representing the user id.
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  DashboardReportConfig._();

  factory DashboardReportConfig([
    void updates(DashboardReportConfigBuilder b),
  ]) = _$DashboardReportConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardReportConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardReportConfig> get serializer =>
      _$DashboardReportConfigSerializer();
}

class _$DashboardReportConfigSerializer
    implements PrimitiveSerializer<DashboardReportConfig> {
  @override
  final Iterable<Type> types = const [
    DashboardReportConfig,
    _$DashboardReportConfig,
  ];

  @override
  final String wireName = r'DashboardReportConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardReportConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'baseUrl';
    yield serializers.serialize(
      object.baseUrl,
      specifiedType: const FullType(String),
    );
    yield r'dashboardId';
    yield serializers.serialize(
      object.dashboardId,
      specifiedType: const FullType(String),
    );
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    yield r'timezone';
    yield serializers.serialize(
      object.timezone,
      specifiedType: const FullType(String),
    );
    if (object.useDashboardTimewindow != null) {
      yield r'useDashboardTimewindow';
      yield serializers.serialize(
        object.useDashboardTimewindow,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timewindow != null) {
      yield r'timewindow';
      yield serializers.serialize(
        object.timewindow,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.namePattern != null) {
      yield r'namePattern';
      yield serializers.serialize(
        object.namePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.useCurrentUserCredentials != null) {
      yield r'useCurrentUserCredentials';
      yield serializers.serialize(
        object.useCurrentUserCredentials,
        specifiedType: const FullType(bool),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardReportConfig object, {
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
    required DashboardReportConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'baseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.baseUrl = valueDes;
          break;
        case r'dashboardId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.dashboardId = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.timezone = valueDes;
          break;
        case r'useDashboardTimewindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useDashboardTimewindow = valueDes;
          break;
        case r'timewindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.timewindow = valueDes;
          break;
        case r'namePattern':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.namePattern = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'useCurrentUserCredentials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useCurrentUserCredentials = valueDes;
          break;
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardReportConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardReportConfigBuilder();
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

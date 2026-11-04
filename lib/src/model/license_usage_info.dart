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

part 'license_usage_info.g.dart';

/// LicenseUsageInfo
///
/// Properties:
/// * [maxDevices]
/// * [maxAssets]
/// * [maxEdges]
/// * [maxAgents]
/// * [whiteLabelingEnabled]
/// * [development]
/// * [plan]
/// * [devicesCount]
/// * [assetsCount]
/// * [edgesCount]
/// * [dashboardsCount]
/// * [integrationsCount]
@BuiltValue()
abstract class LicenseUsageInfo
    implements Built<LicenseUsageInfo, LicenseUsageInfoBuilder> {
  @BuiltValueField(wireName: r'maxDevices')
  int? get maxDevices;

  @BuiltValueField(wireName: r'maxAssets')
  int? get maxAssets;

  @BuiltValueField(wireName: r'maxEdges')
  int? get maxEdges;

  @BuiltValueField(wireName: r'maxAgents')
  int? get maxAgents;

  @BuiltValueField(wireName: r'whiteLabelingEnabled')
  bool? get whiteLabelingEnabled;

  @BuiltValueField(wireName: r'development')
  bool? get development;

  @BuiltValueField(wireName: r'plan')
  String? get plan;

  @BuiltValueField(wireName: r'devicesCount')
  int? get devicesCount;

  @BuiltValueField(wireName: r'assetsCount')
  int? get assetsCount;

  @BuiltValueField(wireName: r'edgesCount')
  int? get edgesCount;

  @BuiltValueField(wireName: r'dashboardsCount')
  int? get dashboardsCount;

  @BuiltValueField(wireName: r'integrationsCount')
  int? get integrationsCount;

  LicenseUsageInfo._();

  factory LicenseUsageInfo([void updates(LicenseUsageInfoBuilder b)]) =
      _$LicenseUsageInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseUsageInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseUsageInfo> get serializer =>
      _$LicenseUsageInfoSerializer();
}

class _$LicenseUsageInfoSerializer
    implements PrimitiveSerializer<LicenseUsageInfo> {
  @override
  final Iterable<Type> types = const [LicenseUsageInfo, _$LicenseUsageInfo];

  @override
  final String wireName = r'LicenseUsageInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseUsageInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxDevices != null) {
      yield r'maxDevices';
      yield serializers.serialize(
        object.maxDevices,
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
    if (object.maxEdges != null) {
      yield r'maxEdges';
      yield serializers.serialize(
        object.maxEdges,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAgents != null) {
      yield r'maxAgents';
      yield serializers.serialize(
        object.maxAgents,
        specifiedType: const FullType(int),
      );
    }
    if (object.whiteLabelingEnabled != null) {
      yield r'whiteLabelingEnabled';
      yield serializers.serialize(
        object.whiteLabelingEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.development != null) {
      yield r'development';
      yield serializers.serialize(
        object.development,
        specifiedType: const FullType(bool),
      );
    }
    if (object.plan != null) {
      yield r'plan';
      yield serializers.serialize(
        object.plan,
        specifiedType: const FullType(String),
      );
    }
    if (object.devicesCount != null) {
      yield r'devicesCount';
      yield serializers.serialize(
        object.devicesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.assetsCount != null) {
      yield r'assetsCount';
      yield serializers.serialize(
        object.assetsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.edgesCount != null) {
      yield r'edgesCount';
      yield serializers.serialize(
        object.edgesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.dashboardsCount != null) {
      yield r'dashboardsCount';
      yield serializers.serialize(
        object.dashboardsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.integrationsCount != null) {
      yield r'integrationsCount';
      yield serializers.serialize(
        object.integrationsCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseUsageInfo object, {
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
    required LicenseUsageInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxDevices':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxDevices = valueDes;
          break;
        case r'maxAssets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxAssets = valueDes;
          break;
        case r'maxEdges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxEdges = valueDes;
          break;
        case r'maxAgents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxAgents = valueDes;
          break;
        case r'whiteLabelingEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.whiteLabelingEnabled = valueDes;
          break;
        case r'development':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.development = valueDes;
          break;
        case r'plan':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.plan = valueDes;
          break;
        case r'devicesCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.devicesCount = valueDes;
          break;
        case r'assetsCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.assetsCount = valueDes;
          break;
        case r'edgesCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.edgesCount = valueDes;
          break;
        case r'dashboardsCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.dashboardsCount = valueDes;
          break;
        case r'integrationsCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.integrationsCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseUsageInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseUsageInfoBuilder();
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

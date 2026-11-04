// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/tenant_profile_configuration.dart';
import 'package:thingsboard_client/src/model/tenant_profile_queue_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_profile_data.g.dart';

/// TenantProfileData
///
/// Properties:
/// * [configuration] - Complex JSON object that contains profile settings: max devices, max assets, rate limits, etc.
/// * [queueConfiguration] - JSON array of queue configuration per tenant profile
@BuiltValue()
abstract class TenantProfileData implements Built<TenantProfileData, TenantProfileDataBuilder> {
  /// Complex JSON object that contains profile settings: max devices, max assets, rate limits, etc.
  @BuiltValueField(wireName: r'configuration')
  TenantProfileConfiguration? get configuration;

  /// JSON array of queue configuration per tenant profile
  @BuiltValueField(wireName: r'queueConfiguration')
  BuiltList<TenantProfileQueueConfiguration>? get queueConfiguration;

  TenantProfileData._();

  factory TenantProfileData([void updates(TenantProfileDataBuilder b)]) = _$TenantProfileData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantProfileDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantProfileData> get serializer => _$TenantProfileDataSerializer();
}

class _$TenantProfileDataSerializer implements PrimitiveSerializer<TenantProfileData> {
  @override
  final Iterable<Type> types = const [TenantProfileData, _$TenantProfileData];

  @override
  final String wireName = r'TenantProfileData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantProfileData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType(TenantProfileConfiguration),
      );
    }
    if (object.queueConfiguration != null) {
      yield r'queueConfiguration';
      yield serializers.serialize(
        object.queueConfiguration,
        specifiedType: const FullType(BuiltList, [FullType(TenantProfileQueueConfiguration)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantProfileData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantProfileDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantProfileConfiguration),
          ) as TenantProfileConfiguration?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'queueConfiguration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TenantProfileQueueConfiguration)]),
          ) as BuiltList<TenantProfileQueueConfiguration>?;
          if (valueDes == null) continue;
          result.queueConfiguration.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantProfileData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantProfileDataBuilder();
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



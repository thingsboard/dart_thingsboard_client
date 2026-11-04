// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/submit_strategy.dart';
import 'package:built_value/json_object.dart';
import 'package:thingsboard_client/src/model/processing_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_profile_queue_configuration.g.dart';

/// TenantProfileQueueConfiguration
///
/// Properties:
/// * [name]
/// * [topic]
/// * [pollInterval]
/// * [partitions]
/// * [consumerPerPartition]
/// * [packProcessingTimeout]
/// * [submitStrategy]
/// * [processingStrategy]
/// * [additionalInfo] - A value representing the any type (object or primitive)
@BuiltValue()
abstract class TenantProfileQueueConfiguration
    implements
        Built<
          TenantProfileQueueConfiguration,
          TenantProfileQueueConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'topic')
  String? get topic;

  @BuiltValueField(wireName: r'pollInterval')
  int? get pollInterval;

  @BuiltValueField(wireName: r'partitions')
  int? get partitions;

  @BuiltValueField(wireName: r'consumerPerPartition')
  bool? get consumerPerPartition;

  @BuiltValueField(wireName: r'packProcessingTimeout')
  int? get packProcessingTimeout;

  @BuiltValueField(wireName: r'submitStrategy')
  SubmitStrategy? get submitStrategy;

  @BuiltValueField(wireName: r'processingStrategy')
  ProcessingStrategy? get processingStrategy;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  TenantProfileQueueConfiguration._();

  factory TenantProfileQueueConfiguration([
    void updates(TenantProfileQueueConfigurationBuilder b),
  ]) = _$TenantProfileQueueConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantProfileQueueConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantProfileQueueConfiguration> get serializer =>
      _$TenantProfileQueueConfigurationSerializer();
}

class _$TenantProfileQueueConfigurationSerializer
    implements PrimitiveSerializer<TenantProfileQueueConfiguration> {
  @override
  final Iterable<Type> types = const [
    TenantProfileQueueConfiguration,
    _$TenantProfileQueueConfiguration,
  ];

  @override
  final String wireName = r'TenantProfileQueueConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantProfileQueueConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.topic != null) {
      yield r'topic';
      yield serializers.serialize(
        object.topic,
        specifiedType: const FullType(String),
      );
    }
    if (object.pollInterval != null) {
      yield r'pollInterval';
      yield serializers.serialize(
        object.pollInterval,
        specifiedType: const FullType(int),
      );
    }
    if (object.partitions != null) {
      yield r'partitions';
      yield serializers.serialize(
        object.partitions,
        specifiedType: const FullType(int),
      );
    }
    if (object.consumerPerPartition != null) {
      yield r'consumerPerPartition';
      yield serializers.serialize(
        object.consumerPerPartition,
        specifiedType: const FullType(bool),
      );
    }
    if (object.packProcessingTimeout != null) {
      yield r'packProcessingTimeout';
      yield serializers.serialize(
        object.packProcessingTimeout,
        specifiedType: const FullType(int),
      );
    }
    if (object.submitStrategy != null) {
      yield r'submitStrategy';
      yield serializers.serialize(
        object.submitStrategy,
        specifiedType: const FullType(SubmitStrategy),
      );
    }
    if (object.processingStrategy != null) {
      yield r'processingStrategy';
      yield serializers.serialize(
        object.processingStrategy,
        specifiedType: const FullType(ProcessingStrategy),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantProfileQueueConfiguration object, {
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
    required TenantProfileQueueConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'topic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.topic = valueDes;
          break;
        case r'pollInterval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.pollInterval = valueDes;
          break;
        case r'partitions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.partitions = valueDes;
          break;
        case r'consumerPerPartition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.consumerPerPartition = valueDes;
          break;
        case r'packProcessingTimeout':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.packProcessingTimeout = valueDes;
          break;
        case r'submitStrategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SubmitStrategy),
                  )
                  as SubmitStrategy?;
          if (valueDes == null) continue;
          result.submitStrategy.replace(valueDes);
          break;
        case r'processingStrategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProcessingStrategy),
                  )
                  as ProcessingStrategy?;
          if (valueDes == null) continue;
          result.processingStrategy.replace(valueDes);
          break;
        case r'additionalInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantProfileQueueConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantProfileQueueConfigurationBuilder();
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

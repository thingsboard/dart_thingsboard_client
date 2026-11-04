// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sms_provider_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_sns_sms_provider_configuration.g.dart';

/// AwsSnsSmsProviderConfiguration
///
/// Properties:
/// * [type]
/// * [accessKeyId] - The AWS SNS Access Key ID.
/// * [secretAccessKey] - The AWS SNS Access Key.
/// * [region] - The AWS region.
@BuiltValue()
abstract class AwsSnsSmsProviderConfiguration
    implements
        SmsProviderConfiguration,
        Built<
          AwsSnsSmsProviderConfiguration,
          AwsSnsSmsProviderConfigurationBuilder
        > {
  /// The AWS SNS Access Key ID.
  @BuiltValueField(wireName: r'accessKeyId')
  String? get accessKeyId;

  /// The AWS SNS Access Key.
  @BuiltValueField(wireName: r'secretAccessKey')
  String? get secretAccessKey;

  /// The AWS region.
  @BuiltValueField(wireName: r'region')
  String? get region;

  AwsSnsSmsProviderConfiguration._();

  factory AwsSnsSmsProviderConfiguration([
    void updates(AwsSnsSmsProviderConfigurationBuilder b),
  ]) = _$AwsSnsSmsProviderConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsSnsSmsProviderConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsSnsSmsProviderConfiguration> get serializer =>
      _$AwsSnsSmsProviderConfigurationSerializer();
}

class _$AwsSnsSmsProviderConfigurationSerializer
    implements PrimitiveSerializer<AwsSnsSmsProviderConfiguration> {
  @override
  final Iterable<Type> types = const [
    AwsSnsSmsProviderConfiguration,
    _$AwsSnsSmsProviderConfiguration,
  ];

  @override
  final String wireName = r'AwsSnsSmsProviderConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsSnsSmsProviderConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessKeyId != null) {
      yield r'accessKeyId';
      yield serializers.serialize(
        object.accessKeyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.secretAccessKey != null) {
      yield r'secretAccessKey';
      yield serializers.serialize(
        object.secretAccessKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwsSnsSmsProviderConfiguration object, {
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
    required AwsSnsSmsProviderConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessKeyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.accessKeyId = valueDes;
          break;
        case r'secretAccessKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.secretAccessKey = valueDes;
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.region = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AwsSnsSmsProviderConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsSnsSmsProviderConfigurationBuilder();
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

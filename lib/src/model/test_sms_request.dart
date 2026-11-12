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

part 'test_sms_request.g.dart';

/// A JSON value representing the Test SMS request.
///
/// Properties:
/// * [providerConfiguration] - The SMS provider configuration
/// * [numberTo] - The phone number or other identifier to specify as a recipient of the SMS.
/// * [message] - The test message
@BuiltValue()
abstract class TestSmsRequest
    implements Built<TestSmsRequest, TestSmsRequestBuilder> {
  /// The SMS provider configuration
  @BuiltValueField(wireName: r'providerConfiguration')
  SmsProviderConfiguration? get providerConfiguration;

  /// The phone number or other identifier to specify as a recipient of the SMS.
  @BuiltValueField(wireName: r'numberTo')
  String? get numberTo;

  /// The test message
  @BuiltValueField(wireName: r'message')
  String? get message;

  TestSmsRequest._();

  factory TestSmsRequest([void updates(TestSmsRequestBuilder b)]) =
      _$TestSmsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestSmsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestSmsRequest> get serializer =>
      _$TestSmsRequestSerializer();
}

class _$TestSmsRequestSerializer
    implements PrimitiveSerializer<TestSmsRequest> {
  @override
  final Iterable<Type> types = const [TestSmsRequest, _$TestSmsRequest];

  @override
  final String wireName = r'TestSmsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestSmsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.providerConfiguration != null) {
      yield r'providerConfiguration';
      yield serializers.serialize(
        object.providerConfiguration,
        specifiedType: const FullType(SmsProviderConfiguration),
      );
    }
    if (object.numberTo != null) {
      yield r'numberTo';
      yield serializers.serialize(
        object.numberTo,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestSmsRequest object, {
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
    required TestSmsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'providerConfiguration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SmsProviderConfiguration,
                    ),
                  )
                  as SmsProviderConfiguration?;
          if (valueDes == null) continue;
          result.providerConfiguration = valueDes;
          break;
        case r'numberTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.numberTo = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestSmsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestSmsRequestBuilder();
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

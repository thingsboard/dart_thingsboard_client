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

part 'o_auth2_client_registration_template_id.g.dart';

/// OAuth2ClientRegistrationTemplateId
///
/// Properties:
/// * [id] - string
@BuiltValue()
abstract class OAuth2ClientRegistrationTemplateId
    implements
        Built<
          OAuth2ClientRegistrationTemplateId,
          OAuth2ClientRegistrationTemplateIdBuilder
        > {
  /// string
  @BuiltValueField(wireName: r'id')
  String get id;

  OAuth2ClientRegistrationTemplateId._();

  factory OAuth2ClientRegistrationTemplateId([
    void updates(OAuth2ClientRegistrationTemplateIdBuilder b),
  ]) = _$OAuth2ClientRegistrationTemplateId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2ClientRegistrationTemplateIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2ClientRegistrationTemplateId> get serializer =>
      _$OAuth2ClientRegistrationTemplateIdSerializer();
}

class _$OAuth2ClientRegistrationTemplateIdSerializer
    implements PrimitiveSerializer<OAuth2ClientRegistrationTemplateId> {
  @override
  final Iterable<Type> types = const [
    OAuth2ClientRegistrationTemplateId,
    _$OAuth2ClientRegistrationTemplateId,
  ];

  @override
  final String wireName = r'OAuth2ClientRegistrationTemplateId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2ClientRegistrationTemplateId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2ClientRegistrationTemplateId object, {
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
    required OAuth2ClientRegistrationTemplateIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2ClientRegistrationTemplateId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2ClientRegistrationTemplateIdBuilder();
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

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

part 'license_key_request.g.dart';

/// LicenseKeyRequest
///
/// Properties:
/// * [secret] 
@BuiltValue()
abstract class LicenseKeyRequest implements Built<LicenseKeyRequest, LicenseKeyRequestBuilder> {
  @BuiltValueField(wireName: r'secret')
  String? get secret;

  LicenseKeyRequest._();

  factory LicenseKeyRequest([void updates(LicenseKeyRequestBuilder b)]) = _$LicenseKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseKeyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseKeyRequest> get serializer => _$LicenseKeyRequestSerializer();
}

class _$LicenseKeyRequestSerializer implements PrimitiveSerializer<LicenseKeyRequest> {
  @override
  final Iterable<Type> types = const [LicenseKeyRequest, _$LicenseKeyRequest];

  @override
  final String wireName = r'LicenseKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.secret != null) {
      yield r'secret';
      yield serializers.serialize(
        object.secret,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LicenseKeyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.secret = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseKeyRequestBuilder();
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



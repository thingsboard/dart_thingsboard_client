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

part 'claim_request.g.dart';

/// Claiming request which can optionally contain secret key
///
/// Properties:
/// * [secretKey] 
@BuiltValue()
abstract class ClaimRequest implements Built<ClaimRequest, ClaimRequestBuilder> {
  @BuiltValueField(wireName: r'secretKey')
  String? get secretKey;

  ClaimRequest._();

  factory ClaimRequest([void updates(ClaimRequestBuilder b)]) = _$ClaimRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimRequest> get serializer => _$ClaimRequestSerializer();
}

class _$ClaimRequestSerializer implements PrimitiveSerializer<ClaimRequest> {
  @override
  final Iterable<Type> types = const [ClaimRequest, _$ClaimRequest];

  @override
  final String wireName = r'ClaimRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.secretKey != null) {
      yield r'secretKey';
      yield serializers.serialize(
        object.secretKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'secretKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.secretKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimRequestBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device.dart';
import 'package:thingsboard_client/src/model/claim_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_result.g.dart';

/// ClaimResult
///
/// Properties:
/// * [device]
/// * [response]
@BuiltValue()
abstract class ClaimResult implements Built<ClaimResult, ClaimResultBuilder> {
  @BuiltValueField(wireName: r'device')
  Device? get device;

  @BuiltValueField(wireName: r'response')
  ClaimResponse? get response;
  // enum responseEnum {  SUCCESS,  FAILURE,  CLAIMED,  };

  ClaimResult._();

  factory ClaimResult([void updates(ClaimResultBuilder b)]) = _$ClaimResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimResult> get serializer => _$ClaimResultSerializer();
}

class _$ClaimResultSerializer implements PrimitiveSerializer<ClaimResult> {
  @override
  final Iterable<Type> types = const [ClaimResult, _$ClaimResult];

  @override
  final String wireName = r'ClaimResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.device != null) {
      yield r'device';
      yield serializers.serialize(
        object.device,
        specifiedType: const FullType(Device),
      );
    }
    if (object.response != null) {
      yield r'response';
      yield serializers.serialize(
        object.response,
        specifiedType: const FullType(ClaimResponse),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimResult object, {
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
    required ClaimResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Device),
                  )
                  as Device?;
          if (valueDes == null) continue;
          result.device.replace(valueDes);
          break;
        case r'response':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ClaimResponse),
                  )
                  as ClaimResponse?;
          if (valueDes == null) continue;
          result.response = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimResultBuilder();
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

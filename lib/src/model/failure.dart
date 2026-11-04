// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tb_chat_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'failure.g.dart';

/// Failure
///
/// Properties:
/// * [status] - Indicates whether the request was successful or not
/// * [errorDetails] - A string containing details about the failure
@BuiltValue()
abstract class Failure implements TbChatResponse, Built<Failure, FailureBuilder> {
  /// A string containing details about the failure
  @BuiltValueField(wireName: r'errorDetails')
  String? get errorDetails;

  Failure._();

  factory Failure([void updates(FailureBuilder b)]) = _$Failure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FailureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Failure> get serializer => _$FailureSerializer();
}

class _$FailureSerializer implements PrimitiveSerializer<Failure> {
  @override
  final Iterable<Type> types = const [Failure, _$Failure];

  @override
  final String wireName = r'Failure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Failure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.errorDetails != null) {
      yield r'errorDetails';
      yield serializers.serialize(
        object.errorDetails,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Failure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FailureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errorDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.errorDetails = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Failure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailureBuilder();
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



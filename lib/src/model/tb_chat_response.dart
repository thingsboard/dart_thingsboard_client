// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/success.dart';
import 'package:thingsboard_client/src/model/failure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_chat_response.g.dart';

/// Response from chat API
///
/// Properties:
/// * [status] - Indicates whether the request was successful or not
@BuiltValue(instantiable: false)
abstract class TbChatResponse {
  /// Indicates whether the request was successful or not
  @BuiltValueField(wireName: r'status')
  String get status;

  static const String discriminatorFieldName = r'status';

  static const Map<String, Type> discriminatorMapping = {
    r'FAILURE': Failure,
    r'SUCCESS': Success,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TbChatResponse> get serializer =>
      _$TbChatResponseSerializer();
}

extension TbChatResponseDiscriminatorExt on TbChatResponse {
  String? get discriminatorValue {
    if (this is Failure) {
      return r'FAILURE';
    }
    if (this is Success) {
      return r'SUCCESS';
    }
    return null;
  }
}

extension TbChatResponseBuilderDiscriminatorExt on TbChatResponseBuilder {
  String? get discriminatorValue {
    if (this is FailureBuilder) {
      return r'FAILURE';
    }
    if (this is SuccessBuilder) {
      return r'SUCCESS';
    }
    return null;
  }
}

class _$TbChatResponseSerializer
    implements PrimitiveSerializer<TbChatResponse> {
  @override
  final Iterable<Type> types = const [TbChatResponse];

  @override
  final String wireName = r'TbChatResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbChatResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TbChatResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is Failure) {
      return serializers.serialize(object, specifiedType: FullType(Failure))!;
    }
    if (object is Success) {
      return serializers.serialize(object, specifiedType: FullType(Success))!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  TbChatResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(TbChatResponse.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'FAILURE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(Failure),
            )
            as Failure;
      case r'SUCCESS':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(Success),
            )
            as Success;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($TbChatResponse),
            )
            as $TbChatResponse;
    }
  }
}

/// a concrete implementation of [TbChatResponse], since [TbChatResponse] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TbChatResponse
    implements TbChatResponse, Built<$TbChatResponse, $TbChatResponseBuilder> {
  $TbChatResponse._();

  factory $TbChatResponse([void Function($TbChatResponseBuilder)? updates]) =
      _$$TbChatResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TbChatResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TbChatResponse> get serializer =>
      _$$TbChatResponseSerializer();
}

class _$$TbChatResponseSerializer
    implements PrimitiveSerializer<$TbChatResponse> {
  @override
  final Iterable<Type> types = const [$TbChatResponse, _$$TbChatResponse];

  @override
  final String wireName = r'$TbChatResponse';

  @override
  Object serialize(
    Serializers serializers,
    $TbChatResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(TbChatResponse),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TbChatResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  $TbChatResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TbChatResponseBuilder();
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

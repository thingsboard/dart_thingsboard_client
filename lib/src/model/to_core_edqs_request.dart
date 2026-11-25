// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/edqs_sync_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'to_core_edqs_request.g.dart';

/// ToCoreEdqsRequest
///
/// Properties:
/// * [syncRequest]
/// * [apiEnabled]
@BuiltValue()
abstract class ToCoreEdqsRequest
    implements Built<ToCoreEdqsRequest, ToCoreEdqsRequestBuilder> {
  @BuiltValueField(wireName: r'syncRequest')
  EdqsSyncRequest? get syncRequest;

  @BuiltValueField(wireName: r'apiEnabled')
  bool? get apiEnabled;

  ToCoreEdqsRequest._();

  factory ToCoreEdqsRequest([void updates(ToCoreEdqsRequestBuilder b)]) =
      _$ToCoreEdqsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ToCoreEdqsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ToCoreEdqsRequest> get serializer =>
      _$ToCoreEdqsRequestSerializer();
}

class _$ToCoreEdqsRequestSerializer
    implements PrimitiveSerializer<ToCoreEdqsRequest> {
  @override
  final Iterable<Type> types = const [ToCoreEdqsRequest, _$ToCoreEdqsRequest];

  @override
  final String wireName = r'ToCoreEdqsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ToCoreEdqsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.syncRequest != null) {
      yield r'syncRequest';
      yield serializers.serialize(
        object.syncRequest,
        specifiedType: const FullType(EdqsSyncRequest),
      );
    }
    if (object.apiEnabled != null) {
      yield r'apiEnabled';
      yield serializers.serialize(
        object.apiEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ToCoreEdqsRequest object, {
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
    required ToCoreEdqsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'syncRequest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdqsSyncRequest),
                  )
                  as EdqsSyncRequest?;
          if (valueDes == null) continue;
          result.syncRequest.replace(valueDes);
          break;
        case r'apiEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.apiEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ToCoreEdqsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ToCoreEdqsRequestBuilder();
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

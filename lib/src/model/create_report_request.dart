// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_report_request.g.dart';

/// CreateReportRequest
///
/// Properties:
/// * [file]
/// * [info]
@BuiltValue()
abstract class CreateReportRequest
    implements Built<CreateReportRequest, CreateReportRequestBuilder> {
  @BuiltValueField(wireName: r'file')
  Uint8List get file;

  @BuiltValueField(wireName: r'info')
  String get info;

  CreateReportRequest._();

  factory CreateReportRequest([void updates(CreateReportRequestBuilder b)]) =
      _$CreateReportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateReportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateReportRequest> get serializer =>
      _$CreateReportRequestSerializer();
}

class _$CreateReportRequestSerializer
    implements PrimitiveSerializer<CreateReportRequest> {
  @override
  final Iterable<Type> types = const [
    CreateReportRequest,
    _$CreateReportRequest,
  ];

  @override
  final String wireName = r'CreateReportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateReportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'file';
    yield serializers.serialize(
      object.file,
      specifiedType: const FullType(Uint8List),
    );
    yield r'info';
    yield serializers.serialize(
      object.info,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateReportRequest object, {
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
    required CreateReportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'file':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Uint8List),
                  )
                  as Uint8List;
          result.file = valueDes;
          break;
        case r'info':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.info = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateReportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReportRequestBuilder();
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

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

part 'system_setup_request.g.dart';

/// SystemSetupRequest
///
/// Properties:
/// * [email]
/// * [password]
/// * [loadDemo]
@BuiltValue()
abstract class SystemSetupRequest
    implements Built<SystemSetupRequest, SystemSetupRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'loadDemo')
  bool? get loadDemo;

  SystemSetupRequest._();

  factory SystemSetupRequest([void updates(SystemSetupRequestBuilder b)]) =
      _$SystemSetupRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemSetupRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemSetupRequest> get serializer =>
      _$SystemSetupRequestSerializer();
}

class _$SystemSetupRequestSerializer
    implements PrimitiveSerializer<SystemSetupRequest> {
  @override
  final Iterable<Type> types = const [SystemSetupRequest, _$SystemSetupRequest];

  @override
  final String wireName = r'SystemSetupRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemSetupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.loadDemo != null) {
      yield r'loadDemo';
      yield serializers.serialize(
        object.loadDemo,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemSetupRequest object, {
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
    required SystemSetupRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.password = valueDes;
          break;
        case r'loadDemo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.loadDemo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemSetupRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemSetupRequestBuilder();
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

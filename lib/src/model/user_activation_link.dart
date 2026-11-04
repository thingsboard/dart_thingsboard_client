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

part 'user_activation_link.g.dart';

/// UserActivationLink
///
/// Properties:
/// * [value] 
/// * [ttlMs] 
@BuiltValue()
abstract class UserActivationLink implements Built<UserActivationLink, UserActivationLinkBuilder> {
  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'ttlMs')
  int? get ttlMs;

  UserActivationLink._();

  factory UserActivationLink([void updates(UserActivationLinkBuilder b)]) = _$UserActivationLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserActivationLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserActivationLink> get serializer => _$UserActivationLinkSerializer();
}

class _$UserActivationLinkSerializer implements PrimitiveSerializer<UserActivationLink> {
  @override
  final Iterable<Type> types = const [UserActivationLink, _$UserActivationLink];

  @override
  final String wireName = r'UserActivationLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserActivationLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.ttlMs != null) {
      yield r'ttlMs';
      yield serializers.serialize(
        object.ttlMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserActivationLink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserActivationLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'ttlMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ttlMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserActivationLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserActivationLinkBuilder();
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



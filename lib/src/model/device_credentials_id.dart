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

part 'device_credentials_id.g.dart';

/// DeviceCredentialsId
///
/// Properties:
/// * [id] - string
@BuiltValue()
abstract class DeviceCredentialsId
    implements Built<DeviceCredentialsId, DeviceCredentialsIdBuilder> {
  /// string
  @BuiltValueField(wireName: r'id')
  String get id;

  DeviceCredentialsId._();

  factory DeviceCredentialsId([void updates(DeviceCredentialsIdBuilder b)]) =
      _$DeviceCredentialsId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceCredentialsIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceCredentialsId> get serializer =>
      _$DeviceCredentialsIdSerializer();
}

class _$DeviceCredentialsIdSerializer
    implements PrimitiveSerializer<DeviceCredentialsId> {
  @override
  final Iterable<Type> types = const [
    DeviceCredentialsId,
    _$DeviceCredentialsId,
  ];

  @override
  final String wireName = r'DeviceCredentialsId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceCredentialsId object, {
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
    DeviceCredentialsId object, {
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
    required DeviceCredentialsIdBuilder result,
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
  DeviceCredentialsId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceCredentialsIdBuilder();
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

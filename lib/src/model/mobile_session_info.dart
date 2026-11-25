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

part 'mobile_session_info.g.dart';

/// MobileSessionInfo
///
/// Properties:
/// * [fcmTokenTimestamp]
@BuiltValue()
abstract class MobileSessionInfo
    implements Built<MobileSessionInfo, MobileSessionInfoBuilder> {
  @BuiltValueField(wireName: r'fcmTokenTimestamp')
  int? get fcmTokenTimestamp;

  MobileSessionInfo._();

  factory MobileSessionInfo([void updates(MobileSessionInfoBuilder b)]) =
      _$MobileSessionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileSessionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileSessionInfo> get serializer =>
      _$MobileSessionInfoSerializer();
}

class _$MobileSessionInfoSerializer
    implements PrimitiveSerializer<MobileSessionInfo> {
  @override
  final Iterable<Type> types = const [MobileSessionInfo, _$MobileSessionInfo];

  @override
  final String wireName = r'MobileSessionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileSessionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fcmTokenTimestamp != null) {
      yield r'fcmTokenTimestamp';
      yield serializers.serialize(
        object.fcmTokenTimestamp,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileSessionInfo object, {
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
    required MobileSessionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fcmTokenTimestamp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fcmTokenTimestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileSessionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileSessionInfoBuilder();
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

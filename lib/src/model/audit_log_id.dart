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

part 'audit_log_id.g.dart';

/// AuditLogId
///
/// Properties:
/// * [id] - string
@BuiltValue()
abstract class AuditLogId implements Built<AuditLogId, AuditLogIdBuilder> {
  /// string
  @BuiltValueField(wireName: r'id')
  String get id;

  AuditLogId._();

  factory AuditLogId([void updates(AuditLogIdBuilder b)]) = _$AuditLogId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuditLogIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuditLogId> get serializer => _$AuditLogIdSerializer();
}

class _$AuditLogIdSerializer implements PrimitiveSerializer<AuditLogId> {
  @override
  final Iterable<Type> types = const [AuditLogId, _$AuditLogId];

  @override
  final String wireName = r'AuditLogId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuditLogId object, {
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
    AuditLogId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuditLogIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AuditLogId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuditLogIdBuilder();
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



// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/lw_m2m_instance.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lw_m2m_object.g.dart';

/// LwM2mObject
///
/// Properties:
/// * [id] - LwM2M Object id.
/// * [keyId] - LwM2M Object key id.
/// * [name] - LwM2M Object name.
/// * [multiple] - LwM2M Object multiple.
/// * [mandatory] - LwM2M Object mandatory.
/// * [instances] - LwM2M Object instances.
@BuiltValue()
abstract class LwM2mObject implements Built<LwM2mObject, LwM2mObjectBuilder> {
  /// LwM2M Object id.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// LwM2M Object key id.
  @BuiltValueField(wireName: r'keyId')
  String? get keyId;

  /// LwM2M Object name.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// LwM2M Object multiple.
  @BuiltValueField(wireName: r'multiple')
  bool? get multiple;

  /// LwM2M Object mandatory.
  @BuiltValueField(wireName: r'mandatory')
  bool? get mandatory;

  /// LwM2M Object instances.
  @BuiltValueField(wireName: r'instances')
  BuiltList<LwM2mInstance>? get instances;

  LwM2mObject._();

  factory LwM2mObject([void updates(LwM2mObjectBuilder b)]) = _$LwM2mObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LwM2mObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LwM2mObject> get serializer => _$LwM2mObjectSerializer();
}

class _$LwM2mObjectSerializer implements PrimitiveSerializer<LwM2mObject> {
  @override
  final Iterable<Type> types = const [LwM2mObject, _$LwM2mObject];

  @override
  final String wireName = r'LwM2mObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LwM2mObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.keyId != null) {
      yield r'keyId';
      yield serializers.serialize(
        object.keyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.multiple != null) {
      yield r'multiple';
      yield serializers.serialize(
        object.multiple,
        specifiedType: const FullType(bool),
      );
    }
    if (object.mandatory != null) {
      yield r'mandatory';
      yield serializers.serialize(
        object.mandatory,
        specifiedType: const FullType(bool),
      );
    }
    if (object.instances != null) {
      yield r'instances';
      yield serializers.serialize(
        object.instances,
        specifiedType: const FullType(BuiltList, [FullType(LwM2mInstance)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LwM2mObject object, {
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
    required LwM2mObjectBuilder result,
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
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'keyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.keyId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'multiple':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.multiple = valueDes;
          break;
        case r'mandatory':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.mandatory = valueDes;
          break;
        case r'instances':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(LwM2mInstance),
                    ]),
                  )
                  as BuiltList<LwM2mInstance>?;
          if (valueDes == null) continue;
          result.instances.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LwM2mObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LwM2mObjectBuilder();
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

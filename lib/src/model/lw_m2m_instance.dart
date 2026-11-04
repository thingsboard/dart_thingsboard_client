// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/lw_m2m_resource_observe.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lw_m2m_instance.g.dart';

/// LwM2mInstance
///
/// Properties:
/// * [id] - LwM2M Instance id.
/// * [resources] - LwM2M Resource observe.
@BuiltValue()
abstract class LwM2mInstance
    implements Built<LwM2mInstance, LwM2mInstanceBuilder> {
  /// LwM2M Instance id.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// LwM2M Resource observe.
  @BuiltValueField(wireName: r'resources')
  BuiltList<LwM2mResourceObserve>? get resources;

  LwM2mInstance._();

  factory LwM2mInstance([void updates(LwM2mInstanceBuilder b)]) =
      _$LwM2mInstance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LwM2mInstanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LwM2mInstance> get serializer =>
      _$LwM2mInstanceSerializer();
}

class _$LwM2mInstanceSerializer implements PrimitiveSerializer<LwM2mInstance> {
  @override
  final Iterable<Type> types = const [LwM2mInstance, _$LwM2mInstance];

  @override
  final String wireName = r'LwM2mInstance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LwM2mInstance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.resources != null) {
      yield r'resources';
      yield serializers.serialize(
        object.resources,
        specifiedType: const FullType(BuiltList, [
          FullType(LwM2mResourceObserve),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LwM2mInstance object, {
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
    required LwM2mInstanceBuilder result,
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
        case r'resources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(LwM2mResourceObserve),
                    ]),
                  )
                  as BuiltList<LwM2mResourceObserve>?;
          if (valueDes == null) continue;
          result.resources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LwM2mInstance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LwM2mInstanceBuilder();
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

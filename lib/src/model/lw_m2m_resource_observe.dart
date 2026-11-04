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

part 'lw_m2m_resource_observe.g.dart';

/// LwM2mResourceObserve
///
/// Properties:
/// * [id] - LwM2M Resource Observe id.
/// * [name] - LwM2M Resource Observe name.
/// * [observe] - LwM2M Resource Observe observe.
/// * [attribute] - LwM2M Resource Observe attribute.
/// * [telemetry] - LwM2M Resource Observe telemetry.
/// * [keyName] - LwM2M Resource Observe key name.
@BuiltValue()
abstract class LwM2mResourceObserve implements Built<LwM2mResourceObserve, LwM2mResourceObserveBuilder> {
  /// LwM2M Resource Observe id.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// LwM2M Resource Observe name.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// LwM2M Resource Observe observe.
  @BuiltValueField(wireName: r'observe')
  bool? get observe;

  /// LwM2M Resource Observe attribute.
  @BuiltValueField(wireName: r'attribute')
  bool? get attribute;

  /// LwM2M Resource Observe telemetry.
  @BuiltValueField(wireName: r'telemetry')
  bool? get telemetry;

  /// LwM2M Resource Observe key name.
  @BuiltValueField(wireName: r'keyName')
  String? get keyName;

  LwM2mResourceObserve._();

  factory LwM2mResourceObserve([void updates(LwM2mResourceObserveBuilder b)]) = _$LwM2mResourceObserve;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LwM2mResourceObserveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LwM2mResourceObserve> get serializer => _$LwM2mResourceObserveSerializer();
}

class _$LwM2mResourceObserveSerializer implements PrimitiveSerializer<LwM2mResourceObserve> {
  @override
  final Iterable<Type> types = const [LwM2mResourceObserve, _$LwM2mResourceObserve];

  @override
  final String wireName = r'LwM2mResourceObserve';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LwM2mResourceObserve object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.observe != null) {
      yield r'observe';
      yield serializers.serialize(
        object.observe,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attribute != null) {
      yield r'attribute';
      yield serializers.serialize(
        object.attribute,
        specifiedType: const FullType(bool),
      );
    }
    if (object.telemetry != null) {
      yield r'telemetry';
      yield serializers.serialize(
        object.telemetry,
        specifiedType: const FullType(bool),
      );
    }
    if (object.keyName != null) {
      yield r'keyName';
      yield serializers.serialize(
        object.keyName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LwM2mResourceObserve object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LwM2mResourceObserveBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'observe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.observe = valueDes;
          break;
        case r'attribute':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.attribute = valueDes;
          break;
        case r'telemetry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.telemetry = valueDes;
          break;
        case r'keyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.keyName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LwM2mResourceObserve deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LwM2mResourceObserveBuilder();
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



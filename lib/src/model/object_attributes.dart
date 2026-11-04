// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/lw_m2m_version.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_attributes.g.dart';

/// ObjectAttributes
///
/// Properties:
/// * [dim] 
/// * [ssid] 
/// * [uri] 
/// * [ver] 
/// * [lwm2m] 
/// * [pmin] 
/// * [pmax] 
/// * [gt] 
/// * [lt] 
/// * [st] 
/// * [epmin] 
/// * [epmax] 
@BuiltValue()
abstract class ObjectAttributes implements Built<ObjectAttributes, ObjectAttributesBuilder> {
  @BuiltValueField(wireName: r'dim')
  int? get dim;

  @BuiltValueField(wireName: r'ssid')
  int? get ssid;

  @BuiltValueField(wireName: r'uri')
  String? get uri;

  @BuiltValueField(wireName: r'ver')
  JsonObject? get ver;

  @BuiltValueField(wireName: r'lwm2m')
  LwM2mVersion? get lwm2m;

  @BuiltValueField(wireName: r'pmin')
  int? get pmin;

  @BuiltValueField(wireName: r'pmax')
  int? get pmax;

  @BuiltValueField(wireName: r'gt')
  double? get gt;

  @BuiltValueField(wireName: r'lt')
  double? get lt;

  @BuiltValueField(wireName: r'st')
  double? get st;

  @BuiltValueField(wireName: r'epmin')
  int? get epmin;

  @BuiltValueField(wireName: r'epmax')
  int? get epmax;

  ObjectAttributes._();

  factory ObjectAttributes([void updates(ObjectAttributesBuilder b)]) = _$ObjectAttributes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectAttributesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectAttributes> get serializer => _$ObjectAttributesSerializer();
}

class _$ObjectAttributesSerializer implements PrimitiveSerializer<ObjectAttributes> {
  @override
  final Iterable<Type> types = const [ObjectAttributes, _$ObjectAttributes];

  @override
  final String wireName = r'ObjectAttributes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectAttributes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dim != null) {
      yield r'dim';
      yield serializers.serialize(
        object.dim,
        specifiedType: const FullType(int),
      );
    }
    if (object.ssid != null) {
      yield r'ssid';
      yield serializers.serialize(
        object.ssid,
        specifiedType: const FullType(int),
      );
    }
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.ver != null) {
      yield r'ver';
      yield serializers.serialize(
        object.ver,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.lwm2m != null) {
      yield r'lwm2m';
      yield serializers.serialize(
        object.lwm2m,
        specifiedType: const FullType(LwM2mVersion),
      );
    }
    if (object.pmin != null) {
      yield r'pmin';
      yield serializers.serialize(
        object.pmin,
        specifiedType: const FullType(int),
      );
    }
    if (object.pmax != null) {
      yield r'pmax';
      yield serializers.serialize(
        object.pmax,
        specifiedType: const FullType(int),
      );
    }
    if (object.gt != null) {
      yield r'gt';
      yield serializers.serialize(
        object.gt,
        specifiedType: const FullType(double),
      );
    }
    if (object.lt != null) {
      yield r'lt';
      yield serializers.serialize(
        object.lt,
        specifiedType: const FullType(double),
      );
    }
    if (object.st != null) {
      yield r'st';
      yield serializers.serialize(
        object.st,
        specifiedType: const FullType(double),
      );
    }
    if (object.epmin != null) {
      yield r'epmin';
      yield serializers.serialize(
        object.epmin,
        specifiedType: const FullType(int),
      );
    }
    if (object.epmax != null) {
      yield r'epmax';
      yield serializers.serialize(
        object.epmax,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectAttributes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ObjectAttributesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dim = valueDes;
          break;
        case r'ssid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ssid = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uri = valueDes;
          break;
        case r'ver':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.ver = valueDes;
          break;
        case r'lwm2m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LwM2mVersion),
          ) as LwM2mVersion?;
          if (valueDes == null) continue;
          result.lwm2m.replace(valueDes);
          break;
        case r'pmin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pmin = valueDes;
          break;
        case r'pmax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pmax = valueDes;
          break;
        case r'gt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.gt = valueDes;
          break;
        case r'lt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.lt = valueDes;
          break;
        case r'st':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.st = valueDes;
          break;
        case r'epmin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.epmin = valueDes;
          break;
        case r'epmax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.epmax = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectAttributes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectAttributesBuilder();
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



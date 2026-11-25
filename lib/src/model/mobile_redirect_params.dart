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

part 'mobile_redirect_params.g.dart';

/// MobileRedirectParams
///
/// Properties:
/// * [scheme] - Mobile application verification settings. Used for callback to mobile application once user is registered.
/// * [host] - Mobile application verification settings. Used for callback to mobile application once user is registered.
@BuiltValue()
abstract class MobileRedirectParams
    implements Built<MobileRedirectParams, MobileRedirectParamsBuilder> {
  /// Mobile application verification settings. Used for callback to mobile application once user is registered.
  @BuiltValueField(wireName: r'scheme')
  String? get scheme;

  /// Mobile application verification settings. Used for callback to mobile application once user is registered.
  @BuiltValueField(wireName: r'host')
  String? get host;

  MobileRedirectParams._();

  factory MobileRedirectParams([void updates(MobileRedirectParamsBuilder b)]) =
      _$MobileRedirectParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileRedirectParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileRedirectParams> get serializer =>
      _$MobileRedirectParamsSerializer();
}

class _$MobileRedirectParamsSerializer
    implements PrimitiveSerializer<MobileRedirectParams> {
  @override
  final Iterable<Type> types = const [
    MobileRedirectParams,
    _$MobileRedirectParams,
  ];

  @override
  final String wireName = r'MobileRedirectParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileRedirectParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.scheme != null) {
      yield r'scheme';
      yield serializers.serialize(
        object.scheme,
        specifiedType: const FullType(String),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileRedirectParams object, {
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
    required MobileRedirectParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scheme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.scheme = valueDes;
          break;
        case r'host':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileRedirectParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileRedirectParamsBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/enterprise_captcha_params.dart';
import 'package:thingsboard_client/src/model/v2_captcha_params.dart';
import 'package:thingsboard_client/src/model/v3_captcha_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'captcha_params.g.dart';

/// CaptchaParams
///
/// Properties:
/// * [version]
@BuiltValue(instantiable: false)
abstract class CaptchaParams {
  @BuiltValueField(wireName: r'version')
  String get version;

  static const String discriminatorFieldName = r'version';

  static const Map<String, Type> discriminatorMapping = {
    r'enterprise': EnterpriseCaptchaParams,
    r'v2': V2CaptchaParams,
    r'v3': V3CaptchaParams,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<CaptchaParams> get serializer =>
      _$CaptchaParamsSerializer();
}

extension CaptchaParamsDiscriminatorExt on CaptchaParams {
  String? get discriminatorValue {
    if (this is EnterpriseCaptchaParams) {
      return r'enterprise';
    }
    if (this is V2CaptchaParams) {
      return r'v2';
    }
    if (this is V3CaptchaParams) {
      return r'v3';
    }
    return null;
  }
}

extension CaptchaParamsBuilderDiscriminatorExt on CaptchaParamsBuilder {
  String? get discriminatorValue {
    if (this is EnterpriseCaptchaParamsBuilder) {
      return r'enterprise';
    }
    if (this is V2CaptchaParamsBuilder) {
      return r'v2';
    }
    if (this is V3CaptchaParamsBuilder) {
      return r'v3';
    }
    return null;
  }
}

class _$CaptchaParamsSerializer implements PrimitiveSerializer<CaptchaParams> {
  @override
  final Iterable<Type> types = const [CaptchaParams];

  @override
  final String wireName = r'CaptchaParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CaptchaParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CaptchaParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is EnterpriseCaptchaParams) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EnterpriseCaptchaParams),
      )!;
    }
    if (object is V2CaptchaParams) {
      return serializers.serialize(
        object,
        specifiedType: FullType(V2CaptchaParams),
      )!;
    }
    if (object is V3CaptchaParams) {
      return serializers.serialize(
        object,
        specifiedType: FullType(V3CaptchaParams),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  CaptchaParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(CaptchaParams.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'enterprise':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EnterpriseCaptchaParams),
            )
            as EnterpriseCaptchaParams;
      case r'v2':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(V2CaptchaParams),
            )
            as V2CaptchaParams;
      case r'v3':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(V3CaptchaParams),
            )
            as V3CaptchaParams;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($CaptchaParams),
            )
            as $CaptchaParams;
    }
  }
}

/// a concrete implementation of [CaptchaParams], since [CaptchaParams] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CaptchaParams
    implements CaptchaParams, Built<$CaptchaParams, $CaptchaParamsBuilder> {
  $CaptchaParams._();

  factory $CaptchaParams([void Function($CaptchaParamsBuilder)? updates]) =
      _$$CaptchaParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CaptchaParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CaptchaParams> get serializer =>
      _$$CaptchaParamsSerializer();
}

class _$$CaptchaParamsSerializer
    implements PrimitiveSerializer<$CaptchaParams> {
  @override
  final Iterable<Type> types = const [$CaptchaParams, _$$CaptchaParams];

  @override
  final String wireName = r'$CaptchaParams';

  @override
  Object serialize(
    Serializers serializers,
    $CaptchaParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(CaptchaParams),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CaptchaParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CaptchaParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CaptchaParamsBuilder();
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

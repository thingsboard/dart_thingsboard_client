// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/license_claim_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_claim_result.g.dart';

/// LicenseClaimResult
///
/// Properties:
/// * [signUpUrl]
/// * [mode]
/// * [claimToken]
@BuiltValue()
abstract class LicenseClaimResult
    implements Built<LicenseClaimResult, LicenseClaimResultBuilder> {
  @BuiltValueField(wireName: r'signUpUrl')
  String? get signUpUrl;

  @BuiltValueField(wireName: r'mode')
  LicenseClaimMode? get mode;
  // enum modeEnum {  ONLINE,  OFFLINE,  };

  @BuiltValueField(wireName: r'claimToken')
  String? get claimToken;

  LicenseClaimResult._();

  factory LicenseClaimResult([void updates(LicenseClaimResultBuilder b)]) =
      _$LicenseClaimResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseClaimResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseClaimResult> get serializer =>
      _$LicenseClaimResultSerializer();
}

class _$LicenseClaimResultSerializer
    implements PrimitiveSerializer<LicenseClaimResult> {
  @override
  final Iterable<Type> types = const [LicenseClaimResult, _$LicenseClaimResult];

  @override
  final String wireName = r'LicenseClaimResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseClaimResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.signUpUrl != null) {
      yield r'signUpUrl';
      yield serializers.serialize(
        object.signUpUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(LicenseClaimMode),
      );
    }
    if (object.claimToken != null) {
      yield r'claimToken';
      yield serializers.serialize(
        object.claimToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseClaimResult object, {
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
    required LicenseClaimResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signUpUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.signUpUrl = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LicenseClaimMode),
                  )
                  as LicenseClaimMode?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'claimToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.claimToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseClaimResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseClaimResultBuilder();
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

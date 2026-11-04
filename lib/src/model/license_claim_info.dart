// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/license_claim_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_claim_info.g.dart';

/// LicenseClaimInfo
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class LicenseClaimInfo implements Built<LicenseClaimInfo, LicenseClaimInfoBuilder> {
  @BuiltValueField(wireName: r'status')
  LicenseClaimStatus? get status;
  // enum statusEnum {  NOT_REQUESTED,  PENDING,  EXPIRED,  ACTIVATED,  };

  LicenseClaimInfo._();

  factory LicenseClaimInfo([void updates(LicenseClaimInfoBuilder b)]) = _$LicenseClaimInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseClaimInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseClaimInfo> get serializer => _$LicenseClaimInfoSerializer();
}

class _$LicenseClaimInfoSerializer implements PrimitiveSerializer<LicenseClaimInfo> {
  @override
  final Iterable<Type> types = const [LicenseClaimInfo, _$LicenseClaimInfo];

  @override
  final String wireName = r'LicenseClaimInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseClaimInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(LicenseClaimStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseClaimInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LicenseClaimInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LicenseClaimStatus),
          ) as LicenseClaimStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseClaimInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseClaimInfoBuilder();
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



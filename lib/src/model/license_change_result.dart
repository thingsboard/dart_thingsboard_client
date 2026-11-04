// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/subscription_info.dart';
import 'package:thingsboard_client/src/model/system_setup_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_change_result.g.dart';

/// LicenseChangeResult
///
/// Properties:
/// * [status] 
/// * [subscription] 
@BuiltValue()
abstract class LicenseChangeResult implements Built<LicenseChangeResult, LicenseChangeResultBuilder> {
  @BuiltValueField(wireName: r'status')
  SystemSetupState? get status;
  // enum statusEnum {  LICENSE_REQUIRED,  ACCOUNT_REQUIRED,  NON_PRODUCTION_CONFIRMATION_REQUIRED,  READY,  };

  @BuiltValueField(wireName: r'subscription')
  SubscriptionInfo? get subscription;

  LicenseChangeResult._();

  factory LicenseChangeResult([void updates(LicenseChangeResultBuilder b)]) = _$LicenseChangeResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseChangeResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseChangeResult> get serializer => _$LicenseChangeResultSerializer();
}

class _$LicenseChangeResultSerializer implements PrimitiveSerializer<LicenseChangeResult> {
  @override
  final Iterable<Type> types = const [LicenseChangeResult, _$LicenseChangeResult];

  @override
  final String wireName = r'LicenseChangeResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseChangeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SystemSetupState),
      );
    }
    if (object.subscription != null) {
      yield r'subscription';
      yield serializers.serialize(
        object.subscription,
        specifiedType: const FullType(SubscriptionInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseChangeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LicenseChangeResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SystemSetupState),
          ) as SystemSetupState?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'subscription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SubscriptionInfo),
          ) as SubscriptionInfo?;
          if (valueDes == null) continue;
          result.subscription.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseChangeResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseChangeResultBuilder();
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



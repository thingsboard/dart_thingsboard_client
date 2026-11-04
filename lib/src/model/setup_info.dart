// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/system_setup_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setup_info.g.dart';

/// SetupInfo
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class SetupInfo implements Built<SetupInfo, SetupInfoBuilder> {
  @BuiltValueField(wireName: r'status')
  SystemSetupState? get status;
  // enum statusEnum {  LICENSE_REQUIRED,  ACCOUNT_REQUIRED,  NON_PRODUCTION_CONFIRMATION_REQUIRED,  READY,  };

  SetupInfo._();

  factory SetupInfo([void updates(SetupInfoBuilder b)]) = _$SetupInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetupInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetupInfo> get serializer => _$SetupInfoSerializer();
}

class _$SetupInfoSerializer implements PrimitiveSerializer<SetupInfo> {
  @override
  final Iterable<Type> types = const [SetupInfo, _$SetupInfo];

  @override
  final String wireName = r'SetupInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetupInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SystemSetupState),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SetupInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetupInfoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetupInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetupInfoBuilder();
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



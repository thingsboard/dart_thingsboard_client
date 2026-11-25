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

part 'store_info.g.dart';

/// StoreInfo
///
/// Properties:
/// * [appId]
/// * [sha256CertFingerprints]
/// * [storeLink]
@BuiltValue()
abstract class StoreInfo implements Built<StoreInfo, StoreInfoBuilder> {
  @BuiltValueField(wireName: r'appId')
  String? get appId;

  @BuiltValueField(wireName: r'sha256CertFingerprints')
  String? get sha256CertFingerprints;

  @BuiltValueField(wireName: r'storeLink')
  String? get storeLink;

  StoreInfo._();

  factory StoreInfo([void updates(StoreInfoBuilder b)]) = _$StoreInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StoreInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StoreInfo> get serializer => _$StoreInfoSerializer();
}

class _$StoreInfoSerializer implements PrimitiveSerializer<StoreInfo> {
  @override
  final Iterable<Type> types = const [StoreInfo, _$StoreInfo];

  @override
  final String wireName = r'StoreInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StoreInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.appId != null) {
      yield r'appId';
      yield serializers.serialize(
        object.appId,
        specifiedType: const FullType(String),
      );
    }
    if (object.sha256CertFingerprints != null) {
      yield r'sha256CertFingerprints';
      yield serializers.serialize(
        object.sha256CertFingerprints,
        specifiedType: const FullType(String),
      );
    }
    if (object.storeLink != null) {
      yield r'storeLink';
      yield serializers.serialize(
        object.storeLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StoreInfo object, {
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
    required StoreInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'appId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.appId = valueDes;
          break;
        case r'sha256CertFingerprints':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sha256CertFingerprints = valueDes;
          break;
        case r'storeLink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.storeLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StoreInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoreInfoBuilder();
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

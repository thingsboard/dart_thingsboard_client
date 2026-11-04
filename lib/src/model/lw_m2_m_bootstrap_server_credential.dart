// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/psklw_m2_m_bootstrap_server_credential.dart';
import 'package:thingsboard_client/src/model/rpklw_m2_m_bootstrap_server_credential.dart';
import 'package:thingsboard_client/src/model/x509_lw_m2_m_bootstrap_server_credential.dart';
import 'package:thingsboard_client/src/model/no_sec_lw_m2_m_bootstrap_server_credential.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lw_m2_m_bootstrap_server_credential.g.dart';

/// LwM2MBootstrapServerCredential
///
/// Properties:
/// * [securityMode]
@BuiltValue(instantiable: false)
abstract class LwM2MBootstrapServerCredential {
  @BuiltValueField(wireName: r'securityMode')
  String get securityMode;

  static const String discriminatorFieldName = r'securityMode';

  static const Map<String, Type> discriminatorMapping = {
    r'NO_SEC': NoSecLwM2MBootstrapServerCredential,
    r'PSK': PSKLwM2MBootstrapServerCredential,
    r'RPK': RPKLwM2MBootstrapServerCredential,
    r'X509': X509LwM2MBootstrapServerCredential,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<LwM2MBootstrapServerCredential> get serializer =>
      _$LwM2MBootstrapServerCredentialSerializer();
}

extension LwM2MBootstrapServerCredentialDiscriminatorExt
    on LwM2MBootstrapServerCredential {
  String? get discriminatorValue {
    if (this is NoSecLwM2MBootstrapServerCredential) {
      return r'NO_SEC';
    }
    if (this is PSKLwM2MBootstrapServerCredential) {
      return r'PSK';
    }
    if (this is RPKLwM2MBootstrapServerCredential) {
      return r'RPK';
    }
    if (this is X509LwM2MBootstrapServerCredential) {
      return r'X509';
    }
    return null;
  }
}

extension LwM2MBootstrapServerCredentialBuilderDiscriminatorExt
    on LwM2MBootstrapServerCredentialBuilder {
  String? get discriminatorValue {
    if (this is NoSecLwM2MBootstrapServerCredentialBuilder) {
      return r'NO_SEC';
    }
    if (this is PSKLwM2MBootstrapServerCredentialBuilder) {
      return r'PSK';
    }
    if (this is RPKLwM2MBootstrapServerCredentialBuilder) {
      return r'RPK';
    }
    if (this is X509LwM2MBootstrapServerCredentialBuilder) {
      return r'X509';
    }
    return null;
  }
}

class _$LwM2MBootstrapServerCredentialSerializer
    implements PrimitiveSerializer<LwM2MBootstrapServerCredential> {
  @override
  final Iterable<Type> types = const [LwM2MBootstrapServerCredential];

  @override
  final String wireName = r'LwM2MBootstrapServerCredential';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LwM2MBootstrapServerCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'securityMode';
    yield serializers.serialize(
      object.securityMode,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LwM2MBootstrapServerCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is NoSecLwM2MBootstrapServerCredential) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NoSecLwM2MBootstrapServerCredential),
      )!;
    }
    if (object is PSKLwM2MBootstrapServerCredential) {
      return serializers.serialize(
        object,
        specifiedType: FullType(PSKLwM2MBootstrapServerCredential),
      )!;
    }
    if (object is RPKLwM2MBootstrapServerCredential) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RPKLwM2MBootstrapServerCredential),
      )!;
    }
    if (object is X509LwM2MBootstrapServerCredential) {
      return serializers.serialize(
        object,
        specifiedType: FullType(X509LwM2MBootstrapServerCredential),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  LwM2MBootstrapServerCredential deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          LwM2MBootstrapServerCredential.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'NO_SEC':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NoSecLwM2MBootstrapServerCredential),
            )
            as NoSecLwM2MBootstrapServerCredential;
      case r'PSK':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(PSKLwM2MBootstrapServerCredential),
            )
            as PSKLwM2MBootstrapServerCredential;
      case r'RPK':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RPKLwM2MBootstrapServerCredential),
            )
            as RPKLwM2MBootstrapServerCredential;
      case r'X509':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(X509LwM2MBootstrapServerCredential),
            )
            as X509LwM2MBootstrapServerCredential;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($LwM2MBootstrapServerCredential),
            )
            as $LwM2MBootstrapServerCredential;
    }
  }
}

/// a concrete implementation of [LwM2MBootstrapServerCredential], since [LwM2MBootstrapServerCredential] is not instantiable
@BuiltValue(instantiable: true)
abstract class $LwM2MBootstrapServerCredential
    implements
        LwM2MBootstrapServerCredential,
        Built<
          $LwM2MBootstrapServerCredential,
          $LwM2MBootstrapServerCredentialBuilder
        > {
  $LwM2MBootstrapServerCredential._();

  factory $LwM2MBootstrapServerCredential([
    void Function($LwM2MBootstrapServerCredentialBuilder)? updates,
  ]) = _$$LwM2MBootstrapServerCredential;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($LwM2MBootstrapServerCredentialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$LwM2MBootstrapServerCredential> get serializer =>
      _$$LwM2MBootstrapServerCredentialSerializer();
}

class _$$LwM2MBootstrapServerCredentialSerializer
    implements PrimitiveSerializer<$LwM2MBootstrapServerCredential> {
  @override
  final Iterable<Type> types = const [
    $LwM2MBootstrapServerCredential,
    _$$LwM2MBootstrapServerCredential,
  ];

  @override
  final String wireName = r'$LwM2MBootstrapServerCredential';

  @override
  Object serialize(
    Serializers serializers,
    $LwM2MBootstrapServerCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(LwM2MBootstrapServerCredential),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LwM2MBootstrapServerCredentialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'securityMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.securityMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $LwM2MBootstrapServerCredential deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $LwM2MBootstrapServerCredentialBuilder();
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

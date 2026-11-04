// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/o_auth2_client_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/platform_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth2_client_info.g.dart';

/// OAuth2ClientInfo
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [title] - Oauth2 client registration title (e.g. My google)
/// * [providerName] - Oauth2 client provider name (e.g. Google)
/// * [platforms] - List of platforms for which usage of the OAuth2 client is allowed (empty for all allowed)
/// * [name]
@BuiltValue()
abstract class OAuth2ClientInfo
    implements Built<OAuth2ClientInfo, OAuth2ClientInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  OAuth2ClientId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Oauth2 client registration title (e.g. My google)
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Oauth2 client provider name (e.g. Google)
  @BuiltValueField(wireName: r'providerName')
  String? get providerName;

  /// List of platforms for which usage of the OAuth2 client is allowed (empty for all allowed)
  @BuiltValueField(wireName: r'platforms')
  BuiltList<PlatformType>? get platforms;

  @BuiltValueField(wireName: r'name')
  String? get name;

  OAuth2ClientInfo._();

  factory OAuth2ClientInfo([void updates(OAuth2ClientInfoBuilder b)]) =
      _$OAuth2ClientInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2ClientInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2ClientInfo> get serializer =>
      _$OAuth2ClientInfoSerializer();
}

class _$OAuth2ClientInfoSerializer
    implements PrimitiveSerializer<OAuth2ClientInfo> {
  @override
  final Iterable<Type> types = const [OAuth2ClientInfo, _$OAuth2ClientInfo];

  @override
  final String wireName = r'OAuth2ClientInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2ClientInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(OAuth2ClientId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.providerName != null) {
      yield r'providerName';
      yield serializers.serialize(
        object.providerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltList, [FullType(PlatformType)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2ClientInfo object, {
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
    required OAuth2ClientInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(OAuth2ClientId),
                  )
                  as OAuth2ClientId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'providerName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.providerName = valueDes;
          break;
        case r'platforms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(PlatformType),
                    ]),
                  )
                  as BuiltList<PlatformType>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2ClientInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2ClientInfoBuilder();
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

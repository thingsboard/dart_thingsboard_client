// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/repository_auth_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_settings.g.dart';

/// A JSON value representing the Repository Settings.
///
/// Properties:
/// * [repositoryUri]
/// * [authMethod]
/// * [username]
/// * [password]
/// * [privateKeyFileName]
/// * [privateKey]
/// * [privateKeyPassword]
/// * [defaultBranch]
/// * [readOnly]
/// * [showMergeCommits]
/// * [localOnly]
@BuiltValue()
abstract class RepositorySettings
    implements Built<RepositorySettings, RepositorySettingsBuilder> {
  @BuiltValueField(wireName: r'repositoryUri')
  String? get repositoryUri;

  @BuiltValueField(wireName: r'authMethod')
  RepositoryAuthMethod? get authMethod;
  // enum authMethodEnum {  USERNAME_PASSWORD,  PRIVATE_KEY,  };

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'privateKeyFileName')
  String? get privateKeyFileName;

  @BuiltValueField(wireName: r'privateKey')
  String? get privateKey;

  @BuiltValueField(wireName: r'privateKeyPassword')
  String? get privateKeyPassword;

  @BuiltValueField(wireName: r'defaultBranch')
  String? get defaultBranch;

  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'showMergeCommits')
  bool? get showMergeCommits;

  @BuiltValueField(wireName: r'localOnly')
  bool? get localOnly;

  RepositorySettings._();

  factory RepositorySettings([void updates(RepositorySettingsBuilder b)]) =
      _$RepositorySettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RepositorySettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RepositorySettings> get serializer =>
      _$RepositorySettingsSerializer();
}

class _$RepositorySettingsSerializer
    implements PrimitiveSerializer<RepositorySettings> {
  @override
  final Iterable<Type> types = const [RepositorySettings, _$RepositorySettings];

  @override
  final String wireName = r'RepositorySettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RepositorySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.repositoryUri != null) {
      yield r'repositoryUri';
      yield serializers.serialize(
        object.repositoryUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.authMethod != null) {
      yield r'authMethod';
      yield serializers.serialize(
        object.authMethod,
        specifiedType: const FullType(RepositoryAuthMethod),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.privateKeyFileName != null) {
      yield r'privateKeyFileName';
      yield serializers.serialize(
        object.privateKeyFileName,
        specifiedType: const FullType(String),
      );
    }
    if (object.privateKey != null) {
      yield r'privateKey';
      yield serializers.serialize(
        object.privateKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.privateKeyPassword != null) {
      yield r'privateKeyPassword';
      yield serializers.serialize(
        object.privateKeyPassword,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultBranch != null) {
      yield r'defaultBranch';
      yield serializers.serialize(
        object.defaultBranch,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showMergeCommits != null) {
      yield r'showMergeCommits';
      yield serializers.serialize(
        object.showMergeCommits,
        specifiedType: const FullType(bool),
      );
    }
    if (object.localOnly != null) {
      yield r'localOnly';
      yield serializers.serialize(
        object.localOnly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RepositorySettings object, {
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
    required RepositorySettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'repositoryUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.repositoryUri = valueDes;
          break;
        case r'authMethod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RepositoryAuthMethod,
                    ),
                  )
                  as RepositoryAuthMethod?;
          if (valueDes == null) continue;
          result.authMethod = valueDes;
          break;
        case r'username':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'privateKeyFileName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.privateKeyFileName = valueDes;
          break;
        case r'privateKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.privateKey = valueDes;
          break;
        case r'privateKeyPassword':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.privateKeyPassword = valueDes;
          break;
        case r'defaultBranch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultBranch = valueDes;
          break;
        case r'readOnly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.readOnly = valueDes;
          break;
        case r'showMergeCommits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showMergeCommits = valueDes;
          break;
        case r'localOnly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.localOnly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RepositorySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RepositorySettingsBuilder();
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

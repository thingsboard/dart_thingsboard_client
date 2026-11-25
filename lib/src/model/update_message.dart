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

part 'update_message.g.dart';

/// UpdateMessage
///
/// Properties:
/// * [updateAvailable] - 'True' if new platform update is available.
/// * [currentVersion] - Current ThingsBoard version.
/// * [latestVersion] - Latest ThingsBoard version.
/// * [upgradeInstructionsUrl] - Upgrade instructions URL.
/// * [currentVersionReleaseNotesUrl] - Current ThingsBoard version release notes URL.
/// * [latestVersionReleaseNotesUrl] - Latest ThingsBoard version release notes URL.
@BuiltValue()
abstract class UpdateMessage
    implements Built<UpdateMessage, UpdateMessageBuilder> {
  /// 'True' if new platform update is available.
  @BuiltValueField(wireName: r'updateAvailable')
  bool? get updateAvailable;

  /// Current ThingsBoard version.
  @BuiltValueField(wireName: r'currentVersion')
  String? get currentVersion;

  /// Latest ThingsBoard version.
  @BuiltValueField(wireName: r'latestVersion')
  String? get latestVersion;

  /// Upgrade instructions URL.
  @BuiltValueField(wireName: r'upgradeInstructionsUrl')
  String? get upgradeInstructionsUrl;

  /// Current ThingsBoard version release notes URL.
  @BuiltValueField(wireName: r'currentVersionReleaseNotesUrl')
  String? get currentVersionReleaseNotesUrl;

  /// Latest ThingsBoard version release notes URL.
  @BuiltValueField(wireName: r'latestVersionReleaseNotesUrl')
  String? get latestVersionReleaseNotesUrl;

  UpdateMessage._();

  factory UpdateMessage([void updates(UpdateMessageBuilder b)]) =
      _$UpdateMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMessage> get serializer =>
      _$UpdateMessageSerializer();
}

class _$UpdateMessageSerializer implements PrimitiveSerializer<UpdateMessage> {
  @override
  final Iterable<Type> types = const [UpdateMessage, _$UpdateMessage];

  @override
  final String wireName = r'UpdateMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.updateAvailable != null) {
      yield r'updateAvailable';
      yield serializers.serialize(
        object.updateAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.currentVersion != null) {
      yield r'currentVersion';
      yield serializers.serialize(
        object.currentVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.latestVersion != null) {
      yield r'latestVersion';
      yield serializers.serialize(
        object.latestVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.upgradeInstructionsUrl != null) {
      yield r'upgradeInstructionsUrl';
      yield serializers.serialize(
        object.upgradeInstructionsUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.currentVersionReleaseNotesUrl != null) {
      yield r'currentVersionReleaseNotesUrl';
      yield serializers.serialize(
        object.currentVersionReleaseNotesUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.latestVersionReleaseNotesUrl != null) {
      yield r'latestVersionReleaseNotesUrl';
      yield serializers.serialize(
        object.latestVersionReleaseNotesUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateMessage object, {
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
    required UpdateMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'updateAvailable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.updateAvailable = valueDes;
          break;
        case r'currentVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.currentVersion = valueDes;
          break;
        case r'latestVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestVersion = valueDes;
          break;
        case r'upgradeInstructionsUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.upgradeInstructionsUrl = valueDes;
          break;
        case r'currentVersionReleaseNotesUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.currentVersionReleaseNotesUrl = valueDes;
          break;
        case r'latestVersionReleaseNotesUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestVersionReleaseNotesUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMessageBuilder();
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

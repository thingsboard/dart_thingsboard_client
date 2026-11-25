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

part 'mobile_app_version_info.g.dart';

/// MobileAppVersionInfo
///
/// Properties:
/// * [minVersion] - Minimum supported version
/// * [minVersionReleaseNotes] - Release notes of minimum supported version
/// * [latestVersion] - Latest supported version
/// * [latestVersionReleaseNotes] - Release notes of latest supported version
@BuiltValue()
abstract class MobileAppVersionInfo
    implements Built<MobileAppVersionInfo, MobileAppVersionInfoBuilder> {
  /// Minimum supported version
  @BuiltValueField(wireName: r'minVersion')
  String? get minVersion;

  /// Release notes of minimum supported version
  @BuiltValueField(wireName: r'minVersionReleaseNotes')
  String? get minVersionReleaseNotes;

  /// Latest supported version
  @BuiltValueField(wireName: r'latestVersion')
  String? get latestVersion;

  /// Release notes of latest supported version
  @BuiltValueField(wireName: r'latestVersionReleaseNotes')
  String? get latestVersionReleaseNotes;

  MobileAppVersionInfo._();

  factory MobileAppVersionInfo([void updates(MobileAppVersionInfoBuilder b)]) =
      _$MobileAppVersionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileAppVersionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileAppVersionInfo> get serializer =>
      _$MobileAppVersionInfoSerializer();
}

class _$MobileAppVersionInfoSerializer
    implements PrimitiveSerializer<MobileAppVersionInfo> {
  @override
  final Iterable<Type> types = const [
    MobileAppVersionInfo,
    _$MobileAppVersionInfo,
  ];

  @override
  final String wireName = r'MobileAppVersionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileAppVersionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minVersion != null) {
      yield r'minVersion';
      yield serializers.serialize(
        object.minVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.minVersionReleaseNotes != null) {
      yield r'minVersionReleaseNotes';
      yield serializers.serialize(
        object.minVersionReleaseNotes,
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
    if (object.latestVersionReleaseNotes != null) {
      yield r'latestVersionReleaseNotes';
      yield serializers.serialize(
        object.latestVersionReleaseNotes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileAppVersionInfo object, {
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
    required MobileAppVersionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.minVersion = valueDes;
          break;
        case r'minVersionReleaseNotes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.minVersionReleaseNotes = valueDes;
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
        case r'latestVersionReleaseNotes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestVersionReleaseNotes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileAppVersionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileAppVersionInfoBuilder();
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

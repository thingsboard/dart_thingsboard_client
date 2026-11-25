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

part 'system_version_info.g.dart';

/// Version and edition of the platform build
///
/// Properties:
/// * [version] - Platform version, or 'unknown' when the build information is not available
/// * [artifact] - Build artifact; absent when the build information is not available
/// * [name] - Build name; absent when the build information is not available
/// * [type] - Platform edition
@BuiltValue()
abstract class SystemVersionInfo
    implements Built<SystemVersionInfo, SystemVersionInfoBuilder> {
  /// Platform version, or 'unknown' when the build information is not available
  @BuiltValueField(wireName: r'version')
  String get version;

  /// Build artifact; absent when the build information is not available
  @BuiltValueField(wireName: r'artifact')
  String? get artifact;

  /// Build name; absent when the build information is not available
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Platform edition
  @BuiltValueField(wireName: r'type')
  String get type;

  SystemVersionInfo._();

  factory SystemVersionInfo([void updates(SystemVersionInfoBuilder b)]) =
      _$SystemVersionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemVersionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemVersionInfo> get serializer =>
      _$SystemVersionInfoSerializer();
}

class _$SystemVersionInfoSerializer
    implements PrimitiveSerializer<SystemVersionInfo> {
  @override
  final Iterable<Type> types = const [SystemVersionInfo, _$SystemVersionInfo];

  @override
  final String wireName = r'SystemVersionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemVersionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    if (object.artifact != null) {
      yield r'artifact';
      yield serializers.serialize(
        object.artifact,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemVersionInfo object, {
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
    required SystemVersionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'artifact':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.artifact = valueDes;
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemVersionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemVersionInfoBuilder();
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

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

part 'entity_export_settings.g.dart';

/// EntityExportSettings
///
/// Properties:
/// * [exportRelations]
/// * [exportAttributes]
/// * [exportCredentials]
/// * [exportCalculatedFields]
/// * [exportPermissions]
/// * [exportGroupEntities]
/// * [embedGroupMembers]
@BuiltValue()
abstract class EntityExportSettings
    implements Built<EntityExportSettings, EntityExportSettingsBuilder> {
  @BuiltValueField(wireName: r'exportRelations')
  bool? get exportRelations;

  @BuiltValueField(wireName: r'exportAttributes')
  bool? get exportAttributes;

  @BuiltValueField(wireName: r'exportCredentials')
  bool? get exportCredentials;

  @BuiltValueField(wireName: r'exportCalculatedFields')
  bool? get exportCalculatedFields;

  @BuiltValueField(wireName: r'exportPermissions')
  bool? get exportPermissions;

  @BuiltValueField(wireName: r'exportGroupEntities')
  bool? get exportGroupEntities;

  @BuiltValueField(wireName: r'embedGroupMembers')
  bool? get embedGroupMembers;

  EntityExportSettings._();

  factory EntityExportSettings([void updates(EntityExportSettingsBuilder b)]) =
      _$EntityExportSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityExportSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityExportSettings> get serializer =>
      _$EntityExportSettingsSerializer();
}

class _$EntityExportSettingsSerializer
    implements PrimitiveSerializer<EntityExportSettings> {
  @override
  final Iterable<Type> types = const [
    EntityExportSettings,
    _$EntityExportSettings,
  ];

  @override
  final String wireName = r'EntityExportSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityExportSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exportRelations != null) {
      yield r'exportRelations';
      yield serializers.serialize(
        object.exportRelations,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exportAttributes != null) {
      yield r'exportAttributes';
      yield serializers.serialize(
        object.exportAttributes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exportCredentials != null) {
      yield r'exportCredentials';
      yield serializers.serialize(
        object.exportCredentials,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exportCalculatedFields != null) {
      yield r'exportCalculatedFields';
      yield serializers.serialize(
        object.exportCalculatedFields,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exportPermissions != null) {
      yield r'exportPermissions';
      yield serializers.serialize(
        object.exportPermissions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exportGroupEntities != null) {
      yield r'exportGroupEntities';
      yield serializers.serialize(
        object.exportGroupEntities,
        specifiedType: const FullType(bool),
      );
    }
    if (object.embedGroupMembers != null) {
      yield r'embedGroupMembers';
      yield serializers.serialize(
        object.embedGroupMembers,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityExportSettings object, {
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
    required EntityExportSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exportRelations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exportRelations = valueDes;
          break;
        case r'exportAttributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exportAttributes = valueDes;
          break;
        case r'exportCredentials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exportCredentials = valueDes;
          break;
        case r'exportCalculatedFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exportCalculatedFields = valueDes;
          break;
        case r'exportPermissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exportPermissions = valueDes;
          break;
        case r'exportGroupEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exportGroupEntities = valueDes;
          break;
        case r'embedGroupMembers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.embedGroupMembers = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityExportSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityExportSettingsBuilder();
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

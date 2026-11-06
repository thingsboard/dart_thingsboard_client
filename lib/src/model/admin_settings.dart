// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/admin_settings_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_settings.g.dart';

/// A JSON value representing the Mail Settings.
///
/// Properties:
/// * [id] - The Id of the Administration Settings, auto-generated, UUID
/// * [createdTime] - Timestamp of the settings creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id.
/// * [key] - The Administration Settings key, (e.g. 'general' or 'mail')
/// * [jsonValue] - JSON representation of the Administration Settings value
@BuiltValue()
abstract class AdminSettings
    implements Built<AdminSettings, AdminSettingsBuilder> {
  /// The Id of the Administration Settings, auto-generated, UUID
  @BuiltValueField(wireName: r'id')
  AdminSettingsId? get id;

  /// Timestamp of the settings creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// The Administration Settings key, (e.g. 'general' or 'mail')
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// JSON representation of the Administration Settings value
  @BuiltValueField(wireName: r'jsonValue')
  JsonObject? get jsonValue;

  AdminSettings._();

  factory AdminSettings([void updates(AdminSettingsBuilder b)]) =
      _$AdminSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminSettings> get serializer =>
      _$AdminSettingsSerializer();
}

class _$AdminSettingsSerializer implements PrimitiveSerializer<AdminSettings> {
  @override
  final Iterable<Type> types = const [AdminSettings, _$AdminSettings];

  @override
  final String wireName = r'AdminSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AdminSettingsId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.jsonValue != null) {
      yield r'jsonValue';
      yield serializers.serialize(
        object.jsonValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminSettings object, {
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
    required AdminSettingsBuilder result,
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
                    specifiedType: const FullType.nullable(AdminSettingsId),
                  )
                  as AdminSettingsId?;
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
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'jsonValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.jsonValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminSettingsBuilder();
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

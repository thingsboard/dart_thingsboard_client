// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/users_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_administrators_filter.g.dart';

/// TenantAdministratorsFilter
///
/// Properties:
/// * [type]
/// * [tenantsIds]
/// * [tenantProfilesIds]
@BuiltValue()
abstract class TenantAdministratorsFilter
    implements
        UsersFilter,
        Built<TenantAdministratorsFilter, TenantAdministratorsFilterBuilder> {
  @BuiltValueField(wireName: r'tenantProfilesIds')
  BuiltSet<String>? get tenantProfilesIds;

  @BuiltValueField(wireName: r'tenantsIds')
  BuiltSet<String>? get tenantsIds;

  TenantAdministratorsFilter._();

  factory TenantAdministratorsFilter([
    void updates(TenantAdministratorsFilterBuilder b),
  ]) = _$TenantAdministratorsFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantAdministratorsFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantAdministratorsFilter> get serializer =>
      _$TenantAdministratorsFilterSerializer();
}

class _$TenantAdministratorsFilterSerializer
    implements PrimitiveSerializer<TenantAdministratorsFilter> {
  @override
  final Iterable<Type> types = const [
    TenantAdministratorsFilter,
    _$TenantAdministratorsFilter,
  ];

  @override
  final String wireName = r'TenantAdministratorsFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantAdministratorsFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantProfilesIds != null) {
      yield r'tenantProfilesIds';
      yield serializers.serialize(
        object.tenantProfilesIds,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.tenantsIds != null) {
      yield r'tenantsIds';
      yield serializers.serialize(
        object.tenantsIds,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantAdministratorsFilter object, {
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
    required TenantAdministratorsFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenantProfilesIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.tenantProfilesIds.replace(valueDes);
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
        case r'tenantsIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.tenantsIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantAdministratorsFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantAdministratorsFilterBuilder();
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

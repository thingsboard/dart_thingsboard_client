// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/users_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'affected_tenant_administrators_filter.g.dart';

/// AffectedTenantAdministratorsFilter
///
/// Properties:
/// * [type] 
@BuiltValue()
abstract class AffectedTenantAdministratorsFilter implements UsersFilter, Built<AffectedTenantAdministratorsFilter, AffectedTenantAdministratorsFilterBuilder> {
  AffectedTenantAdministratorsFilter._();

  factory AffectedTenantAdministratorsFilter([void updates(AffectedTenantAdministratorsFilterBuilder b)]) = _$AffectedTenantAdministratorsFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AffectedTenantAdministratorsFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AffectedTenantAdministratorsFilter> get serializer => _$AffectedTenantAdministratorsFilterSerializer();
}

class _$AffectedTenantAdministratorsFilterSerializer implements PrimitiveSerializer<AffectedTenantAdministratorsFilter> {
  @override
  final Iterable<Type> types = const [AffectedTenantAdministratorsFilter, _$AffectedTenantAdministratorsFilter];

  @override
  final String wireName = r'AffectedTenantAdministratorsFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AffectedTenantAdministratorsFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AffectedTenantAdministratorsFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AffectedTenantAdministratorsFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AffectedTenantAdministratorsFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AffectedTenantAdministratorsFilterBuilder();
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



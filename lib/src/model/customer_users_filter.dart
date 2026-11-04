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

part 'customer_users_filter.g.dart';

/// CustomerUsersFilter
///
/// Properties:
/// * [type] 
/// * [customerId] 
@BuiltValue()
abstract class CustomerUsersFilter implements UsersFilter, Built<CustomerUsersFilter, CustomerUsersFilterBuilder> {
  @BuiltValueField(wireName: r'customerId')
  String get customerId;

  CustomerUsersFilter._();

  factory CustomerUsersFilter([void updates(CustomerUsersFilterBuilder b)]) = _$CustomerUsersFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerUsersFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerUsersFilter> get serializer => _$CustomerUsersFilterSerializer();
}

class _$CustomerUsersFilterSerializer implements PrimitiveSerializer<CustomerUsersFilter> {
  @override
  final Iterable<Type> types = const [CustomerUsersFilter, _$CustomerUsersFilter];

  @override
  final String wireName = r'CustomerUsersFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerUsersFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customerId';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerUsersFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerUsersFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
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
  CustomerUsersFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerUsersFilterBuilder();
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



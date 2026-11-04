// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_usage_state_filter.g.dart';

/// ApiUsageStateFilter
///
/// Properties:
/// * [type] 
/// * [customerId] 
@BuiltValue()
abstract class ApiUsageStateFilter implements EntityFilter, Built<ApiUsageStateFilter, ApiUsageStateFilterBuilder> {
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  ApiUsageStateFilter._();

  factory ApiUsageStateFilter([void updates(ApiUsageStateFilterBuilder b)]) = _$ApiUsageStateFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiUsageStateFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiUsageStateFilter> get serializer => _$ApiUsageStateFilterSerializer();
}

class _$ApiUsageStateFilterSerializer implements PrimitiveSerializer<ApiUsageStateFilter> {
  @override
  final Iterable<Type> types = const [ApiUsageStateFilter, _$ApiUsageStateFilter];

  @override
  final String wireName = r'ApiUsageStateFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiUsageStateFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
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
    ApiUsageStateFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiUsageStateFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerId),
          ) as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
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
  ApiUsageStateFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiUsageStateFilterBuilder();
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



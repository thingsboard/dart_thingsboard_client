// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'short_customer_info.g.dart';

/// ShortCustomerInfo
///
/// Properties:
/// * [customerId] - JSON object with the customer Id.
/// * [title] - Title of the customer.
/// * [public] - Indicates special 'Public' customer used to embed dashboards on public websites.
@BuiltValue()
abstract class ShortCustomerInfo
    implements Built<ShortCustomerInfo, ShortCustomerInfoBuilder> {
  /// JSON object with the customer Id.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Title of the customer.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Indicates special 'Public' customer used to embed dashboards on public websites.
  @BuiltValueField(wireName: r'public')
  bool? get public;

  ShortCustomerInfo._();

  factory ShortCustomerInfo([void updates(ShortCustomerInfoBuilder b)]) =
      _$ShortCustomerInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShortCustomerInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShortCustomerInfo> get serializer =>
      _$ShortCustomerInfoSerializer();
}

class _$ShortCustomerInfoSerializer
    implements PrimitiveSerializer<ShortCustomerInfo> {
  @override
  final Iterable<Type> types = const [ShortCustomerInfo, _$ShortCustomerInfo];

  @override
  final String wireName = r'ShortCustomerInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShortCustomerInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.public != null) {
      yield r'public';
      yield serializers.serialize(
        object.public,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShortCustomerInfo object, {
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
    required ShortCustomerInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'public':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.public = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShortCustomerInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShortCustomerInfoBuilder();
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

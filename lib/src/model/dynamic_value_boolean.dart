// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dynamic_value_source_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dynamic_value_boolean.g.dart';

/// DynamicValueBoolean
///
/// Properties:
/// * [resolvedValue]
/// * [sourceType]
/// * [sourceAttribute]
/// * [inherit]
@BuiltValue()
abstract class DynamicValueBoolean
    implements Built<DynamicValueBoolean, DynamicValueBooleanBuilder> {
  @BuiltValueField(wireName: r'resolvedValue')
  bool? get resolvedValue;

  @BuiltValueField(wireName: r'sourceType')
  DynamicValueSourceType? get sourceType;
  // enum sourceTypeEnum {  CURRENT_TENANT,  CURRENT_CUSTOMER,  CURRENT_USER,  CURRENT_DEVICE,  };

  @BuiltValueField(wireName: r'sourceAttribute')
  String? get sourceAttribute;

  @BuiltValueField(wireName: r'inherit')
  bool? get inherit;

  DynamicValueBoolean._();

  factory DynamicValueBoolean([void updates(DynamicValueBooleanBuilder b)]) =
      _$DynamicValueBoolean;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DynamicValueBooleanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DynamicValueBoolean> get serializer =>
      _$DynamicValueBooleanSerializer();
}

class _$DynamicValueBooleanSerializer
    implements PrimitiveSerializer<DynamicValueBoolean> {
  @override
  final Iterable<Type> types = const [
    DynamicValueBoolean,
    _$DynamicValueBoolean,
  ];

  @override
  final String wireName = r'DynamicValueBoolean';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DynamicValueBoolean object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resolvedValue != null) {
      yield r'resolvedValue';
      yield serializers.serialize(
        object.resolvedValue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(DynamicValueSourceType),
      );
    }
    if (object.sourceAttribute != null) {
      yield r'sourceAttribute';
      yield serializers.serialize(
        object.sourceAttribute,
        specifiedType: const FullType(String),
      );
    }
    if (object.inherit != null) {
      yield r'inherit';
      yield serializers.serialize(
        object.inherit,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DynamicValueBoolean object, {
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
    required DynamicValueBooleanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resolvedValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.resolvedValue = valueDes;
          break;
        case r'sourceType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DynamicValueSourceType,
                    ),
                  )
                  as DynamicValueSourceType?;
          if (valueDes == null) continue;
          result.sourceType = valueDes;
          break;
        case r'sourceAttribute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceAttribute = valueDes;
          break;
        case r'inherit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.inherit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DynamicValueBoolean deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DynamicValueBooleanBuilder();
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

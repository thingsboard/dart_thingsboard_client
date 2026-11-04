// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/filter_predicate_value_string.dart';
import 'package:thingsboard_client/src/model/string_operation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_filter_predicate.g.dart';

/// StringFilterPredicate
///
/// Properties:
/// * [type]
/// * [operation]
/// * [value] - The value associated with the filter predicate
/// * [ignoreCase]
@BuiltValue()
abstract class StringFilterPredicate
    implements
        KeyFilterPredicate,
        Built<StringFilterPredicate, StringFilterPredicateBuilder> {
  @BuiltValueField(wireName: r'ignoreCase')
  bool? get ignoreCase;

  @BuiltValueField(wireName: r'operation')
  StringOperation? get operation;
  // enum operationEnum {  EQUAL,  NOT_EQUAL,  STARTS_WITH,  ENDS_WITH,  CONTAINS,  NOT_CONTAINS,  IN,  NOT_IN,  };

  /// The value associated with the filter predicate
  @BuiltValueField(wireName: r'value')
  FilterPredicateValueString? get value;

  StringFilterPredicate._();

  factory StringFilterPredicate([
    void updates(StringFilterPredicateBuilder b),
  ]) = _$StringFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StringFilterPredicateBuilder b) => b..type = r'STRING';

  @BuiltValueSerializer(custom: true)
  static Serializer<StringFilterPredicate> get serializer =>
      _$StringFilterPredicateSerializer();
}

class _$StringFilterPredicateSerializer
    implements PrimitiveSerializer<StringFilterPredicate> {
  @override
  final Iterable<Type> types = const [
    StringFilterPredicate,
    _$StringFilterPredicate,
  ];

  @override
  final String wireName = r'StringFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StringFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.operation != null) {
      yield r'operation';
      yield serializers.serialize(
        object.operation,
        specifiedType: const FullType(StringOperation),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(FilterPredicateValueString),
      );
    }
    if (object.ignoreCase != null) {
      yield r'ignoreCase';
      yield serializers.serialize(
        object.ignoreCase,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StringFilterPredicate object, {
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
    required StringFilterPredicateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'operation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StringOperation),
                  )
                  as StringOperation?;
          if (valueDes == null) continue;
          result.operation = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FilterPredicateValueString,
                    ),
                  )
                  as FilterPredicateValueString?;
          if (valueDes == null) continue;
          result.value.replace(valueDes);
          break;
        case r'ignoreCase':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.ignoreCase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StringFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StringFilterPredicateBuilder();
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

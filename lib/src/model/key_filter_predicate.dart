// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/string_filter_predicate.dart';
import 'package:thingsboard_client/src/model/boolean_filter_predicate.dart';
import 'package:thingsboard_client/src/model/complex_filter_predicate.dart';
import 'package:thingsboard_client/src/model/numeric_filter_predicate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_filter_predicate.g.dart';

/// Filter predicate for key-based filtering
///
/// Properties:
/// * [type]
@BuiltValue(instantiable: false)
abstract class KeyFilterPredicate {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'BOOLEAN': BooleanFilterPredicate,
    r'COMPLEX': ComplexFilterPredicate,
    r'NUMERIC': NumericFilterPredicate,
    r'STRING': StringFilterPredicate,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyFilterPredicate> get serializer =>
      _$KeyFilterPredicateSerializer();
}

extension KeyFilterPredicateDiscriminatorExt on KeyFilterPredicate {
  String? get discriminatorValue {
    if (this is BooleanFilterPredicate) {
      return r'BOOLEAN';
    }
    if (this is ComplexFilterPredicate) {
      return r'COMPLEX';
    }
    if (this is NumericFilterPredicate) {
      return r'NUMERIC';
    }
    if (this is StringFilterPredicate) {
      return r'STRING';
    }
    return null;
  }
}

extension KeyFilterPredicateBuilderDiscriminatorExt
    on KeyFilterPredicateBuilder {
  String? get discriminatorValue {
    if (this is BooleanFilterPredicateBuilder) {
      return r'BOOLEAN';
    }
    if (this is ComplexFilterPredicateBuilder) {
      return r'COMPLEX';
    }
    if (this is NumericFilterPredicateBuilder) {
      return r'NUMERIC';
    }
    if (this is StringFilterPredicateBuilder) {
      return r'STRING';
    }
    return null;
  }
}

class _$KeyFilterPredicateSerializer
    implements PrimitiveSerializer<KeyFilterPredicate> {
  @override
  final Iterable<Type> types = const [KeyFilterPredicate];

  @override
  final String wireName = r'KeyFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyFilterPredicate object, {
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
    KeyFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is BooleanFilterPredicate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(BooleanFilterPredicate),
      )!;
    }
    if (object is ComplexFilterPredicate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ComplexFilterPredicate),
      )!;
    }
    if (object is NumericFilterPredicate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NumericFilterPredicate),
      )!;
    }
    if (object is StringFilterPredicate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(StringFilterPredicate),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  KeyFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(KeyFilterPredicate.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'BOOLEAN':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(BooleanFilterPredicate),
            )
            as BooleanFilterPredicate;
      case r'COMPLEX':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ComplexFilterPredicate),
            )
            as ComplexFilterPredicate;
      case r'NUMERIC':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NumericFilterPredicate),
            )
            as NumericFilterPredicate;
      case r'STRING':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(StringFilterPredicate),
            )
            as StringFilterPredicate;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($KeyFilterPredicate),
            )
            as $KeyFilterPredicate;
    }
  }
}

/// a concrete implementation of [KeyFilterPredicate], since [KeyFilterPredicate] is not instantiable
@BuiltValue(instantiable: true)
abstract class $KeyFilterPredicate
    implements
        KeyFilterPredicate,
        Built<$KeyFilterPredicate, $KeyFilterPredicateBuilder> {
  $KeyFilterPredicate._();

  factory $KeyFilterPredicate([
    void Function($KeyFilterPredicateBuilder)? updates,
  ]) = _$$KeyFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($KeyFilterPredicateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$KeyFilterPredicate> get serializer =>
      _$$KeyFilterPredicateSerializer();
}

class _$$KeyFilterPredicateSerializer
    implements PrimitiveSerializer<$KeyFilterPredicate> {
  @override
  final Iterable<Type> types = const [
    $KeyFilterPredicate,
    _$$KeyFilterPredicate,
  ];

  @override
  final String wireName = r'$KeyFilterPredicate';

  @override
  Object serialize(
    Serializers serializers,
    $KeyFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(KeyFilterPredicate),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeyFilterPredicateBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $KeyFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $KeyFilterPredicateBuilder();
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

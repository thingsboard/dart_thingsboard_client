// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sign_up_field_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_field.g.dart';

/// SignUpField
///
/// Properties:
/// * [id] - Signup field id
/// * [label] - Signup field label
/// * [required_] - Indicates if field is required
@BuiltValue()
abstract class SignUpField implements Built<SignUpField, SignUpFieldBuilder> {
  /// Signup field id
  @BuiltValueField(wireName: r'id')
  SignUpFieldId get id;
  // enum idEnum {  EMAIL,  PASSWORD,  REPEAT_PASSWORD,  FIRST_NAME,  LAST_NAME,  PHONE,  COUNTRY,  CITY,  STATE,  ZIP,  ADDRESS,  ADDRESS2,  };

  /// Signup field label
  @BuiltValueField(wireName: r'label')
  String get label;

  /// Indicates if field is required
  @BuiltValueField(wireName: r'required')
  bool? get required_;

  SignUpField._();

  factory SignUpField([void updates(SignUpFieldBuilder b)]) = _$SignUpField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignUpFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignUpField> get serializer => _$SignUpFieldSerializer();
}

class _$SignUpFieldSerializer implements PrimitiveSerializer<SignUpField> {
  @override
  final Iterable<Type> types = const [SignUpField, _$SignUpField];

  @override
  final String wireName = r'SignUpField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignUpField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(SignUpFieldId),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignUpField object, {
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
    required SignUpFieldBuilder result,
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
                    specifiedType: const FullType(SignUpFieldId),
                  )
                  as SignUpFieldId;
          result.id = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'required':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.required_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignUpField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpFieldBuilder();
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tb_text_content.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_content.g.dart';

/// TbContent
///
/// Properties:
/// * [contentType] 
@BuiltValue(instantiable: false)
abstract class TbContent  {
  @BuiltValueField(wireName: r'contentType')
  String get contentType;

  static const String discriminatorFieldName = r'contentType';

  static const Map<String, Type> discriminatorMapping = {
    r'TEXT': TbTextContent,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TbContent> get serializer => _$TbContentSerializer();
}

extension TbContentDiscriminatorExt on TbContent {
    String? get discriminatorValue {
        if (this is TbTextContent) {
            return r'TEXT';
        }
        return null;
    }
}
extension TbContentBuilderDiscriminatorExt on TbContentBuilder {
    String? get discriminatorValue {
        if (this is TbTextContentBuilder) {
            return r'TEXT';
        }
        return null;
    }
}

class _$TbContentSerializer implements PrimitiveSerializer<TbContent> {
  @override
  final Iterable<Type> types = const [TbContent];

  @override
  final String wireName = r'TbContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contentType';
    yield serializers.serialize(
      object.contentType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TbContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is TbTextContent) {
      return serializers.serialize(object, specifiedType: FullType(TbTextContent))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TbContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(TbContent.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'TEXT':
        return serializers.deserialize(serialized, specifiedType: FullType(TbTextContent)) as TbTextContent;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($TbContent)) as $TbContent;
    }
  }
}


/// a concrete implementation of [TbContent], since [TbContent] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TbContent implements TbContent, Built<$TbContent, $TbContentBuilder> {
  $TbContent._();

  factory $TbContent([void Function($TbContentBuilder)? updates]) = _$$TbContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TbContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TbContent> get serializer => _$$TbContentSerializer();
}

class _$$TbContentSerializer implements PrimitiveSerializer<$TbContent> {
  @override
  final Iterable<Type> types = const [$TbContent, _$$TbContent];

  @override
  final String wireName = r'$TbContent';

  @override
  Object serialize(
    Serializers serializers,
    $TbContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TbContent))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TbContentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $TbContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TbContentBuilder();
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


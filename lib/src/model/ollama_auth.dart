// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/none.dart';
import 'package:thingsboard_client/src/model/token.dart';
import 'package:thingsboard_client/src/model/basic.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ollama_auth.g.dart';

/// Ollama authentication schemes
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class OllamaAuth  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'BASIC': Basic,
    r'NONE': None,
    r'TOKEN': Token,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<OllamaAuth> get serializer => _$OllamaAuthSerializer();
}

extension OllamaAuthDiscriminatorExt on OllamaAuth {
    String? get discriminatorValue {
        if (this is Basic) {
            return r'BASIC';
        }
        if (this is None) {
            return r'NONE';
        }
        if (this is Token) {
            return r'TOKEN';
        }
        return null;
    }
}
extension OllamaAuthBuilderDiscriminatorExt on OllamaAuthBuilder {
    String? get discriminatorValue {
        if (this is BasicBuilder) {
            return r'BASIC';
        }
        if (this is NoneBuilder) {
            return r'NONE';
        }
        if (this is TokenBuilder) {
            return r'TOKEN';
        }
        return null;
    }
}

class _$OllamaAuthSerializer implements PrimitiveSerializer<OllamaAuth> {
  @override
  final Iterable<Type> types = const [OllamaAuth];

  @override
  final String wireName = r'OllamaAuth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OllamaAuth object, {
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
    OllamaAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is Basic) {
      return serializers.serialize(object, specifiedType: FullType(Basic))!;
    }
    if (object is None) {
      return serializers.serialize(object, specifiedType: FullType(None))!;
    }
    if (object is Token) {
      return serializers.serialize(object, specifiedType: FullType(Token))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  OllamaAuth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(OllamaAuth.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'BASIC':
        return serializers.deserialize(serialized, specifiedType: FullType(Basic)) as Basic;
      case r'NONE':
        return serializers.deserialize(serialized, specifiedType: FullType(None)) as None;
      case r'TOKEN':
        return serializers.deserialize(serialized, specifiedType: FullType(Token)) as Token;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($OllamaAuth)) as $OllamaAuth;
    }
  }
}


/// a concrete implementation of [OllamaAuth], since [OllamaAuth] is not instantiable
@BuiltValue(instantiable: true)
abstract class $OllamaAuth implements OllamaAuth, Built<$OllamaAuth, $OllamaAuthBuilder> {
  $OllamaAuth._();

  factory $OllamaAuth([void Function($OllamaAuthBuilder)? updates]) = _$$OllamaAuth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($OllamaAuthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$OllamaAuth> get serializer => _$$OllamaAuthSerializer();
}

class _$$OllamaAuthSerializer implements PrimitiveSerializer<$OllamaAuth> {
  @override
  final Iterable<Type> types = const [$OllamaAuth, _$$OllamaAuth];

  @override
  final String wireName = r'$OllamaAuth';

  @override
  Object serialize(
    Serializers serializers,
    $OllamaAuth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(OllamaAuth))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OllamaAuthBuilder result,
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
  $OllamaAuth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $OllamaAuthBuilder();
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


// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_model_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AiModelType _$CHAT = const AiModelType._('CHAT');
const AiModelType _$unknownDefaultOpenApi = const AiModelType._(
  'unknownDefaultOpenApi',
);

AiModelType _$valueOf(String name) {
  switch (name) {
    case 'CHAT':
      return _$CHAT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AiModelType> _$values = BuiltSet<AiModelType>(
  const <AiModelType>[_$CHAT, _$unknownDefaultOpenApi],
);

class _$AiModelTypeMeta {
  const _$AiModelTypeMeta();
  AiModelType get CHAT => _$CHAT;
  AiModelType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AiModelType valueOf(String name) => _$valueOf(name);
  BuiltSet<AiModelType> get values => _$values;
}

mixin _$AiModelTypeMixin {
  // ignore: non_constant_identifier_names
  _$AiModelTypeMeta get AiModelType => const _$AiModelTypeMeta();
}

Serializer<AiModelType> _$aiModelTypeSerializer = _$AiModelTypeSerializer();

class _$AiModelTypeSerializer implements PrimitiveSerializer<AiModelType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CHAT': 'CHAT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CHAT': 'CHAT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AiModelType];
  @override
  final String wireName = 'AiModelType';

  @override
  Object serialize(
    Serializers serializers,
    AiModelType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AiModelType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AiModelType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AiProvider _$OPENAI = const AiProvider._('OPENAI');
const AiProvider _$AZURE_OPENAI = const AiProvider._('AZURE_OPENAI');
const AiProvider _$GOOGLE_AI_GEMINI = const AiProvider._('GOOGLE_AI_GEMINI');
const AiProvider _$GOOGLE_VERTEX_AI_GEMINI = const AiProvider._(
  'GOOGLE_VERTEX_AI_GEMINI',
);
const AiProvider _$MISTRAL_AI = const AiProvider._('MISTRAL_AI');
const AiProvider _$ANTHROPIC = const AiProvider._('ANTHROPIC');
const AiProvider _$AMAZON_BEDROCK = const AiProvider._('AMAZON_BEDROCK');
const AiProvider _$GITHUB_MODELS = const AiProvider._('GITHUB_MODELS');
const AiProvider _$OLLAMA = const AiProvider._('OLLAMA');
const AiProvider _$unknownDefaultOpenApi = const AiProvider._(
  'unknownDefaultOpenApi',
);

AiProvider _$valueOf(String name) {
  switch (name) {
    case 'OPENAI':
      return _$OPENAI;
    case 'AZURE_OPENAI':
      return _$AZURE_OPENAI;
    case 'GOOGLE_AI_GEMINI':
      return _$GOOGLE_AI_GEMINI;
    case 'GOOGLE_VERTEX_AI_GEMINI':
      return _$GOOGLE_VERTEX_AI_GEMINI;
    case 'MISTRAL_AI':
      return _$MISTRAL_AI;
    case 'ANTHROPIC':
      return _$ANTHROPIC;
    case 'AMAZON_BEDROCK':
      return _$AMAZON_BEDROCK;
    case 'GITHUB_MODELS':
      return _$GITHUB_MODELS;
    case 'OLLAMA':
      return _$OLLAMA;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AiProvider> _$values = BuiltSet<AiProvider>(const <AiProvider>[
  _$OPENAI,
  _$AZURE_OPENAI,
  _$GOOGLE_AI_GEMINI,
  _$GOOGLE_VERTEX_AI_GEMINI,
  _$MISTRAL_AI,
  _$ANTHROPIC,
  _$AMAZON_BEDROCK,
  _$GITHUB_MODELS,
  _$OLLAMA,
  _$unknownDefaultOpenApi,
]);

class _$AiProviderMeta {
  const _$AiProviderMeta();
  AiProvider get OPENAI => _$OPENAI;
  AiProvider get AZURE_OPENAI => _$AZURE_OPENAI;
  AiProvider get GOOGLE_AI_GEMINI => _$GOOGLE_AI_GEMINI;
  AiProvider get GOOGLE_VERTEX_AI_GEMINI => _$GOOGLE_VERTEX_AI_GEMINI;
  AiProvider get MISTRAL_AI => _$MISTRAL_AI;
  AiProvider get ANTHROPIC => _$ANTHROPIC;
  AiProvider get AMAZON_BEDROCK => _$AMAZON_BEDROCK;
  AiProvider get GITHUB_MODELS => _$GITHUB_MODELS;
  AiProvider get OLLAMA => _$OLLAMA;
  AiProvider get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AiProvider valueOf(String name) => _$valueOf(name);
  BuiltSet<AiProvider> get values => _$values;
}

mixin _$AiProviderMixin {
  // ignore: non_constant_identifier_names
  _$AiProviderMeta get AiProvider => const _$AiProviderMeta();
}

Serializer<AiProvider> _$aiProviderSerializer = _$AiProviderSerializer();

class _$AiProviderSerializer implements PrimitiveSerializer<AiProvider> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPENAI': 'OPENAI',
    'AZURE_OPENAI': 'AZURE_OPENAI',
    'GOOGLE_AI_GEMINI': 'GOOGLE_AI_GEMINI',
    'GOOGLE_VERTEX_AI_GEMINI': 'GOOGLE_VERTEX_AI_GEMINI',
    'MISTRAL_AI': 'MISTRAL_AI',
    'ANTHROPIC': 'ANTHROPIC',
    'AMAZON_BEDROCK': 'AMAZON_BEDROCK',
    'GITHUB_MODELS': 'GITHUB_MODELS',
    'OLLAMA': 'OLLAMA',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPENAI': 'OPENAI',
    'AZURE_OPENAI': 'AZURE_OPENAI',
    'GOOGLE_AI_GEMINI': 'GOOGLE_AI_GEMINI',
    'GOOGLE_VERTEX_AI_GEMINI': 'GOOGLE_VERTEX_AI_GEMINI',
    'MISTRAL_AI': 'MISTRAL_AI',
    'ANTHROPIC': 'ANTHROPIC',
    'AMAZON_BEDROCK': 'AMAZON_BEDROCK',
    'GITHUB_MODELS': 'GITHUB_MODELS',
    'OLLAMA': 'OLLAMA',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AiProvider];
  @override
  final String wireName = 'AiProvider';

  @override
  Object serialize(
    Serializers serializers,
    AiProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AiProvider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AiProvider.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

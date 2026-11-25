// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_provider.g.dart';

class AiProvider extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPENAI')
  static const AiProvider OPENAI = _$OPENAI;
  @BuiltValueEnumConst(wireName: r'AZURE_OPENAI')
  static const AiProvider AZURE_OPENAI = _$AZURE_OPENAI;
  @BuiltValueEnumConst(wireName: r'GOOGLE_AI_GEMINI')
  static const AiProvider GOOGLE_AI_GEMINI = _$GOOGLE_AI_GEMINI;
  @BuiltValueEnumConst(wireName: r'GOOGLE_VERTEX_AI_GEMINI')
  static const AiProvider GOOGLE_VERTEX_AI_GEMINI = _$GOOGLE_VERTEX_AI_GEMINI;
  @BuiltValueEnumConst(wireName: r'MISTRAL_AI')
  static const AiProvider MISTRAL_AI = _$MISTRAL_AI;
  @BuiltValueEnumConst(wireName: r'ANTHROPIC')
  static const AiProvider ANTHROPIC = _$ANTHROPIC;
  @BuiltValueEnumConst(wireName: r'AMAZON_BEDROCK')
  static const AiProvider AMAZON_BEDROCK = _$AMAZON_BEDROCK;
  @BuiltValueEnumConst(wireName: r'GITHUB_MODELS')
  static const AiProvider GITHUB_MODELS = _$GITHUB_MODELS;
  @BuiltValueEnumConst(wireName: r'OLLAMA')
  static const AiProvider OLLAMA = _$OLLAMA;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AiProvider unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AiProvider> get serializer => _$aiProviderSerializer;

  const AiProvider._(String name) : super(name);

  static BuiltSet<AiProvider> get values => _$values;
  static AiProvider valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AiProviderMixin = Object with _$AiProviderMixin;

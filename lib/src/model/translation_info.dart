// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_info.g.dart';

/// TranslationInfo
///
/// Properties:
/// * [localeCode] - Locale code formed by combining the ISO 639-1 language code and the ISO 3166-1 region code. For example, \"en_US\"
/// * [language] - Locale code language display name. For example, \"Polish (Polski)\"
/// * [country] - Locale code country display name. For example, \"Poland\"
/// * [progress] - Number representing translation percentage progress. For example, 40 that means 40% of all keys are translated.
/// * [customized] - Boolean representing if current language has customization.
@BuiltValue()
abstract class TranslationInfo implements Built<TranslationInfo, TranslationInfoBuilder> {
  /// Locale code formed by combining the ISO 639-1 language code and the ISO 3166-1 region code. For example, \"en_US\"
  @BuiltValueField(wireName: r'localeCode')
  String? get localeCode;

  /// Locale code language display name. For example, \"Polish (Polski)\"
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Locale code country display name. For example, \"Poland\"
  @BuiltValueField(wireName: r'country')
  String? get country;

  /// Number representing translation percentage progress. For example, 40 that means 40% of all keys are translated.
  @BuiltValueField(wireName: r'progress')
  int? get progress;

  /// Boolean representing if current language has customization.
  @BuiltValueField(wireName: r'customized')
  bool? get customized;

  TranslationInfo._();

  factory TranslationInfo([void updates(TranslationInfoBuilder b)]) = _$TranslationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranslationInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranslationInfo> get serializer => _$TranslationInfoSerializer();
}

class _$TranslationInfoSerializer implements PrimitiveSerializer<TranslationInfo> {
  @override
  final Iterable<Type> types = const [TranslationInfo, _$TranslationInfo];

  @override
  final String wireName = r'TranslationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranslationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.localeCode != null) {
      yield r'localeCode';
      yield serializers.serialize(
        object.localeCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(String),
      );
    }
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType(int),
      );
    }
    if (object.customized != null) {
      yield r'customized';
      yield serializers.serialize(
        object.customized,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TranslationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TranslationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'localeCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.localeCode = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.country = valueDes;
          break;
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.progress = valueDes;
          break;
        case r'customized':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.customized = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranslationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranslationInfoBuilder();
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



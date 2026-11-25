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

part 'debug_settings.g.dart';

/// DebugSettings
///
/// Properties:
/// * [failuresEnabled] - Debug failures.
/// * [allEnabled] - Debug All. Used as a trigger for updating debugAllUntil.
/// * [allEnabledUntil] - Timestamp of the end time for the processing debug events.
@BuiltValue()
abstract class DebugSettings
    implements Built<DebugSettings, DebugSettingsBuilder> {
  /// Debug failures.
  @BuiltValueField(wireName: r'failuresEnabled')
  bool? get failuresEnabled;

  /// Debug All. Used as a trigger for updating debugAllUntil.
  @BuiltValueField(wireName: r'allEnabled')
  bool? get allEnabled;

  /// Timestamp of the end time for the processing debug events.
  @BuiltValueField(wireName: r'allEnabledUntil')
  int? get allEnabledUntil;

  DebugSettings._();

  factory DebugSettings([void updates(DebugSettingsBuilder b)]) =
      _$DebugSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DebugSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DebugSettings> get serializer =>
      _$DebugSettingsSerializer();
}

class _$DebugSettingsSerializer implements PrimitiveSerializer<DebugSettings> {
  @override
  final Iterable<Type> types = const [DebugSettings, _$DebugSettings];

  @override
  final String wireName = r'DebugSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DebugSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.failuresEnabled != null) {
      yield r'failuresEnabled';
      yield serializers.serialize(
        object.failuresEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allEnabled != null) {
      yield r'allEnabled';
      yield serializers.serialize(
        object.allEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allEnabledUntil != null) {
      yield r'allEnabledUntil';
      yield serializers.serialize(
        object.allEnabledUntil,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DebugSettings object, {
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
    required DebugSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'failuresEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.failuresEnabled = valueDes;
          break;
        case r'allEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allEnabled = valueDes;
          break;
        case r'allEnabledUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.allEnabledUntil = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DebugSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DebugSettingsBuilder();
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

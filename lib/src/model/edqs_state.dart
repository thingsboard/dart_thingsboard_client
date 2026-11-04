// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/edqs_sync_status.dart';
import 'package:thingsboard_client/src/model/edqs_api_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edqs_state.g.dart';

/// EdqsState
///
/// Properties:
/// * [edqsReady]
/// * [syncStatus]
/// * [apiMode]
@BuiltValue()
abstract class EdqsState implements Built<EdqsState, EdqsStateBuilder> {
  @BuiltValueField(wireName: r'edqsReady')
  bool? get edqsReady;

  @BuiltValueField(wireName: r'syncStatus')
  EdqsSyncStatus? get syncStatus;
  // enum syncStatusEnum {  REQUESTED,  STARTED,  FINISHED,  FAILED,  };

  @BuiltValueField(wireName: r'apiMode')
  EdqsApiMode? get apiMode;
  // enum apiModeEnum {  ENABLED,  AUTO_ENABLED,  DISABLED,  AUTO_DISABLED,  };

  EdqsState._();

  factory EdqsState([void updates(EdqsStateBuilder b)]) = _$EdqsState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdqsStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdqsState> get serializer => _$EdqsStateSerializer();
}

class _$EdqsStateSerializer implements PrimitiveSerializer<EdqsState> {
  @override
  final Iterable<Type> types = const [EdqsState, _$EdqsState];

  @override
  final String wireName = r'EdqsState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdqsState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.edqsReady != null) {
      yield r'edqsReady';
      yield serializers.serialize(
        object.edqsReady,
        specifiedType: const FullType(bool),
      );
    }
    if (object.syncStatus != null) {
      yield r'syncStatus';
      yield serializers.serialize(
        object.syncStatus,
        specifiedType: const FullType(EdqsSyncStatus),
      );
    }
    if (object.apiMode != null) {
      yield r'apiMode';
      yield serializers.serialize(
        object.apiMode,
        specifiedType: const FullType(EdqsApiMode),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdqsState object, {
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
    required EdqsStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'edqsReady':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.edqsReady = valueDes;
          break;
        case r'syncStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdqsSyncStatus),
                  )
                  as EdqsSyncStatus?;
          if (valueDes == null) continue;
          result.syncStatus = valueDes;
          break;
        case r'apiMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdqsApiMode),
                  )
                  as EdqsApiMode?;
          if (valueDes == null) continue;
          result.apiMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdqsState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdqsStateBuilder();
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

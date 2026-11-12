// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/trendz_synchronization_result_type.dart';
import 'package:thingsboard_client/src/model/trendz_synchronization_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trendz_healthcheck_result.g.dart';

/// TrendzHealthcheckResult
///
/// Properties:
/// * [version]
/// * [type]
/// * [status]
/// * [message]
@BuiltValue()
abstract class TrendzHealthcheckResult
    implements Built<TrendzHealthcheckResult, TrendzHealthcheckResultBuilder> {
  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'type')
  TrendzSynchronizationResultType? get type;
  // enum typeEnum {  SYNC_NOT_INITIALIZED,  SYNC_COMPLETED,  SYNC_DISABLED,  TRENDZ_UNSUPPORTED_VERSION,  TRENDZ_AUTH_INVALID,  TRENDZ_URL_UNREACHABLE,  TB_URL_MISMATCH,  TB_URL_UNREACHABLE,  TB_AUTH_INVALID,  SYNC_INTERNAL_ERROR,  };

  @BuiltValueField(wireName: r'status')
  TrendzSynchronizationStatus? get status;
  // enum statusEnum {  NOT_AVAILABLE,  AVAILABLE,  SYNCED,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  TrendzHealthcheckResult._();

  factory TrendzHealthcheckResult([
    void updates(TrendzHealthcheckResultBuilder b),
  ]) = _$TrendzHealthcheckResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendzHealthcheckResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendzHealthcheckResult> get serializer =>
      _$TrendzHealthcheckResultSerializer();
}

class _$TrendzHealthcheckResultSerializer
    implements PrimitiveSerializer<TrendzHealthcheckResult> {
  @override
  final Iterable<Type> types = const [
    TrendzHealthcheckResult,
    _$TrendzHealthcheckResult,
  ];

  @override
  final String wireName = r'TrendzHealthcheckResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendzHealthcheckResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TrendzSynchronizationResultType),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(TrendzSynchronizationStatus),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendzHealthcheckResult object, {
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
    required TrendzHealthcheckResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TrendzSynchronizationResultType,
                    ),
                  )
                  as TrendzSynchronizationResultType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TrendzSynchronizationStatus,
                    ),
                  )
                  as TrendzSynchronizationStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendzHealthcheckResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendzHealthcheckResultBuilder();
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

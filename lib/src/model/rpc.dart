// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/rpc_id.dart';
import 'package:thingsboard_client/src/model/device_id.dart';
import 'package:thingsboard_client/src/model/rpc_status.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rpc.g.dart';

/// Rpc
///
/// Properties:
/// * [id] - JSON object with the rpc Id. Referencing non-existing rpc Id will cause error.
/// * [createdTime] - Timestamp of the rpc creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id.
/// * [deviceId] - JSON object with Device Id.
/// * [expirationTime] - Expiration time of the request.
/// * [request] - The request body that will be used to send message to device.
/// * [response] - The response from the device.
/// * [status] - The current status of the RPC call.
/// * [additionalInfo] - Additional info used in the rule engine to process the updates to the RPC state.
@BuiltValue()
abstract class Rpc implements Built<Rpc, RpcBuilder> {
  /// JSON object with the rpc Id. Referencing non-existing rpc Id will cause error.
  @BuiltValueField(wireName: r'id')
  RpcId? get id;

  /// Timestamp of the rpc creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Device Id.
  @BuiltValueField(wireName: r'deviceId')
  DeviceId? get deviceId;

  /// Expiration time of the request.
  @BuiltValueField(wireName: r'expirationTime')
  int? get expirationTime;

  /// The request body that will be used to send message to device.
  @BuiltValueField(wireName: r'request')
  JsonObject? get request;

  /// The response from the device.
  @BuiltValueField(wireName: r'response')
  JsonObject? get response;

  /// The current status of the RPC call.
  @BuiltValueField(wireName: r'status')
  RpcStatus? get status;
  // enum statusEnum {  QUEUED,  SENT,  DELIVERED,  SUCCESSFUL,  TIMEOUT,  EXPIRED,  FAILED,  DELETED,  };

  /// Additional info used in the rule engine to process the updates to the RPC state.
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  Rpc._();

  factory Rpc([void updates(RpcBuilder b)]) = _$Rpc;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RpcBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Rpc> get serializer => _$RpcSerializer();
}

class _$RpcSerializer implements PrimitiveSerializer<Rpc> {
  @override
  final Iterable<Type> types = const [Rpc, _$Rpc];

  @override
  final String wireName = r'Rpc';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Rpc object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(RpcId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.deviceId != null) {
      yield r'deviceId';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType(DeviceId),
      );
    }
    if (object.expirationTime != null) {
      yield r'expirationTime';
      yield serializers.serialize(
        object.expirationTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.request != null) {
      yield r'request';
      yield serializers.serialize(
        object.request,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.response != null) {
      yield r'response';
      yield serializers.serialize(
        object.response,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(RpcStatus),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Rpc object, {
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
    required RpcBuilder result,
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
                    specifiedType: const FullType.nullable(RpcId),
                  )
                  as RpcId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'deviceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DeviceId),
                  )
                  as DeviceId?;
          if (valueDes == null) continue;
          result.deviceId.replace(valueDes);
          break;
        case r'expirationTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.expirationTime = valueDes;
          break;
        case r'request':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.request = valueDes;
          break;
        case r'response':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.response = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RpcStatus),
                  )
                  as RpcStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'additionalInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Rpc deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RpcBuilder();
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

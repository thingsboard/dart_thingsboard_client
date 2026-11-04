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

part 'rpc_status.g.dart';

class RpcStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'QUEUED')
  static const RpcStatus QUEUED = _$QUEUED;
  @BuiltValueEnumConst(wireName: r'SENT')
  static const RpcStatus SENT = _$SENT;
  @BuiltValueEnumConst(wireName: r'DELIVERED')
  static const RpcStatus DELIVERED = _$DELIVERED;
  @BuiltValueEnumConst(wireName: r'SUCCESSFUL')
  static const RpcStatus SUCCESSFUL = _$SUCCESSFUL;
  @BuiltValueEnumConst(wireName: r'TIMEOUT')
  static const RpcStatus TIMEOUT = _$TIMEOUT;
  @BuiltValueEnumConst(wireName: r'EXPIRED')
  static const RpcStatus EXPIRED = _$EXPIRED;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const RpcStatus FAILED = _$FAILED;
  @BuiltValueEnumConst(wireName: r'DELETED')
  static const RpcStatus DELETED = _$DELETED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RpcStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<RpcStatus> get serializer => _$rpcStatusSerializer;

  const RpcStatus._(String name): super(name);

  static BuiltSet<RpcStatus> get values => _$values;
  static RpcStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RpcStatusMixin = Object with _$RpcStatusMixin;


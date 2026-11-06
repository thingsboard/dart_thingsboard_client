// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_start_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProcessingStartStatus _$DELIVERY_FAIL = const ProcessingStartStatus._(
  'DELIVERY_FAIL',
);
const ProcessingStartStatus _$PENDING = const ProcessingStartStatus._(
  'PENDING',
);
const ProcessingStartStatus _$DELIVERED = const ProcessingStartStatus._(
  'DELIVERED',
);
const ProcessingStartStatus _$unknownDefaultOpenApi =
    const ProcessingStartStatus._('unknownDefaultOpenApi');

ProcessingStartStatus _$valueOf(String name) {
  switch (name) {
    case 'DELIVERY_FAIL':
      return _$DELIVERY_FAIL;
    case 'PENDING':
      return _$PENDING;
    case 'DELIVERED':
      return _$DELIVERED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ProcessingStartStatus> _$values =
    BuiltSet<ProcessingStartStatus>(const <ProcessingStartStatus>[
      _$DELIVERY_FAIL,
      _$PENDING,
      _$DELIVERED,
      _$unknownDefaultOpenApi,
    ]);

class _$ProcessingStartStatusMeta {
  const _$ProcessingStartStatusMeta();
  ProcessingStartStatus get DELIVERY_FAIL => _$DELIVERY_FAIL;
  ProcessingStartStatus get PENDING => _$PENDING;
  ProcessingStartStatus get DELIVERED => _$DELIVERED;
  ProcessingStartStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ProcessingStartStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ProcessingStartStatus> get values => _$values;
}

mixin _$ProcessingStartStatusMixin {
  // ignore: non_constant_identifier_names
  _$ProcessingStartStatusMeta get ProcessingStartStatus =>
      const _$ProcessingStartStatusMeta();
}

Serializer<ProcessingStartStatus> _$processingStartStatusSerializer =
    _$ProcessingStartStatusSerializer();

class _$ProcessingStartStatusSerializer
    implements PrimitiveSerializer<ProcessingStartStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DELIVERY_FAIL': 'DELIVERY_FAIL',
    'PENDING': 'PENDING',
    'DELIVERED': 'DELIVERED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DELIVERY_FAIL': 'DELIVERY_FAIL',
    'PENDING': 'PENDING',
    'DELIVERED': 'DELIVERED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProcessingStartStatus];
  @override
  final String wireName = 'ProcessingStartStatus';

  @override
  Object serialize(
    Serializers serializers,
    ProcessingStartStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProcessingStartStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProcessingStartStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

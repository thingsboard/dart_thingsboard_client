// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_error_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionErrorCode _$LIMIT_REACHED = const SubscriptionErrorCode._(
  'LIMIT_REACHED',
);
const SubscriptionErrorCode _$FEATURE_DISABLED = const SubscriptionErrorCode._(
  'FEATURE_DISABLED',
);
const SubscriptionErrorCode _$unknownDefaultOpenApi =
    const SubscriptionErrorCode._('unknownDefaultOpenApi');

SubscriptionErrorCode _$valueOf(String name) {
  switch (name) {
    case 'LIMIT_REACHED':
      return _$LIMIT_REACHED;
    case 'FEATURE_DISABLED':
      return _$FEATURE_DISABLED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionErrorCode> _$values =
    BuiltSet<SubscriptionErrorCode>(const <SubscriptionErrorCode>[
      _$LIMIT_REACHED,
      _$FEATURE_DISABLED,
      _$unknownDefaultOpenApi,
    ]);

class _$SubscriptionErrorCodeMeta {
  const _$SubscriptionErrorCodeMeta();
  SubscriptionErrorCode get LIMIT_REACHED => _$LIMIT_REACHED;
  SubscriptionErrorCode get FEATURE_DISABLED => _$FEATURE_DISABLED;
  SubscriptionErrorCode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SubscriptionErrorCode valueOf(String name) => _$valueOf(name);
  BuiltSet<SubscriptionErrorCode> get values => _$values;
}

mixin _$SubscriptionErrorCodeMixin {
  // ignore: non_constant_identifier_names
  _$SubscriptionErrorCodeMeta get SubscriptionErrorCode =>
      const _$SubscriptionErrorCodeMeta();
}

Serializer<SubscriptionErrorCode> _$subscriptionErrorCodeSerializer =
    _$SubscriptionErrorCodeSerializer();

class _$SubscriptionErrorCodeSerializer
    implements PrimitiveSerializer<SubscriptionErrorCode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LIMIT_REACHED': 'LIMIT_REACHED',
    'FEATURE_DISABLED': 'FEATURE_DISABLED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LIMIT_REACHED': 'LIMIT_REACHED',
    'FEATURE_DISABLED': 'FEATURE_DISABLED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SubscriptionErrorCode];
  @override
  final String wireName = 'SubscriptionErrorCode';

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionErrorCode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubscriptionErrorCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubscriptionErrorCode.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slack_conversation_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SlackConversationType _$DIRECT = const SlackConversationType._('DIRECT');
const SlackConversationType _$PUBLIC_CHANNEL = const SlackConversationType._(
  'PUBLIC_CHANNEL',
);
const SlackConversationType _$PRIVATE_CHANNEL = const SlackConversationType._(
  'PRIVATE_CHANNEL',
);
const SlackConversationType _$unknownDefaultOpenApi =
    const SlackConversationType._('unknownDefaultOpenApi');

SlackConversationType _$valueOf(String name) {
  switch (name) {
    case 'DIRECT':
      return _$DIRECT;
    case 'PUBLIC_CHANNEL':
      return _$PUBLIC_CHANNEL;
    case 'PRIVATE_CHANNEL':
      return _$PRIVATE_CHANNEL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SlackConversationType> _$values =
    BuiltSet<SlackConversationType>(const <SlackConversationType>[
      _$DIRECT,
      _$PUBLIC_CHANNEL,
      _$PRIVATE_CHANNEL,
      _$unknownDefaultOpenApi,
    ]);

class _$SlackConversationTypeMeta {
  const _$SlackConversationTypeMeta();
  SlackConversationType get DIRECT => _$DIRECT;
  SlackConversationType get PUBLIC_CHANNEL => _$PUBLIC_CHANNEL;
  SlackConversationType get PRIVATE_CHANNEL => _$PRIVATE_CHANNEL;
  SlackConversationType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SlackConversationType valueOf(String name) => _$valueOf(name);
  BuiltSet<SlackConversationType> get values => _$values;
}

mixin _$SlackConversationTypeMixin {
  // ignore: non_constant_identifier_names
  _$SlackConversationTypeMeta get SlackConversationType =>
      const _$SlackConversationTypeMeta();
}

Serializer<SlackConversationType> _$slackConversationTypeSerializer =
    _$SlackConversationTypeSerializer();

class _$SlackConversationTypeSerializer
    implements PrimitiveSerializer<SlackConversationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DIRECT': 'DIRECT',
    'PUBLIC_CHANNEL': 'PUBLIC_CHANNEL',
    'PRIVATE_CHANNEL': 'PRIVATE_CHANNEL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DIRECT': 'DIRECT',
    'PUBLIC_CHANNEL': 'PUBLIC_CHANNEL',
    'PRIVATE_CHANNEL': 'PRIVATE_CHANNEL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SlackConversationType];
  @override
  final String wireName = 'SlackConversationType';

  @override
  Object serialize(
    Serializers serializers,
    SlackConversationType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SlackConversationType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SlackConversationType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

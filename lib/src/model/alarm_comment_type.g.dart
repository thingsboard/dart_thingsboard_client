// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_comment_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmCommentType _$SYSTEM = const AlarmCommentType._('SYSTEM');
const AlarmCommentType _$OTHER = const AlarmCommentType._('OTHER');
const AlarmCommentType _$unknownDefaultOpenApi = const AlarmCommentType._(
  'unknownDefaultOpenApi',
);

AlarmCommentType _$valueOf(String name) {
  switch (name) {
    case 'SYSTEM':
      return _$SYSTEM;
    case 'OTHER':
      return _$OTHER;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmCommentType> _$values = BuiltSet<AlarmCommentType>(
  const <AlarmCommentType>[_$SYSTEM, _$OTHER, _$unknownDefaultOpenApi],
);

class _$AlarmCommentTypeMeta {
  const _$AlarmCommentTypeMeta();
  AlarmCommentType get SYSTEM => _$SYSTEM;
  AlarmCommentType get OTHER => _$OTHER;
  AlarmCommentType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AlarmCommentType valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmCommentType> get values => _$values;
}

mixin _$AlarmCommentTypeMixin {
  // ignore: non_constant_identifier_names
  _$AlarmCommentTypeMeta get AlarmCommentType => const _$AlarmCommentTypeMeta();
}

Serializer<AlarmCommentType> _$alarmCommentTypeSerializer =
    _$AlarmCommentTypeSerializer();

class _$AlarmCommentTypeSerializer
    implements PrimitiveSerializer<AlarmCommentType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SYSTEM': 'SYSTEM',
    'OTHER': 'OTHER',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SYSTEM': 'SYSTEM',
    'OTHER': 'OTHER',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmCommentType];
  @override
  final String wireName = 'AlarmCommentType';

  @override
  Object serialize(
    Serializers serializers,
    AlarmCommentType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmCommentType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmCommentType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

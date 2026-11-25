// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'white_labeling_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WhiteLabelingType _$LOGIN = const WhiteLabelingType._('LOGIN');
const WhiteLabelingType _$GENERAL = const WhiteLabelingType._('GENERAL');
const WhiteLabelingType _$MAIL_TEMPLATES = const WhiteLabelingType._(
  'MAIL_TEMPLATES',
);
const WhiteLabelingType _$SELF_REGISTRATION = const WhiteLabelingType._(
  'SELF_REGISTRATION',
);
const WhiteLabelingType _$TERMS_OF_USE = const WhiteLabelingType._(
  'TERMS_OF_USE',
);
const WhiteLabelingType _$PRIVACY_POLICY = const WhiteLabelingType._(
  'PRIVACY_POLICY',
);
const WhiteLabelingType _$unknownDefaultOpenApi = const WhiteLabelingType._(
  'unknownDefaultOpenApi',
);

WhiteLabelingType _$valueOf(String name) {
  switch (name) {
    case 'LOGIN':
      return _$LOGIN;
    case 'GENERAL':
      return _$GENERAL;
    case 'MAIL_TEMPLATES':
      return _$MAIL_TEMPLATES;
    case 'SELF_REGISTRATION':
      return _$SELF_REGISTRATION;
    case 'TERMS_OF_USE':
      return _$TERMS_OF_USE;
    case 'PRIVACY_POLICY':
      return _$PRIVACY_POLICY;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<WhiteLabelingType> _$values =
    BuiltSet<WhiteLabelingType>(const <WhiteLabelingType>[
      _$LOGIN,
      _$GENERAL,
      _$MAIL_TEMPLATES,
      _$SELF_REGISTRATION,
      _$TERMS_OF_USE,
      _$PRIVACY_POLICY,
      _$unknownDefaultOpenApi,
    ]);

class _$WhiteLabelingTypeMeta {
  const _$WhiteLabelingTypeMeta();
  WhiteLabelingType get LOGIN => _$LOGIN;
  WhiteLabelingType get GENERAL => _$GENERAL;
  WhiteLabelingType get MAIL_TEMPLATES => _$MAIL_TEMPLATES;
  WhiteLabelingType get SELF_REGISTRATION => _$SELF_REGISTRATION;
  WhiteLabelingType get TERMS_OF_USE => _$TERMS_OF_USE;
  WhiteLabelingType get PRIVACY_POLICY => _$PRIVACY_POLICY;
  WhiteLabelingType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  WhiteLabelingType valueOf(String name) => _$valueOf(name);
  BuiltSet<WhiteLabelingType> get values => _$values;
}

mixin _$WhiteLabelingTypeMixin {
  // ignore: non_constant_identifier_names
  _$WhiteLabelingTypeMeta get WhiteLabelingType =>
      const _$WhiteLabelingTypeMeta();
}

Serializer<WhiteLabelingType> _$whiteLabelingTypeSerializer =
    _$WhiteLabelingTypeSerializer();

class _$WhiteLabelingTypeSerializer
    implements PrimitiveSerializer<WhiteLabelingType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LOGIN': 'LOGIN',
    'GENERAL': 'GENERAL',
    'MAIL_TEMPLATES': 'MAIL_TEMPLATES',
    'SELF_REGISTRATION': 'SELF_REGISTRATION',
    'TERMS_OF_USE': 'TERMS_OF_USE',
    'PRIVACY_POLICY': 'PRIVACY_POLICY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LOGIN': 'LOGIN',
    'GENERAL': 'GENERAL',
    'MAIL_TEMPLATES': 'MAIL_TEMPLATES',
    'SELF_REGISTRATION': 'SELF_REGISTRATION',
    'TERMS_OF_USE': 'TERMS_OF_USE',
    'PRIVACY_POLICY': 'PRIVACY_POLICY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[WhiteLabelingType];
  @override
  final String wireName = 'WhiteLabelingType';

  @override
  Object serialize(
    Serializers serializers,
    WhiteLabelingType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WhiteLabelingType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WhiteLabelingType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

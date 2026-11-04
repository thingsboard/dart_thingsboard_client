// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AddonType _$EDGE = const AddonType._('EDGE');
const AddonType _$TRENDZ = const AddonType._('TRENDZ');
const AddonType _$WHITE_LABELING = const AddonType._('WHITE_LABELING');
const AddonType _$PROFESSIONAL_UPGRADE = const AddonType._(
  'PROFESSIONAL_UPGRADE',
);
const AddonType _$unknownDefaultOpenApi = const AddonType._(
  'unknownDefaultOpenApi',
);

AddonType _$valueOf(String name) {
  switch (name) {
    case 'EDGE':
      return _$EDGE;
    case 'TRENDZ':
      return _$TRENDZ;
    case 'WHITE_LABELING':
      return _$WHITE_LABELING;
    case 'PROFESSIONAL_UPGRADE':
      return _$PROFESSIONAL_UPGRADE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AddonType> _$values = BuiltSet<AddonType>(const <AddonType>[
  _$EDGE,
  _$TRENDZ,
  _$WHITE_LABELING,
  _$PROFESSIONAL_UPGRADE,
  _$unknownDefaultOpenApi,
]);

class _$AddonTypeMeta {
  const _$AddonTypeMeta();
  AddonType get EDGE => _$EDGE;
  AddonType get TRENDZ => _$TRENDZ;
  AddonType get WHITE_LABELING => _$WHITE_LABELING;
  AddonType get PROFESSIONAL_UPGRADE => _$PROFESSIONAL_UPGRADE;
  AddonType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AddonType valueOf(String name) => _$valueOf(name);
  BuiltSet<AddonType> get values => _$values;
}

mixin _$AddonTypeMixin {
  // ignore: non_constant_identifier_names
  _$AddonTypeMeta get AddonType => const _$AddonTypeMeta();
}

Serializer<AddonType> _$addonTypeSerializer = _$AddonTypeSerializer();

class _$AddonTypeSerializer implements PrimitiveSerializer<AddonType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EDGE': 'EDGE',
    'TRENDZ': 'TRENDZ',
    'WHITE_LABELING': 'WHITE_LABELING',
    'PROFESSIONAL_UPGRADE': 'PROFESSIONAL_UPGRADE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EDGE': 'EDGE',
    'TRENDZ': 'TRENDZ',
    'WHITE_LABELING': 'WHITE_LABELING',
    'PROFESSIONAL_UPGRADE': 'PROFESSIONAL_UPGRADE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AddonType];
  @override
  final String wireName = 'AddonType';

  @override
  Object serialize(
    Serializers serializers,
    AddonType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AddonType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AddonType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

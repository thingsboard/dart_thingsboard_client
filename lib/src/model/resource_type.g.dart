// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResourceType _$LWM2M_MODEL = const ResourceType._('LWM2M_MODEL');
const ResourceType _$JKS = const ResourceType._('JKS');
const ResourceType _$PKCS_12 = const ResourceType._('PKCS_12');
const ResourceType _$JS_MODULE = const ResourceType._('JS_MODULE');
const ResourceType _$IMAGE = const ResourceType._('IMAGE');
const ResourceType _$DASHBOARD = const ResourceType._('DASHBOARD');
const ResourceType _$GENERAL = const ResourceType._('GENERAL');
const ResourceType _$unknownDefaultOpenApi = const ResourceType._(
  'unknownDefaultOpenApi',
);

ResourceType _$valueOf(String name) {
  switch (name) {
    case 'LWM2M_MODEL':
      return _$LWM2M_MODEL;
    case 'JKS':
      return _$JKS;
    case 'PKCS_12':
      return _$PKCS_12;
    case 'JS_MODULE':
      return _$JS_MODULE;
    case 'IMAGE':
      return _$IMAGE;
    case 'DASHBOARD':
      return _$DASHBOARD;
    case 'GENERAL':
      return _$GENERAL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ResourceType> _$values =
    BuiltSet<ResourceType>(const <ResourceType>[
      _$LWM2M_MODEL,
      _$JKS,
      _$PKCS_12,
      _$JS_MODULE,
      _$IMAGE,
      _$DASHBOARD,
      _$GENERAL,
      _$unknownDefaultOpenApi,
    ]);

class _$ResourceTypeMeta {
  const _$ResourceTypeMeta();
  ResourceType get LWM2M_MODEL => _$LWM2M_MODEL;
  ResourceType get JKS => _$JKS;
  ResourceType get PKCS_12 => _$PKCS_12;
  ResourceType get JS_MODULE => _$JS_MODULE;
  ResourceType get IMAGE => _$IMAGE;
  ResourceType get DASHBOARD => _$DASHBOARD;
  ResourceType get GENERAL => _$GENERAL;
  ResourceType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ResourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<ResourceType> get values => _$values;
}

mixin _$ResourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$ResourceTypeMeta get ResourceType => const _$ResourceTypeMeta();
}

Serializer<ResourceType> _$resourceTypeSerializer = _$ResourceTypeSerializer();

class _$ResourceTypeSerializer implements PrimitiveSerializer<ResourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LWM2M_MODEL': 'LWM2M_MODEL',
    'JKS': 'JKS',
    'PKCS_12': 'PKCS_12',
    'JS_MODULE': 'JS_MODULE',
    'IMAGE': 'IMAGE',
    'DASHBOARD': 'DASHBOARD',
    'GENERAL': 'GENERAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LWM2M_MODEL': 'LWM2M_MODEL',
    'JKS': 'JKS',
    'PKCS_12': 'PKCS_12',
    'JS_MODULE': 'JS_MODULE',
    'IMAGE': 'IMAGE',
    'DASHBOARD': 'DASHBOARD',
    'GENERAL': 'GENERAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceType];
  @override
  final String wireName = 'ResourceType';

  @override
  Object serialize(
    Serializers serializers,
    ResourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ResourceType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ResourceType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

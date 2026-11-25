// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LinkType _$LINK = const LinkType._('LINK');
const LinkType _$DASHBOARD = const LinkType._('DASHBOARD');
const LinkType _$unknownDefaultOpenApi = const LinkType._(
  'unknownDefaultOpenApi',
);

LinkType _$valueOf(String name) {
  switch (name) {
    case 'LINK':
      return _$LINK;
    case 'DASHBOARD':
      return _$DASHBOARD;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<LinkType> _$values = BuiltSet<LinkType>(const <LinkType>[
  _$LINK,
  _$DASHBOARD,
  _$unknownDefaultOpenApi,
]);

class _$LinkTypeMeta {
  const _$LinkTypeMeta();
  LinkType get LINK => _$LINK;
  LinkType get DASHBOARD => _$DASHBOARD;
  LinkType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  LinkType valueOf(String name) => _$valueOf(name);
  BuiltSet<LinkType> get values => _$values;
}

mixin _$LinkTypeMixin {
  // ignore: non_constant_identifier_names
  _$LinkTypeMeta get LinkType => const _$LinkTypeMeta();
}

Serializer<LinkType> _$linkTypeSerializer = _$LinkTypeSerializer();

class _$LinkTypeSerializer implements PrimitiveSerializer<LinkType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LINK': 'LINK',
    'DASHBOARD': 'DASHBOARD',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LINK': 'LINK',
    'DASHBOARD': 'DASHBOARD',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LinkType];
  @override
  final String wireName = 'LinkType';

  @override
  Object serialize(
    Serializers serializers,
    LinkType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LinkType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LinkType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

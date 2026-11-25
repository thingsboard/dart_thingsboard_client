// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_search_direction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntitySearchDirection _$FROM = const EntitySearchDirection._('FROM');
const EntitySearchDirection _$TO = const EntitySearchDirection._('TO');
const EntitySearchDirection _$unknownDefaultOpenApi =
    const EntitySearchDirection._('unknownDefaultOpenApi');

EntitySearchDirection _$valueOf(String name) {
  switch (name) {
    case 'FROM':
      return _$FROM;
    case 'TO':
      return _$TO;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<EntitySearchDirection> _$values =
    BuiltSet<EntitySearchDirection>(const <EntitySearchDirection>[
      _$FROM,
      _$TO,
      _$unknownDefaultOpenApi,
    ]);

class _$EntitySearchDirectionMeta {
  const _$EntitySearchDirectionMeta();
  EntitySearchDirection get FROM => _$FROM;
  EntitySearchDirection get TO => _$TO;
  EntitySearchDirection get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  EntitySearchDirection valueOf(String name) => _$valueOf(name);
  BuiltSet<EntitySearchDirection> get values => _$values;
}

mixin _$EntitySearchDirectionMixin {
  // ignore: non_constant_identifier_names
  _$EntitySearchDirectionMeta get EntitySearchDirection =>
      const _$EntitySearchDirectionMeta();
}

Serializer<EntitySearchDirection> _$entitySearchDirectionSerializer =
    _$EntitySearchDirectionSerializer();

class _$EntitySearchDirectionSerializer
    implements PrimitiveSerializer<EntitySearchDirection> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FROM': 'FROM',
    'TO': 'TO',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FROM': 'FROM',
    'TO': 'TO',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EntitySearchDirection];
  @override
  final String wireName = 'EntitySearchDirection';

  @override
  Object serialize(
    Serializers serializers,
    EntitySearchDirection object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntitySearchDirection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntitySearchDirection.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

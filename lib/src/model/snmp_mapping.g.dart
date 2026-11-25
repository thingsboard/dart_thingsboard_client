// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snmp_mapping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnmpMapping extends SnmpMapping {
  @override
  final String? oid;
  @override
  final String? key;
  @override
  final DataType? dataType;

  factory _$SnmpMapping([void Function(SnmpMappingBuilder)? updates]) =>
      (SnmpMappingBuilder()..update(updates))._build();

  _$SnmpMapping._({this.oid, this.key, this.dataType}) : super._();
  @override
  SnmpMapping rebuild(void Function(SnmpMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnmpMappingBuilder toBuilder() => SnmpMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnmpMapping &&
        oid == other.oid &&
        key == other.key &&
        dataType == other.dataType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oid.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, dataType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SnmpMapping')
          ..add('oid', oid)
          ..add('key', key)
          ..add('dataType', dataType))
        .toString();
  }
}

class SnmpMappingBuilder implements Builder<SnmpMapping, SnmpMappingBuilder> {
  _$SnmpMapping? _$v;

  String? _oid;
  String? get oid => _$this._oid;
  set oid(String? oid) => _$this._oid = oid;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  DataType? _dataType;
  DataType? get dataType => _$this._dataType;
  set dataType(DataType? dataType) => _$this._dataType = dataType;

  SnmpMappingBuilder() {
    SnmpMapping._defaults(this);
  }

  SnmpMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oid = $v.oid;
      _key = $v.key;
      _dataType = $v.dataType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnmpMapping other) {
    _$v = other as _$SnmpMapping;
  }

  @override
  void update(void Function(SnmpMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnmpMapping build() => _build();

  _$SnmpMapping _build() {
    final _$result =
        _$v ?? _$SnmpMapping._(oid: oid, key: key, dataType: dataType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

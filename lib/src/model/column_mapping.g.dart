// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column_mapping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ColumnMapping extends ColumnMapping {
  @override
  final BulkImportColumnType? type;
  @override
  final String? key;

  factory _$ColumnMapping([void Function(ColumnMappingBuilder)? updates]) =>
      (ColumnMappingBuilder()..update(updates))._build();

  _$ColumnMapping._({this.type, this.key}) : super._();
  @override
  ColumnMapping rebuild(void Function(ColumnMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColumnMappingBuilder toBuilder() => ColumnMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColumnMapping && type == other.type && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ColumnMapping')
          ..add('type', type)
          ..add('key', key))
        .toString();
  }
}

class ColumnMappingBuilder
    implements Builder<ColumnMapping, ColumnMappingBuilder> {
  _$ColumnMapping? _$v;

  BulkImportColumnType? _type;
  BulkImportColumnType? get type => _$this._type;
  set type(BulkImportColumnType? type) => _$this._type = type;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  ColumnMappingBuilder() {
    ColumnMapping._defaults(this);
  }

  ColumnMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ColumnMapping other) {
    _$v = other as _$ColumnMapping;
  }

  @override
  void update(void Function(ColumnMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ColumnMapping build() => _build();

  _$ColumnMapping _build() {
    final _$result = _$v ?? _$ColumnMapping._(type: type, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

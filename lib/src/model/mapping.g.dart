// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Mapping extends Mapping {
  @override
  final BuiltList<ColumnMapping>? columns;
  @override
  final String? delimiter;
  @override
  final bool? updateFlag;
  @override
  final bool? header;

  factory _$Mapping([void Function(MappingBuilder)? updates]) =>
      (MappingBuilder()..update(updates))._build();

  _$Mapping._({this.columns, this.delimiter, this.updateFlag, this.header})
    : super._();
  @override
  Mapping rebuild(void Function(MappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingBuilder toBuilder() => MappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mapping &&
        columns == other.columns &&
        delimiter == other.delimiter &&
        updateFlag == other.updateFlag &&
        header == other.header;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, columns.hashCode);
    _$hash = $jc(_$hash, delimiter.hashCode);
    _$hash = $jc(_$hash, updateFlag.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Mapping')
          ..add('columns', columns)
          ..add('delimiter', delimiter)
          ..add('updateFlag', updateFlag)
          ..add('header', header))
        .toString();
  }
}

class MappingBuilder implements Builder<Mapping, MappingBuilder> {
  _$Mapping? _$v;

  ListBuilder<ColumnMapping>? _columns;
  ListBuilder<ColumnMapping> get columns =>
      _$this._columns ??= ListBuilder<ColumnMapping>();
  set columns(ListBuilder<ColumnMapping>? columns) => _$this._columns = columns;

  String? _delimiter;
  String? get delimiter => _$this._delimiter;
  set delimiter(String? delimiter) => _$this._delimiter = delimiter;

  bool? _updateFlag;
  bool? get updateFlag => _$this._updateFlag;
  set updateFlag(bool? updateFlag) => _$this._updateFlag = updateFlag;

  bool? _header;
  bool? get header => _$this._header;
  set header(bool? header) => _$this._header = header;

  MappingBuilder() {
    Mapping._defaults(this);
  }

  MappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _columns = $v.columns?.toBuilder();
      _delimiter = $v.delimiter;
      _updateFlag = $v.updateFlag;
      _header = $v.header;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Mapping other) {
    _$v = other as _$Mapping;
  }

  @override
  void update(void Function(MappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Mapping build() => _build();

  _$Mapping _build() {
    _$Mapping _$result;
    try {
      _$result =
          _$v ??
          _$Mapping._(
            columns: _columns?.build(),
            delimiter: delimiter,
            updateFlag: updateFlag,
            header: header,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'columns';
        _columns?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Mapping',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

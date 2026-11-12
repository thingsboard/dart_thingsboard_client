// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ColumnSettings extends ColumnSettings {
  @override
  final String? columnWidth;
  @override
  final CellSettings? header;
  @override
  final CellSettings? cell;
  @override
  final DataKeySettingsType type;

  factory _$ColumnSettings([void Function(ColumnSettingsBuilder)? updates]) =>
      (ColumnSettingsBuilder()..update(updates))._build();

  _$ColumnSettings._({
    this.columnWidth,
    this.header,
    this.cell,
    required this.type,
  }) : super._();
  @override
  ColumnSettings rebuild(void Function(ColumnSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColumnSettingsBuilder toBuilder() => ColumnSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColumnSettings &&
        columnWidth == other.columnWidth &&
        header == other.header &&
        cell == other.cell &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, columnWidth.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ColumnSettings')
          ..add('columnWidth', columnWidth)
          ..add('header', header)
          ..add('cell', cell)
          ..add('type', type))
        .toString();
  }
}

class ColumnSettingsBuilder
    implements
        Builder<ColumnSettings, ColumnSettingsBuilder>,
        DataKeySettingsBuilder {
  _$ColumnSettings? _$v;

  String? _columnWidth;
  String? get columnWidth => _$this._columnWidth;
  set columnWidth(covariant String? columnWidth) =>
      _$this._columnWidth = columnWidth;

  CellSettingsBuilder? _header;
  CellSettingsBuilder get header => _$this._header ??= CellSettingsBuilder();
  set header(covariant CellSettingsBuilder? header) => _$this._header = header;

  CellSettingsBuilder? _cell;
  CellSettingsBuilder get cell => _$this._cell ??= CellSettingsBuilder();
  set cell(covariant CellSettingsBuilder? cell) => _$this._cell = cell;

  DataKeySettingsType? _type;
  DataKeySettingsType? get type => _$this._type;
  set type(covariant DataKeySettingsType? type) => _$this._type = type;

  ColumnSettingsBuilder() {
    ColumnSettings._defaults(this);
  }

  ColumnSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _columnWidth = $v.columnWidth;
      _header = $v.header?.toBuilder();
      _cell = $v.cell?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ColumnSettings other) {
    _$v = other as _$ColumnSettings;
  }

  @override
  void update(void Function(ColumnSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ColumnSettings build() => _build();

  _$ColumnSettings _build() {
    _$ColumnSettings _$result;
    try {
      _$result =
          _$v ??
          _$ColumnSettings._(
            columnWidth: columnWidth,
            header: _header?.build(),
            cell: _cell?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ColumnSettings',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'header';
        _header?.build();
        _$failedField = 'cell';
        _cell?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ColumnSettings',
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_sort_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableSortOrder extends TableSortOrder {
  @override
  final String? column;
  @override
  final TableSortDirection? direction;

  factory _$TableSortOrder([void Function(TableSortOrderBuilder)? updates]) =>
      (TableSortOrderBuilder()..update(updates))._build();

  _$TableSortOrder._({this.column, this.direction}) : super._();
  @override
  TableSortOrder rebuild(void Function(TableSortOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableSortOrderBuilder toBuilder() => TableSortOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableSortOrder &&
        column == other.column &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, column.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TableSortOrder')
          ..add('column', column)
          ..add('direction', direction))
        .toString();
  }
}

class TableSortOrderBuilder
    implements Builder<TableSortOrder, TableSortOrderBuilder> {
  _$TableSortOrder? _$v;

  String? _column;
  String? get column => _$this._column;
  set column(String? column) => _$this._column = column;

  TableSortDirection? _direction;
  TableSortDirection? get direction => _$this._direction;
  set direction(TableSortDirection? direction) => _$this._direction = direction;

  TableSortOrderBuilder() {
    TableSortOrder._defaults(this);
  }

  TableSortOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _column = $v.column;
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableSortOrder other) {
    _$v = other as _$TableSortOrder;
  }

  @override
  void update(void Function(TableSortOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableSortOrder build() => _build();

  _$TableSortOrder _build() {
    final _$result =
        _$v ?? _$TableSortOrder._(column: column, direction: direction);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

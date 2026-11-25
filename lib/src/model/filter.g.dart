// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Filter extends Filter {
  @override
  final String? id;
  @override
  final String? filter;
  @override
  final BuiltList<KeyFilter>? keyFilters;

  factory _$Filter([void Function(FilterBuilder)? updates]) =>
      (FilterBuilder()..update(updates))._build();

  _$Filter._({this.id, this.filter, this.keyFilters}) : super._();
  @override
  Filter rebuild(void Function(FilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterBuilder toBuilder() => FilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Filter &&
        id == other.id &&
        filter == other.filter &&
        keyFilters == other.keyFilters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, keyFilters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Filter')
          ..add('id', id)
          ..add('filter', filter)
          ..add('keyFilters', keyFilters))
        .toString();
  }
}

class FilterBuilder implements Builder<Filter, FilterBuilder> {
  _$Filter? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _filter;
  String? get filter => _$this._filter;
  set filter(String? filter) => _$this._filter = filter;

  ListBuilder<KeyFilter>? _keyFilters;
  ListBuilder<KeyFilter> get keyFilters =>
      _$this._keyFilters ??= ListBuilder<KeyFilter>();
  set keyFilters(ListBuilder<KeyFilter>? keyFilters) =>
      _$this._keyFilters = keyFilters;

  FilterBuilder() {
    Filter._defaults(this);
  }

  FilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _filter = $v.filter;
      _keyFilters = $v.keyFilters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Filter other) {
    _$v = other as _$Filter;
  }

  @override
  void update(void Function(FilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Filter build() => _build();

  _$Filter _build() {
    _$Filter _$result;
    try {
      _$result =
          _$v ??
          _$Filter._(id: id, filter: filter, keyFilters: _keyFilters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyFilters';
        _keyFilters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Filter',
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

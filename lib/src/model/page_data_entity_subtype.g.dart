// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_entity_subtype.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataEntitySubtype extends PageDataEntitySubtype {
  @override
  final BuiltList<EntitySubtype>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataEntitySubtype([
    void Function(PageDataEntitySubtypeBuilder)? updates,
  ]) => (PageDataEntitySubtypeBuilder()..update(updates))._build();

  _$PageDataEntitySubtype._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataEntitySubtype rebuild(
    void Function(PageDataEntitySubtypeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataEntitySubtypeBuilder toBuilder() =>
      PageDataEntitySubtypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataEntitySubtype &&
        data == other.data &&
        totalPages == other.totalPages &&
        totalElements == other.totalElements &&
        hasNext == other.hasNext;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, totalElements.hashCode);
    _$hash = $jc(_$hash, hasNext.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageDataEntitySubtype')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataEntitySubtypeBuilder
    implements Builder<PageDataEntitySubtype, PageDataEntitySubtypeBuilder> {
  _$PageDataEntitySubtype? _$v;

  ListBuilder<EntitySubtype>? _data;
  ListBuilder<EntitySubtype> get data =>
      _$this._data ??= ListBuilder<EntitySubtype>();
  set data(ListBuilder<EntitySubtype>? data) => _$this._data = data;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalElements;
  int? get totalElements => _$this._totalElements;
  set totalElements(int? totalElements) =>
      _$this._totalElements = totalElements;

  bool? _hasNext;
  bool? get hasNext => _$this._hasNext;
  set hasNext(bool? hasNext) => _$this._hasNext = hasNext;

  PageDataEntitySubtypeBuilder() {
    PageDataEntitySubtype._defaults(this);
  }

  PageDataEntitySubtypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _totalPages = $v.totalPages;
      _totalElements = $v.totalElements;
      _hasNext = $v.hasNext;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageDataEntitySubtype other) {
    _$v = other as _$PageDataEntitySubtype;
  }

  @override
  void update(void Function(PageDataEntitySubtypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataEntitySubtype build() => _build();

  _$PageDataEntitySubtype _build() {
    _$PageDataEntitySubtype _$result;
    try {
      _$result =
          _$v ??
          _$PageDataEntitySubtype._(
            data: _data?.build(),
            totalPages: totalPages,
            totalElements: totalElements,
            hasNext: hasNext,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PageDataEntitySubtype',
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

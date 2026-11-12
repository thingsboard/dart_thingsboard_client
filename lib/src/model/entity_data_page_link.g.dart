// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_data_page_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityDataPageLink extends EntityDataPageLink {
  @override
  final int? pageSize;
  @override
  final int? page;
  @override
  final String? textSearch;
  @override
  final EntityDataSortOrder? sortOrder;
  @override
  final bool? dynamic_;

  factory _$EntityDataPageLink([
    void Function(EntityDataPageLinkBuilder)? updates,
  ]) => (EntityDataPageLinkBuilder()..update(updates))._build();

  _$EntityDataPageLink._({
    this.pageSize,
    this.page,
    this.textSearch,
    this.sortOrder,
    this.dynamic_,
  }) : super._();
  @override
  EntityDataPageLink rebuild(
    void Function(EntityDataPageLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityDataPageLinkBuilder toBuilder() =>
      EntityDataPageLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityDataPageLink &&
        pageSize == other.pageSize &&
        page == other.page &&
        textSearch == other.textSearch &&
        sortOrder == other.sortOrder &&
        dynamic_ == other.dynamic_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, textSearch.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, dynamic_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityDataPageLink')
          ..add('pageSize', pageSize)
          ..add('page', page)
          ..add('textSearch', textSearch)
          ..add('sortOrder', sortOrder)
          ..add('dynamic_', dynamic_))
        .toString();
  }
}

class EntityDataPageLinkBuilder
    implements Builder<EntityDataPageLink, EntityDataPageLinkBuilder> {
  _$EntityDataPageLink? _$v;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  String? _textSearch;
  String? get textSearch => _$this._textSearch;
  set textSearch(String? textSearch) => _$this._textSearch = textSearch;

  EntityDataSortOrderBuilder? _sortOrder;
  EntityDataSortOrderBuilder get sortOrder =>
      _$this._sortOrder ??= EntityDataSortOrderBuilder();
  set sortOrder(EntityDataSortOrderBuilder? sortOrder) =>
      _$this._sortOrder = sortOrder;

  bool? _dynamic_;
  bool? get dynamic_ => _$this._dynamic_;
  set dynamic_(bool? dynamic_) => _$this._dynamic_ = dynamic_;

  EntityDataPageLinkBuilder() {
    EntityDataPageLink._defaults(this);
  }

  EntityDataPageLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageSize = $v.pageSize;
      _page = $v.page;
      _textSearch = $v.textSearch;
      _sortOrder = $v.sortOrder?.toBuilder();
      _dynamic_ = $v.dynamic_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityDataPageLink other) {
    _$v = other as _$EntityDataPageLink;
  }

  @override
  void update(void Function(EntityDataPageLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityDataPageLink build() => _build();

  _$EntityDataPageLink _build() {
    _$EntityDataPageLink _$result;
    try {
      _$result =
          _$v ??
          _$EntityDataPageLink._(
            pageSize: pageSize,
            page: page,
            textSearch: textSearch,
            sortOrder: _sortOrder?.build(),
            dynamic_: dynamic_,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sortOrder';
        _sortOrder?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityDataPageLink',
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

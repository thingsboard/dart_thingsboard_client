// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_entity_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataEntityInfo extends PageDataEntityInfo {
  @override
  final BuiltList<EntityInfo>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataEntityInfo([
    void Function(PageDataEntityInfoBuilder)? updates,
  ]) => (PageDataEntityInfoBuilder()..update(updates))._build();

  _$PageDataEntityInfo._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataEntityInfo rebuild(
    void Function(PageDataEntityInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataEntityInfoBuilder toBuilder() =>
      PageDataEntityInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataEntityInfo &&
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
    return (newBuiltValueToStringHelper(r'PageDataEntityInfo')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataEntityInfoBuilder
    implements Builder<PageDataEntityInfo, PageDataEntityInfoBuilder> {
  _$PageDataEntityInfo? _$v;

  ListBuilder<EntityInfo>? _data;
  ListBuilder<EntityInfo> get data =>
      _$this._data ??= ListBuilder<EntityInfo>();
  set data(ListBuilder<EntityInfo>? data) => _$this._data = data;

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

  PageDataEntityInfoBuilder() {
    PageDataEntityInfo._defaults(this);
  }

  PageDataEntityInfoBuilder get _$this {
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
  void replace(PageDataEntityInfo other) {
    _$v = other as _$PageDataEntityInfo;
  }

  @override
  void update(void Function(PageDataEntityInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataEntityInfo build() => _build();

  _$PageDataEntityInfo _build() {
    _$PageDataEntityInfo _$result;
    try {
      _$result =
          _$v ??
          _$PageDataEntityInfo._(
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
          r'PageDataEntityInfo',
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

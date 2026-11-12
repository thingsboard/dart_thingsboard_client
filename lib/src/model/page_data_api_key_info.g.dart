// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_api_key_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataApiKeyInfo extends PageDataApiKeyInfo {
  @override
  final BuiltList<ApiKeyInfo>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataApiKeyInfo([
    void Function(PageDataApiKeyInfoBuilder)? updates,
  ]) => (PageDataApiKeyInfoBuilder()..update(updates))._build();

  _$PageDataApiKeyInfo._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataApiKeyInfo rebuild(
    void Function(PageDataApiKeyInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataApiKeyInfoBuilder toBuilder() =>
      PageDataApiKeyInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataApiKeyInfo &&
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
    return (newBuiltValueToStringHelper(r'PageDataApiKeyInfo')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataApiKeyInfoBuilder
    implements Builder<PageDataApiKeyInfo, PageDataApiKeyInfoBuilder> {
  _$PageDataApiKeyInfo? _$v;

  ListBuilder<ApiKeyInfo>? _data;
  ListBuilder<ApiKeyInfo> get data =>
      _$this._data ??= ListBuilder<ApiKeyInfo>();
  set data(ListBuilder<ApiKeyInfo>? data) => _$this._data = data;

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

  PageDataApiKeyInfoBuilder() {
    PageDataApiKeyInfo._defaults(this);
  }

  PageDataApiKeyInfoBuilder get _$this {
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
  void replace(PageDataApiKeyInfo other) {
    _$v = other as _$PageDataApiKeyInfo;
  }

  @override
  void update(void Function(PageDataApiKeyInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataApiKeyInfo build() => _build();

  _$PageDataApiKeyInfo _build() {
    _$PageDataApiKeyInfo _$result;
    try {
      _$result =
          _$v ??
          _$PageDataApiKeyInfo._(
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
          r'PageDataApiKeyInfo',
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_secret_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataSecretInfo extends PageDataSecretInfo {
  @override
  final BuiltList<SecretInfo>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataSecretInfo([
    void Function(PageDataSecretInfoBuilder)? updates,
  ]) => (PageDataSecretInfoBuilder()..update(updates))._build();

  _$PageDataSecretInfo._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataSecretInfo rebuild(
    void Function(PageDataSecretInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataSecretInfoBuilder toBuilder() =>
      PageDataSecretInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataSecretInfo &&
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
    return (newBuiltValueToStringHelper(r'PageDataSecretInfo')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataSecretInfoBuilder
    implements Builder<PageDataSecretInfo, PageDataSecretInfoBuilder> {
  _$PageDataSecretInfo? _$v;

  ListBuilder<SecretInfo>? _data;
  ListBuilder<SecretInfo> get data =>
      _$this._data ??= ListBuilder<SecretInfo>();
  set data(ListBuilder<SecretInfo>? data) => _$this._data = data;

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

  PageDataSecretInfoBuilder() {
    PageDataSecretInfo._defaults(this);
  }

  PageDataSecretInfoBuilder get _$this {
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
  void replace(PageDataSecretInfo other) {
    _$v = other as _$PageDataSecretInfo;
  }

  @override
  void update(void Function(PageDataSecretInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataSecretInfo build() => _build();

  _$PageDataSecretInfo _build() {
    _$PageDataSecretInfo _$result;
    try {
      _$result =
          _$v ??
          _$PageDataSecretInfo._(
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
          r'PageDataSecretInfo',
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_rpc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataRpc extends PageDataRpc {
  @override
  final BuiltList<Rpc>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataRpc([void Function(PageDataRpcBuilder)? updates]) =>
      (PageDataRpcBuilder()..update(updates))._build();

  _$PageDataRpc._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataRpc rebuild(void Function(PageDataRpcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageDataRpcBuilder toBuilder() => PageDataRpcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataRpc &&
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
    return (newBuiltValueToStringHelper(r'PageDataRpc')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataRpcBuilder implements Builder<PageDataRpc, PageDataRpcBuilder> {
  _$PageDataRpc? _$v;

  ListBuilder<Rpc>? _data;
  ListBuilder<Rpc> get data => _$this._data ??= ListBuilder<Rpc>();
  set data(ListBuilder<Rpc>? data) => _$this._data = data;

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

  PageDataRpcBuilder() {
    PageDataRpc._defaults(this);
  }

  PageDataRpcBuilder get _$this {
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
  void replace(PageDataRpc other) {
    _$v = other as _$PageDataRpc;
  }

  @override
  void update(void Function(PageDataRpcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataRpc build() => _build();

  _$PageDataRpc _build() {
    _$PageDataRpc _$result;
    try {
      _$result =
          _$v ??
          _$PageDataRpc._(
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
          r'PageDataRpc',
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

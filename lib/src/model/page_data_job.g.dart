// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataJob extends PageDataJob {
  @override
  final BuiltList<Job>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataJob([void Function(PageDataJobBuilder)? updates]) =>
      (PageDataJobBuilder()..update(updates))._build();

  _$PageDataJob._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataJob rebuild(void Function(PageDataJobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageDataJobBuilder toBuilder() => PageDataJobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataJob &&
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
    return (newBuiltValueToStringHelper(r'PageDataJob')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataJobBuilder implements Builder<PageDataJob, PageDataJobBuilder> {
  _$PageDataJob? _$v;

  ListBuilder<Job>? _data;
  ListBuilder<Job> get data => _$this._data ??= ListBuilder<Job>();
  set data(ListBuilder<Job>? data) => _$this._data = data;

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

  PageDataJobBuilder() {
    PageDataJob._defaults(this);
  }

  PageDataJobBuilder get _$this {
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
  void replace(PageDataJob other) {
    _$v = other as _$PageDataJob;
  }

  @override
  void update(void Function(PageDataJobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataJob build() => _build();

  _$PageDataJob _build() {
    _$PageDataJob _$result;
    try {
      _$result =
          _$v ??
          _$PageDataJob._(
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
          r'PageDataJob',
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

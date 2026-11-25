// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_queue_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataQueueStats extends PageDataQueueStats {
  @override
  final BuiltList<QueueStats>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataQueueStats([
    void Function(PageDataQueueStatsBuilder)? updates,
  ]) => (PageDataQueueStatsBuilder()..update(updates))._build();

  _$PageDataQueueStats._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataQueueStats rebuild(
    void Function(PageDataQueueStatsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataQueueStatsBuilder toBuilder() =>
      PageDataQueueStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataQueueStats &&
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
    return (newBuiltValueToStringHelper(r'PageDataQueueStats')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataQueueStatsBuilder
    implements Builder<PageDataQueueStats, PageDataQueueStatsBuilder> {
  _$PageDataQueueStats? _$v;

  ListBuilder<QueueStats>? _data;
  ListBuilder<QueueStats> get data =>
      _$this._data ??= ListBuilder<QueueStats>();
  set data(ListBuilder<QueueStats>? data) => _$this._data = data;

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

  PageDataQueueStatsBuilder() {
    PageDataQueueStats._defaults(this);
  }

  PageDataQueueStatsBuilder get _$this {
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
  void replace(PageDataQueueStats other) {
    _$v = other as _$PageDataQueueStats;
  }

  @override
  void update(void Function(PageDataQueueStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataQueueStats build() => _build();

  _$PageDataQueueStats _build() {
    _$PageDataQueueStats _$result;
    try {
      _$result =
          _$v ??
          _$PageDataQueueStats._(
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
          r'PageDataQueueStats',
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

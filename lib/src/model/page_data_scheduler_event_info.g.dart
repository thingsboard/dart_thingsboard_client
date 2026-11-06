// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_scheduler_event_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataSchedulerEventInfo extends PageDataSchedulerEventInfo {
  @override
  final BuiltList<SchedulerEventInfo>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataSchedulerEventInfo([
    void Function(PageDataSchedulerEventInfoBuilder)? updates,
  ]) => (PageDataSchedulerEventInfoBuilder()..update(updates))._build();

  _$PageDataSchedulerEventInfo._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataSchedulerEventInfo rebuild(
    void Function(PageDataSchedulerEventInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataSchedulerEventInfoBuilder toBuilder() =>
      PageDataSchedulerEventInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataSchedulerEventInfo &&
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
    return (newBuiltValueToStringHelper(r'PageDataSchedulerEventInfo')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataSchedulerEventInfoBuilder
    implements
        Builder<PageDataSchedulerEventInfo, PageDataSchedulerEventInfoBuilder> {
  _$PageDataSchedulerEventInfo? _$v;

  ListBuilder<SchedulerEventInfo>? _data;
  ListBuilder<SchedulerEventInfo> get data =>
      _$this._data ??= ListBuilder<SchedulerEventInfo>();
  set data(ListBuilder<SchedulerEventInfo>? data) => _$this._data = data;

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

  PageDataSchedulerEventInfoBuilder() {
    PageDataSchedulerEventInfo._defaults(this);
  }

  PageDataSchedulerEventInfoBuilder get _$this {
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
  void replace(PageDataSchedulerEventInfo other) {
    _$v = other as _$PageDataSchedulerEventInfo;
  }

  @override
  void update(void Function(PageDataSchedulerEventInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataSchedulerEventInfo build() => _build();

  _$PageDataSchedulerEventInfo _build() {
    _$PageDataSchedulerEventInfo _$result;
    try {
      _$result =
          _$v ??
          _$PageDataSchedulerEventInfo._(
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
          r'PageDataSchedulerEventInfo',
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

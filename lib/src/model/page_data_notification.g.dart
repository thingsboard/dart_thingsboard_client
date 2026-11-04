// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataNotification extends PageDataNotification {
  @override
  final BuiltList<Notification>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataNotification([
    void Function(PageDataNotificationBuilder)? updates,
  ]) => (PageDataNotificationBuilder()..update(updates))._build();

  _$PageDataNotification._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataNotification rebuild(
    void Function(PageDataNotificationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataNotificationBuilder toBuilder() =>
      PageDataNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataNotification &&
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
    return (newBuiltValueToStringHelper(r'PageDataNotification')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataNotificationBuilder
    implements Builder<PageDataNotification, PageDataNotificationBuilder> {
  _$PageDataNotification? _$v;

  ListBuilder<Notification>? _data;
  ListBuilder<Notification> get data =>
      _$this._data ??= ListBuilder<Notification>();
  set data(ListBuilder<Notification>? data) => _$this._data = data;

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

  PageDataNotificationBuilder() {
    PageDataNotification._defaults(this);
  }

  PageDataNotificationBuilder get _$this {
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
  void replace(PageDataNotification other) {
    _$v = other as _$PageDataNotification;
  }

  @override
  void update(void Function(PageDataNotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataNotification build() => _build();

  _$PageDataNotification _build() {
    _$PageDataNotification _$result;
    try {
      _$result =
          _$v ??
          _$PageDataNotification._(
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
          r'PageDataNotification',
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

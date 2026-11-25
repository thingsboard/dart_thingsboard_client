// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_contact_based_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataContactBasedObject extends PageDataContactBasedObject {
  @override
  final BuiltList<ContactBasedObject>? data;
  @override
  final bool? hasNext;
  @override
  final int? totalElements;
  @override
  final int? totalPages;

  factory _$PageDataContactBasedObject([
    void Function(PageDataContactBasedObjectBuilder)? updates,
  ]) => (PageDataContactBasedObjectBuilder()..update(updates))._build();

  _$PageDataContactBasedObject._({
    this.data,
    this.hasNext,
    this.totalElements,
    this.totalPages,
  }) : super._();
  @override
  PageDataContactBasedObject rebuild(
    void Function(PageDataContactBasedObjectBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataContactBasedObjectBuilder toBuilder() =>
      PageDataContactBasedObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataContactBasedObject &&
        data == other.data &&
        hasNext == other.hasNext &&
        totalElements == other.totalElements &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, hasNext.hashCode);
    _$hash = $jc(_$hash, totalElements.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageDataContactBasedObject')
          ..add('data', data)
          ..add('hasNext', hasNext)
          ..add('totalElements', totalElements)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class PageDataContactBasedObjectBuilder
    implements
        Builder<PageDataContactBasedObject, PageDataContactBasedObjectBuilder> {
  _$PageDataContactBasedObject? _$v;

  ListBuilder<ContactBasedObject>? _data;
  ListBuilder<ContactBasedObject> get data =>
      _$this._data ??= ListBuilder<ContactBasedObject>();
  set data(ListBuilder<ContactBasedObject>? data) => _$this._data = data;

  bool? _hasNext;
  bool? get hasNext => _$this._hasNext;
  set hasNext(bool? hasNext) => _$this._hasNext = hasNext;

  int? _totalElements;
  int? get totalElements => _$this._totalElements;
  set totalElements(int? totalElements) =>
      _$this._totalElements = totalElements;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  PageDataContactBasedObjectBuilder() {
    PageDataContactBasedObject._defaults(this);
  }

  PageDataContactBasedObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _hasNext = $v.hasNext;
      _totalElements = $v.totalElements;
      _totalPages = $v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageDataContactBasedObject other) {
    _$v = other as _$PageDataContactBasedObject;
  }

  @override
  void update(void Function(PageDataContactBasedObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataContactBasedObject build() => _build();

  _$PageDataContactBasedObject _build() {
    _$PageDataContactBasedObject _$result;
    try {
      _$result =
          _$v ??
          _$PageDataContactBasedObject._(
            data: _data?.build(),
            hasNext: hasNext,
            totalElements: totalElements,
            totalPages: totalPages,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PageDataContactBasedObject',
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

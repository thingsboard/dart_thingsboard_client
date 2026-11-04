// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_tenant_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataTenantProfile extends PageDataTenantProfile {
  @override
  final BuiltList<TenantProfile>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataTenantProfile([
    void Function(PageDataTenantProfileBuilder)? updates,
  ]) => (PageDataTenantProfileBuilder()..update(updates))._build();

  _$PageDataTenantProfile._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataTenantProfile rebuild(
    void Function(PageDataTenantProfileBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataTenantProfileBuilder toBuilder() =>
      PageDataTenantProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataTenantProfile &&
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
    return (newBuiltValueToStringHelper(r'PageDataTenantProfile')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataTenantProfileBuilder
    implements Builder<PageDataTenantProfile, PageDataTenantProfileBuilder> {
  _$PageDataTenantProfile? _$v;

  ListBuilder<TenantProfile>? _data;
  ListBuilder<TenantProfile> get data =>
      _$this._data ??= ListBuilder<TenantProfile>();
  set data(ListBuilder<TenantProfile>? data) => _$this._data = data;

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

  PageDataTenantProfileBuilder() {
    PageDataTenantProfile._defaults(this);
  }

  PageDataTenantProfileBuilder get _$this {
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
  void replace(PageDataTenantProfile other) {
    _$v = other as _$PageDataTenantProfile;
  }

  @override
  void update(void Function(PageDataTenantProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataTenantProfile build() => _build();

  _$PageDataTenantProfile _build() {
    _$PageDataTenantProfile _$result;
    try {
      _$result =
          _$v ??
          _$PageDataTenantProfile._(
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
          r'PageDataTenantProfile',
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

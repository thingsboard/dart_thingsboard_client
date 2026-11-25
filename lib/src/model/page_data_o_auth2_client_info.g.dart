// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_o_auth2_client_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataOAuth2ClientInfo extends PageDataOAuth2ClientInfo {
  @override
  final BuiltList<OAuth2ClientInfo>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataOAuth2ClientInfo([
    void Function(PageDataOAuth2ClientInfoBuilder)? updates,
  ]) => (PageDataOAuth2ClientInfoBuilder()..update(updates))._build();

  _$PageDataOAuth2ClientInfo._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataOAuth2ClientInfo rebuild(
    void Function(PageDataOAuth2ClientInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataOAuth2ClientInfoBuilder toBuilder() =>
      PageDataOAuth2ClientInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataOAuth2ClientInfo &&
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
    return (newBuiltValueToStringHelper(r'PageDataOAuth2ClientInfo')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataOAuth2ClientInfoBuilder
    implements
        Builder<PageDataOAuth2ClientInfo, PageDataOAuth2ClientInfoBuilder> {
  _$PageDataOAuth2ClientInfo? _$v;

  ListBuilder<OAuth2ClientInfo>? _data;
  ListBuilder<OAuth2ClientInfo> get data =>
      _$this._data ??= ListBuilder<OAuth2ClientInfo>();
  set data(ListBuilder<OAuth2ClientInfo>? data) => _$this._data = data;

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

  PageDataOAuth2ClientInfoBuilder() {
    PageDataOAuth2ClientInfo._defaults(this);
  }

  PageDataOAuth2ClientInfoBuilder get _$this {
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
  void replace(PageDataOAuth2ClientInfo other) {
    _$v = other as _$PageDataOAuth2ClientInfo;
  }

  @override
  void update(void Function(PageDataOAuth2ClientInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataOAuth2ClientInfo build() => _build();

  _$PageDataOAuth2ClientInfo _build() {
    _$PageDataOAuth2ClientInfo _$result;
    try {
      _$result =
          _$v ??
          _$PageDataOAuth2ClientInfo._(
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
          r'PageDataOAuth2ClientInfo',
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

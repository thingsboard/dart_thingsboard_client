// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_data_device_profile_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDataDeviceProfileInfo extends PageDataDeviceProfileInfo {
  @override
  final BuiltList<DeviceProfileInfo>? data;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? hasNext;

  factory _$PageDataDeviceProfileInfo([
    void Function(PageDataDeviceProfileInfoBuilder)? updates,
  ]) => (PageDataDeviceProfileInfoBuilder()..update(updates))._build();

  _$PageDataDeviceProfileInfo._({
    this.data,
    this.totalPages,
    this.totalElements,
    this.hasNext,
  }) : super._();
  @override
  PageDataDeviceProfileInfo rebuild(
    void Function(PageDataDeviceProfileInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageDataDeviceProfileInfoBuilder toBuilder() =>
      PageDataDeviceProfileInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDataDeviceProfileInfo &&
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
    return (newBuiltValueToStringHelper(r'PageDataDeviceProfileInfo')
          ..add('data', data)
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('hasNext', hasNext))
        .toString();
  }
}

class PageDataDeviceProfileInfoBuilder
    implements
        Builder<PageDataDeviceProfileInfo, PageDataDeviceProfileInfoBuilder> {
  _$PageDataDeviceProfileInfo? _$v;

  ListBuilder<DeviceProfileInfo>? _data;
  ListBuilder<DeviceProfileInfo> get data =>
      _$this._data ??= ListBuilder<DeviceProfileInfo>();
  set data(ListBuilder<DeviceProfileInfo>? data) => _$this._data = data;

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

  PageDataDeviceProfileInfoBuilder() {
    PageDataDeviceProfileInfo._defaults(this);
  }

  PageDataDeviceProfileInfoBuilder get _$this {
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
  void replace(PageDataDeviceProfileInfo other) {
    _$v = other as _$PageDataDeviceProfileInfo;
  }

  @override
  void update(void Function(PageDataDeviceProfileInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageDataDeviceProfileInfo build() => _build();

  _$PageDataDeviceProfileInfo _build() {
    _$PageDataDeviceProfileInfo _$result;
    try {
      _$result =
          _$v ??
          _$PageDataDeviceProfileInfo._(
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
          r'PageDataDeviceProfileInfo',
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

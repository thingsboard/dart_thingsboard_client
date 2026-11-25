// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_customer_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShortCustomerInfo extends ShortCustomerInfo {
  @override
  final CustomerId? customerId;
  @override
  final String? title;
  @override
  final bool? public;

  factory _$ShortCustomerInfo([
    void Function(ShortCustomerInfoBuilder)? updates,
  ]) => (ShortCustomerInfoBuilder()..update(updates))._build();

  _$ShortCustomerInfo._({this.customerId, this.title, this.public}) : super._();
  @override
  ShortCustomerInfo rebuild(void Function(ShortCustomerInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortCustomerInfoBuilder toBuilder() =>
      ShortCustomerInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortCustomerInfo &&
        customerId == other.customerId &&
        title == other.title &&
        public == other.public;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShortCustomerInfo')
          ..add('customerId', customerId)
          ..add('title', title)
          ..add('public', public))
        .toString();
  }
}

class ShortCustomerInfoBuilder
    implements Builder<ShortCustomerInfo, ShortCustomerInfoBuilder> {
  _$ShortCustomerInfo? _$v;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  ShortCustomerInfoBuilder() {
    ShortCustomerInfo._defaults(this);
  }

  ShortCustomerInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId?.toBuilder();
      _title = $v.title;
      _public = $v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortCustomerInfo other) {
    _$v = other as _$ShortCustomerInfo;
  }

  @override
  void update(void Function(ShortCustomerInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShortCustomerInfo build() => _build();

  _$ShortCustomerInfo _build() {
    _$ShortCustomerInfo _$result;
    try {
      _$result =
          _$v ??
          _$ShortCustomerInfo._(
            customerId: _customerId?.build(),
            title: title,
            public: public,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customerId';
        _customerId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ShortCustomerInfo',
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

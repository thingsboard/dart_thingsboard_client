// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Vendor extends Vendor {
  @override
  final String? name;
  @override
  final String? logo;

  factory _$Vendor([void Function(VendorBuilder)? updates]) =>
      (VendorBuilder()..update(updates))._build();

  _$Vendor._({this.name, this.logo}) : super._();
  @override
  Vendor rebuild(void Function(VendorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorBuilder toBuilder() => VendorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vendor && name == other.name && logo == other.logo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Vendor')
          ..add('name', name)
          ..add('logo', logo))
        .toString();
  }
}

class VendorBuilder implements Builder<Vendor, VendorBuilder> {
  _$Vendor? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  VendorBuilder() {
    Vendor._defaults(this);
  }

  VendorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _logo = $v.logo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vendor other) {
    _$v = other as _$Vendor;
  }

  @override
  void update(void Function(VendorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Vendor build() => _build();

  _$Vendor _build() {
    final _$result = _$v ?? _$Vendor._(name: name, logo: logo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

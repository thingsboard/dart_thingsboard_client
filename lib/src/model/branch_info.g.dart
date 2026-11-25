// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BranchInfo extends BranchInfo {
  @override
  final String? name;
  @override
  final bool? default_;

  factory _$BranchInfo([void Function(BranchInfoBuilder)? updates]) =>
      (BranchInfoBuilder()..update(updates))._build();

  _$BranchInfo._({this.name, this.default_}) : super._();
  @override
  BranchInfo rebuild(void Function(BranchInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchInfoBuilder toBuilder() => BranchInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchInfo &&
        name == other.name &&
        default_ == other.default_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BranchInfo')
          ..add('name', name)
          ..add('default_', default_))
        .toString();
  }
}

class BranchInfoBuilder implements Builder<BranchInfo, BranchInfoBuilder> {
  _$BranchInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _default_;
  bool? get default_ => _$this._default_;
  set default_(bool? default_) => _$this._default_ = default_;

  BranchInfoBuilder() {
    BranchInfo._defaults(this);
  }

  BranchInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _default_ = $v.default_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchInfo other) {
    _$v = other as _$BranchInfo;
  }

  @override
  void update(void Function(BranchInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BranchInfo build() => _build();

  _$BranchInfo _build() {
    final _$result = _$v ?? _$BranchInfo._(name: name, default_: default_);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

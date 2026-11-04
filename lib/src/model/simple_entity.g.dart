// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleEntity extends SimpleEntity {
  @override
  final bool? used;
  @override
  final int? totalCount;

  factory _$SimpleEntity([void Function(SimpleEntityBuilder)? updates]) =>
      (SimpleEntityBuilder()..update(updates))._build();

  _$SimpleEntity._({this.used, this.totalCount}) : super._();
  @override
  SimpleEntity rebuild(void Function(SimpleEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleEntityBuilder toBuilder() => SimpleEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleEntity &&
        used == other.used &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SimpleEntity')
          ..add('used', used)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class SimpleEntityBuilder
    implements Builder<SimpleEntity, SimpleEntityBuilder> {
  _$SimpleEntity? _$v;

  bool? _used;
  bool? get used => _$this._used;
  set used(bool? used) => _$this._used = used;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  SimpleEntityBuilder() {
    SimpleEntity._defaults(this);
  }

  SimpleEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _used = $v.used;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleEntity other) {
    _$v = other as _$SimpleEntity;
  }

  @override
  void update(void Function(SimpleEntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleEntity build() => _build();

  _$SimpleEntity _build() {
    final _$result =
        _$v ?? _$SimpleEntity._(used: used, totalCount: totalCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

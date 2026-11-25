// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converters_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConvertersInfo extends ConvertersInfo {
  @override
  final bool? library_;
  @override
  final bool? existing;
  @override
  final BuiltSet<String>? keys;

  factory _$ConvertersInfo([void Function(ConvertersInfoBuilder)? updates]) =>
      (ConvertersInfoBuilder()..update(updates))._build();

  _$ConvertersInfo._({this.library_, this.existing, this.keys}) : super._();
  @override
  ConvertersInfo rebuild(void Function(ConvertersInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConvertersInfoBuilder toBuilder() => ConvertersInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConvertersInfo &&
        library_ == other.library_ &&
        existing == other.existing &&
        keys == other.keys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, library_.hashCode);
    _$hash = $jc(_$hash, existing.hashCode);
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConvertersInfo')
          ..add('library_', library_)
          ..add('existing', existing)
          ..add('keys', keys))
        .toString();
  }
}

class ConvertersInfoBuilder
    implements Builder<ConvertersInfo, ConvertersInfoBuilder> {
  _$ConvertersInfo? _$v;

  bool? _library_;
  bool? get library_ => _$this._library_;
  set library_(bool? library_) => _$this._library_ = library_;

  bool? _existing;
  bool? get existing => _$this._existing;
  set existing(bool? existing) => _$this._existing = existing;

  SetBuilder<String>? _keys;
  SetBuilder<String> get keys => _$this._keys ??= SetBuilder<String>();
  set keys(SetBuilder<String>? keys) => _$this._keys = keys;

  ConvertersInfoBuilder() {
    ConvertersInfo._defaults(this);
  }

  ConvertersInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _library_ = $v.library_;
      _existing = $v.existing;
      _keys = $v.keys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConvertersInfo other) {
    _$v = other as _$ConvertersInfo;
  }

  @override
  void update(void Function(ConvertersInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConvertersInfo build() => _build();

  _$ConvertersInfo _build() {
    _$ConvertersInfo _$result;
    try {
      _$result =
          _$v ??
          _$ConvertersInfo._(
            library_: library_,
            existing: existing,
            keys: _keys?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        _keys?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ConvertersInfo',
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

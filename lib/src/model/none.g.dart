// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'none.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$None extends None {
  @override
  final String type;

  factory _$None([void Function(NoneBuilder)? updates]) =>
      (NoneBuilder()..update(updates))._build();

  _$None._({required this.type}) : super._();
  @override
  None rebuild(void Function(NoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoneBuilder toBuilder() => NoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is None && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'None')..add('type', type)).toString();
  }
}

class NoneBuilder implements Builder<None, NoneBuilder>, OllamaAuthBuilder {
  _$None? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  NoneBuilder() {
    None._defaults(this);
  }

  NoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant None other) {
    _$v = other as _$None;
  }

  @override
  void update(void Function(NoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  None build() => _build();

  _$None _build() {
    final _$result =
        _$v ??
        _$None._(
          type: BuiltValueNullFieldError.checkNotNull(type, r'None', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

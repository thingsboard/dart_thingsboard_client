// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Insets extends Insets {
  @override
  final int? left;
  @override
  final int? right;
  @override
  final int? top;
  @override
  final int? bottom;

  factory _$Insets([void Function(InsetsBuilder)? updates]) =>
      (InsetsBuilder()..update(updates))._build();

  _$Insets._({this.left, this.right, this.top, this.bottom}) : super._();
  @override
  Insets rebuild(void Function(InsetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsetsBuilder toBuilder() => InsetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Insets &&
        left == other.left &&
        right == other.right &&
        top == other.top &&
        bottom == other.bottom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, left.hashCode);
    _$hash = $jc(_$hash, right.hashCode);
    _$hash = $jc(_$hash, top.hashCode);
    _$hash = $jc(_$hash, bottom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Insets')
          ..add('left', left)
          ..add('right', right)
          ..add('top', top)
          ..add('bottom', bottom))
        .toString();
  }
}

class InsetsBuilder implements Builder<Insets, InsetsBuilder> {
  _$Insets? _$v;

  int? _left;
  int? get left => _$this._left;
  set left(int? left) => _$this._left = left;

  int? _right;
  int? get right => _$this._right;
  set right(int? right) => _$this._right = right;

  int? _top;
  int? get top => _$this._top;
  set top(int? top) => _$this._top = top;

  int? _bottom;
  int? get bottom => _$this._bottom;
  set bottom(int? bottom) => _$this._bottom = bottom;

  InsetsBuilder() {
    Insets._defaults(this);
  }

  InsetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _left = $v.left;
      _right = $v.right;
      _top = $v.top;
      _bottom = $v.bottom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Insets other) {
    _$v = other as _$Insets;
  }

  @override
  void update(void Function(InsetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Insets build() => _build();

  _$Insets _build() {
    final _$result =
        _$v ?? _$Insets._(left: left, right: right, top: top, bottom: bottom);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

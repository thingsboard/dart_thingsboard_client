// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_ts_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComparisonTsValue extends ComparisonTsValue {
  @override
  final TsValue? current;
  @override
  final TsValue? previous;

  factory _$ComparisonTsValue([
    void Function(ComparisonTsValueBuilder)? updates,
  ]) => (ComparisonTsValueBuilder()..update(updates))._build();

  _$ComparisonTsValue._({this.current, this.previous}) : super._();
  @override
  ComparisonTsValue rebuild(void Function(ComparisonTsValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonTsValueBuilder toBuilder() =>
      ComparisonTsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonTsValue &&
        current == other.current &&
        previous == other.previous;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComparisonTsValue')
          ..add('current', current)
          ..add('previous', previous))
        .toString();
  }
}

class ComparisonTsValueBuilder
    implements Builder<ComparisonTsValue, ComparisonTsValueBuilder> {
  _$ComparisonTsValue? _$v;

  TsValueBuilder? _current;
  TsValueBuilder get current => _$this._current ??= TsValueBuilder();
  set current(TsValueBuilder? current) => _$this._current = current;

  TsValueBuilder? _previous;
  TsValueBuilder get previous => _$this._previous ??= TsValueBuilder();
  set previous(TsValueBuilder? previous) => _$this._previous = previous;

  ComparisonTsValueBuilder() {
    ComparisonTsValue._defaults(this);
  }

  ComparisonTsValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current?.toBuilder();
      _previous = $v.previous?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComparisonTsValue other) {
    _$v = other as _$ComparisonTsValue;
  }

  @override
  void update(void Function(ComparisonTsValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonTsValue build() => _build();

  _$ComparisonTsValue _build() {
    _$ComparisonTsValue _$result;
    try {
      _$result =
          _$v ??
          _$ComparisonTsValue._(
            current: _current?.build(),
            previous: _previous?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'current';
        _current?.build();
        _$failedField = 'previous';
        _previous?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ComparisonTsValue',
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

// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_task_failure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DummyTaskFailure extends DummyTaskFailure {
  @override
  final String? error;
  @override
  final int? number;
  @override
  final bool? failAlways;

  factory _$DummyTaskFailure([
    void Function(DummyTaskFailureBuilder)? updates,
  ]) => (DummyTaskFailureBuilder()..update(updates))._build();

  _$DummyTaskFailure._({this.error, this.number, this.failAlways}) : super._();
  @override
  DummyTaskFailure rebuild(void Function(DummyTaskFailureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DummyTaskFailureBuilder toBuilder() =>
      DummyTaskFailureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DummyTaskFailure &&
        error == other.error &&
        number == other.number &&
        failAlways == other.failAlways;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, failAlways.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DummyTaskFailure')
          ..add('error', error)
          ..add('number', number)
          ..add('failAlways', failAlways))
        .toString();
  }
}

class DummyTaskFailureBuilder
    implements Builder<DummyTaskFailure, DummyTaskFailureBuilder> {
  _$DummyTaskFailure? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  bool? _failAlways;
  bool? get failAlways => _$this._failAlways;
  set failAlways(bool? failAlways) => _$this._failAlways = failAlways;

  DummyTaskFailureBuilder() {
    DummyTaskFailure._defaults(this);
  }

  DummyTaskFailureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _number = $v.number;
      _failAlways = $v.failAlways;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DummyTaskFailure other) {
    _$v = other as _$DummyTaskFailure;
  }

  @override
  void update(void Function(DummyTaskFailureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DummyTaskFailure build() => _build();

  _$DummyTaskFailure _build() {
    final _$result =
        _$v ??
        _$DummyTaskFailure._(
          error: error,
          number: number,
          failAlways: failAlways,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

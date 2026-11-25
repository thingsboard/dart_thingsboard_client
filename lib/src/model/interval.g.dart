// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Interval extends Interval {
  @override
  final int? interval;
  @override
  final IntervalType? intervalType;

  factory _$Interval([void Function(IntervalBuilder)? updates]) =>
      (IntervalBuilder()..update(updates))._build();

  _$Interval._({this.interval, this.intervalType}) : super._();
  @override
  Interval rebuild(void Function(IntervalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntervalBuilder toBuilder() => IntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Interval &&
        interval == other.interval &&
        intervalType == other.intervalType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, intervalType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Interval')
          ..add('interval', interval)
          ..add('intervalType', intervalType))
        .toString();
  }
}

class IntervalBuilder implements Builder<Interval, IntervalBuilder> {
  _$Interval? _$v;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  IntervalType? _intervalType;
  IntervalType? get intervalType => _$this._intervalType;
  set intervalType(IntervalType? intervalType) =>
      _$this._intervalType = intervalType;

  IntervalBuilder() {
    Interval._defaults(this);
  }

  IntervalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interval = $v.interval;
      _intervalType = $v.intervalType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Interval other) {
    _$v = other as _$Interval;
  }

  @override
  void update(void Function(IntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Interval build() => _build();

  _$Interval _build() {
    final _$result =
        _$v ?? _$Interval._(interval: interval, intervalType: intervalType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

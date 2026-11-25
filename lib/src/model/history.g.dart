// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$History extends History {
  @override
  final int? historyType;
  @override
  final Interval? interval;
  @override
  final int? timewindowMs;
  @override
  final FixedTimeWindow? fixedTimewindow;
  @override
  final QuickTimeInterval? quickInterval;

  factory _$History([void Function(HistoryBuilder)? updates]) =>
      (HistoryBuilder()..update(updates))._build();

  _$History._({
    this.historyType,
    this.interval,
    this.timewindowMs,
    this.fixedTimewindow,
    this.quickInterval,
  }) : super._();
  @override
  History rebuild(void Function(HistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryBuilder toBuilder() => HistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is History &&
        historyType == other.historyType &&
        interval == other.interval &&
        timewindowMs == other.timewindowMs &&
        fixedTimewindow == other.fixedTimewindow &&
        quickInterval == other.quickInterval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, historyType.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, timewindowMs.hashCode);
    _$hash = $jc(_$hash, fixedTimewindow.hashCode);
    _$hash = $jc(_$hash, quickInterval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'History')
          ..add('historyType', historyType)
          ..add('interval', interval)
          ..add('timewindowMs', timewindowMs)
          ..add('fixedTimewindow', fixedTimewindow)
          ..add('quickInterval', quickInterval))
        .toString();
  }
}

class HistoryBuilder implements Builder<History, HistoryBuilder> {
  _$History? _$v;

  int? _historyType;
  int? get historyType => _$this._historyType;
  set historyType(int? historyType) => _$this._historyType = historyType;

  IntervalBuilder? _interval;
  IntervalBuilder get interval => _$this._interval ??= IntervalBuilder();
  set interval(IntervalBuilder? interval) => _$this._interval = interval;

  int? _timewindowMs;
  int? get timewindowMs => _$this._timewindowMs;
  set timewindowMs(int? timewindowMs) => _$this._timewindowMs = timewindowMs;

  FixedTimeWindowBuilder? _fixedTimewindow;
  FixedTimeWindowBuilder get fixedTimewindow =>
      _$this._fixedTimewindow ??= FixedTimeWindowBuilder();
  set fixedTimewindow(FixedTimeWindowBuilder? fixedTimewindow) =>
      _$this._fixedTimewindow = fixedTimewindow;

  QuickTimeInterval? _quickInterval;
  QuickTimeInterval? get quickInterval => _$this._quickInterval;
  set quickInterval(QuickTimeInterval? quickInterval) =>
      _$this._quickInterval = quickInterval;

  HistoryBuilder() {
    History._defaults(this);
  }

  HistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _historyType = $v.historyType;
      _interval = $v.interval?.toBuilder();
      _timewindowMs = $v.timewindowMs;
      _fixedTimewindow = $v.fixedTimewindow?.toBuilder();
      _quickInterval = $v.quickInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(History other) {
    _$v = other as _$History;
  }

  @override
  void update(void Function(HistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  History build() => _build();

  _$History _build() {
    _$History _$result;
    try {
      _$result =
          _$v ??
          _$History._(
            historyType: historyType,
            interval: _interval?.build(),
            timewindowMs: timewindowMs,
            fixedTimewindow: _fixedTimewindow?.build(),
            quickInterval: quickInterval,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();

        _$failedField = 'fixedTimewindow';
        _fixedTimewindow?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'History',
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

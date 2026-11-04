// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DayInterval extends DayInterval {
  @override
  final String tz;
  @override
  final int? offsetSec;
  @override
  final String type;

  factory _$DayInterval([void Function(DayIntervalBuilder)? updates]) =>
      (DayIntervalBuilder()..update(updates))._build();

  _$DayInterval._({required this.tz, this.offsetSec, required this.type})
    : super._();
  @override
  DayInterval rebuild(void Function(DayIntervalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayIntervalBuilder toBuilder() => DayIntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DayInterval &&
        tz == other.tz &&
        offsetSec == other.offsetSec &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tz.hashCode);
    _$hash = $jc(_$hash, offsetSec.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DayInterval')
          ..add('tz', tz)
          ..add('offsetSec', offsetSec)
          ..add('type', type))
        .toString();
  }
}

class DayIntervalBuilder
    implements Builder<DayInterval, DayIntervalBuilder>, AggIntervalBuilder {
  _$DayInterval? _$v;

  String? _tz;
  String? get tz => _$this._tz;
  set tz(covariant String? tz) => _$this._tz = tz;

  int? _offsetSec;
  int? get offsetSec => _$this._offsetSec;
  set offsetSec(covariant int? offsetSec) => _$this._offsetSec = offsetSec;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DayIntervalBuilder() {
    DayInterval._defaults(this);
  }

  DayIntervalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tz = $v.tz;
      _offsetSec = $v.offsetSec;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DayInterval other) {
    _$v = other as _$DayInterval;
  }

  @override
  void update(void Function(DayIntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DayInterval build() => _build();

  _$DayInterval _build() {
    final _$result =
        _$v ??
        _$DayInterval._(
          tz: BuiltValueNullFieldError.checkNotNull(tz, r'DayInterval', 'tz'),
          offsetSec: offsetSec,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DayInterval',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

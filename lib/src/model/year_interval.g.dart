// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$YearInterval extends YearInterval {
  @override
  final String tz;
  @override
  final int? offsetSec;
  @override
  final String type;

  factory _$YearInterval([void Function(YearIntervalBuilder)? updates]) =>
      (YearIntervalBuilder()..update(updates))._build();

  _$YearInterval._({required this.tz, this.offsetSec, required this.type})
    : super._();
  @override
  YearInterval rebuild(void Function(YearIntervalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YearIntervalBuilder toBuilder() => YearIntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YearInterval &&
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
    return (newBuiltValueToStringHelper(r'YearInterval')
          ..add('tz', tz)
          ..add('offsetSec', offsetSec)
          ..add('type', type))
        .toString();
  }
}

class YearIntervalBuilder
    implements Builder<YearInterval, YearIntervalBuilder>, AggIntervalBuilder {
  _$YearInterval? _$v;

  String? _tz;
  String? get tz => _$this._tz;
  set tz(covariant String? tz) => _$this._tz = tz;

  int? _offsetSec;
  int? get offsetSec => _$this._offsetSec;
  set offsetSec(covariant int? offsetSec) => _$this._offsetSec = offsetSec;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  YearIntervalBuilder() {
    YearInterval._defaults(this);
  }

  YearIntervalBuilder get _$this {
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
  void replace(covariant YearInterval other) {
    _$v = other as _$YearInterval;
  }

  @override
  void update(void Function(YearIntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YearInterval build() => _build();

  _$YearInterval _build() {
    final _$result =
        _$v ??
        _$YearInterval._(
          tz: BuiltValueNullFieldError.checkNotNull(tz, r'YearInterval', 'tz'),
          offsetSec: offsetSec,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'YearInterval',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
